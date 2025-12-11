#pragma once

#include <string>
#include <map>
#include <memory>
#include <vector>
#include <sstream>
#include <functional>
#include <any>
#include "antlr4-runtime.h"
#include "SysYParser.h"
#include "SysYParserBaseVisitor.h"
#include "IRBuilder.h"
#include "SymbolTable.h"
#include "Type.h"

// IR 值包装
struct IRValue {
    std::string name;  // 变量名或临时变量
    std::shared_ptr<Type> type;
    bool isConst = false;
    int constValue = 0;
    
    IRValue() = default;
    IRValue(const std::string& n, std::shared_ptr<Type> t)
        : name(n), type(t) {}
};

class CodeGenVisitor : public SysYParserBaseVisitor {
private:
    IRBuilder irBuilder;
    SymbolTable symTable;
    std::shared_ptr<Function> currentFunc;
    std::shared_ptr<BasicBlock> currentBB;
    int tmpVarCounter = 0;
    int blockCounter = 0;
    std::map<std::string, int> localNameCount;  // unique local name suffixes
    std::map<std::string, std::shared_ptr<Type>> funcReturnTypes;  // function name -> return type (nullptr for void)
    
    // 循环上下文（用于 break/continue）
    struct LoopContext {
        std::string exitLabel;    // break 跳转到这里
        std::string continueLabel; // continue 跳转到这里
    };
    std::vector<LoopContext> loopStack;
    
    // 临时变量生成（与用户标识符分离，避免命名冲突）
    std::string genTmpVar() {
        return "__tmp" + std::to_string(tmpVarCounter++);
    }
    
    std::string genBlockName() {
        return "bb" + std::to_string(blockCounter++);
    }

    // 获取当前函数的入口块
    std::shared_ptr<BasicBlock> getEntryBlock() {
        if (!currentFunc || currentFunc->blocks.empty()) return nullptr;
        return currentFunc->blocks.front();
    }

    // 将 alloca 固定到入口块，避免循环体中重复动态分配导致栈膨胀
    void addAllocaToEntry(const std::string& instr) {
        auto entry = getEntryBlock();
        if (!entry) return;
        if (entry->hasTerminator && !entry->instructions.empty()) {
            entry->instructions.insert(entry->instructions.end() - 1, instr);
        } else {
            entry->instructions.push_back(instr);
        }
    }

    // Generate a unique SSA name for locals in the current function
    std::string allocateLocalName(const std::string& base) {
        std::string safeBase = base;
        if (safeBase.size() > 60) {
            std::hash<std::string> hasher;
            safeBase = safeBase.substr(0, 30) + "_" + std::to_string(hasher(base)).substr(0, 8);
        }
        int& cnt = localNameCount[safeBase];
        std::string name = safeBase;
        if (cnt > 0) {
            name += "." + std::to_string(cnt);
        }
        ++cnt;
        return name;
    }
    
    // 确保值是 i32
    IRValue ensureInt32(const IRValue& val) {
        if (auto intType = std::dynamic_pointer_cast<IntegerType>(val.type)) {
            if (intType->width == 32) {
                return val;
            } else if (intType->width == 1) {
                // 将 i1 转换为 i32
                std::string tmp = genTmpVar();
                currentBB->addInstruction("%"+tmp+" = zext i1 %"+val.name+" to i32");
                return IRValue(tmp, i32Type());
            }
        }
        return val;
    }
    
    // 安全的 any_cast 包装
    IRValue getIRValue(const std::any& val) {
        try {
            return std::any_cast<IRValue>(val);
        } catch (...) {
            return IRValue("0", i32Type());
        }
    }
    
public:
    CodeGenVisitor() {
        // 添加标准库函数声明
        irBuilder.addGlobalDeclaration("declare i32 @getint()");
        irBuilder.addGlobalDeclaration("declare i32 @getch()");
        irBuilder.addGlobalDeclaration("declare i32 @getarray(i32*)");
        irBuilder.addGlobalDeclaration("declare void @putint(i32)");
        irBuilder.addGlobalDeclaration("declare void @putch(i32)");
        irBuilder.addGlobalDeclaration("declare void @putarray(i32, i32*)");

        // 记录内置函数返回类型
        funcReturnTypes["getint"] = i32Type();
        funcReturnTypes["getch"] = i32Type();
        funcReturnTypes["getarray"] = i32Type();
        funcReturnTypes["putint"] = nullptr;
        funcReturnTypes["putch"] = nullptr;
        funcReturnTypes["putarray"] = nullptr;
    }
    
    std::string getIR() {
        return irBuilder.toString();
    }
    
    // 访问编译单元
    virtual std::any visitCompUnit(SysYParser::CompUnitContext *ctx) override {
        // 预先收集所有函数的返回类型，供调用时查询
        for (auto funcDef : ctx->funcDef()) {
            std::string name = funcDef->IDENT()->getText();
            std::shared_ptr<Type> retType = funcDef->funcType()->INT() ? i32Type() : nullptr;
            funcReturnTypes[name] = retType;
        }

        // 先访问所有声明（可能有全局变量）
        for (auto decl : ctx->decl()) {
            visit(decl);
        }
        
        // 再访问所有函数定义
        for (auto funcDef : ctx->funcDef()) {
            visit(funcDef);
        }
        
        return nullptr;
    }
    
    // 访问变量声明
    virtual std::any visitVarDecl(SysYParser::VarDeclContext *ctx) override {
        bool isGlobal = (currentFunc == nullptr);
        
        for (auto varDef : ctx->varDef()) {
            std::string varName = varDef->IDENT()->getText();
            std::vector<int> dims;
            
            // 获取数组维度
            for (size_t i = 0; i < varDef->constExp().size(); ++i) {
                auto constExp = varDef->constExp(i);
                if (constExp) {
                    int dimSize = evalConstExp(constExp);
                    dims.push_back(dimSize);
                }
            }
            
            std::shared_ptr<Type> varType = i32Type();
            if (!dims.empty()) {
                varType = std::make_shared<ArrayType>(i32Type(), dims);
            }
            
            if (isGlobal) {
                // 全局变量
                std::string llvmName = "@" + varName;
                if (dims.empty()) {
                    // 标量
                    int initVal = 0;
                    if (varDef->initVal()) {
                        initVal = evalConstInitVal(varDef->initVal());
                    }
                    irBuilder.addGlobalDeclaration("@" + varName + " = global i32 " + std::to_string(initVal) + ", align 4");
                } else {
                    // 数组：尝试生成初值列表，否则用 zeroinitializer
                    std::string arrayInit;
                    if (varDef->initVal()) {
                        arrayInit = generateArrayInit(varDef->initVal(), dims);
                    } else {
                        arrayInit = getTypeLLVMString(varType) + " zeroinitializer";
                    }
                    irBuilder.addGlobalDeclaration("@" + varName + " = global " + arrayInit + ", align 4");
                }
                symTable.addSymbol(varName, varType, llvmName);

            } else {
                // 局部变量
                std::string llvmName = allocateLocalName(varName);
                std::string allocaInstr = "%" + llvmName + " = alloca ";
                if (dims.empty()) {
                    allocaInstr += "i32, align 4";
                } else {
                    allocaInstr += varType->toString() + ", align 4";
                }
                addAllocaToEntry(allocaInstr);
                symTable.addSymbol(varName, varType, llvmName);
                
                // 处理初始化
                if (varDef->initVal()) {
                    if (dims.empty()) {
                        // 标量初始化
                        auto initValCtx = varDef->initVal();
                        if (initValCtx->exp()) {
                            IRValue initVal = getIRValue(visit(initValCtx->exp()));
                            initVal = ensureInt32(initVal);
                            if (initVal.isConst) {
                                currentBB->addInstruction("store i32 " + std::to_string(initVal.constValue) + ", i32* %" + llvmName + ", align 4");
                            } else {
                                currentBB->addInstruction("store i32 %" + initVal.name + ", i32* %" + llvmName + ", align 4");
                            }
                        }
                    } else {
                        // 数组初始化
                        initializeArray(llvmName, varDef->initVal(), varType, dims);
                    }
                } else if (!dims.empty()) {
                    // 数组没有初始化器，需要清零
                    std::string typeStr = varType->toString();
                    currentBB->addInstruction("store " + typeStr + " zeroinitializer, " + typeStr + "* %" + llvmName + ", align 4");
                }
            }
        }
        
        return nullptr;
    }
    
    // 辅助函数：初始化数组（支持正确的 C 语言嵌套初始化语义）
    void initializeArray(const std::string& arrayName, SysYParser::InitValContext* initVal, 
                        std::shared_ptr<Type> arrayType, const std::vector<int>& dims) {
        // 计算数组总大小
        int totalSize = 1;
        for (int dim : dims) {
            totalSize *= dim;
        }
        
        // 先清零整个数组
        std::string typeStr = arrayType->toString();
        currentBB->addInstruction("store " + typeStr + " zeroinitializer, " + typeStr + "* %" + arrayName + ", align 4");
        
        // 使用正确的 C 语言初始化语义填充数组
        int currentIndex = 0;
        fillArrayWithInit(arrayName, initVal, arrayType, dims, currentIndex, 0);
    }
    
    // 递归填充数组元素，正确处理嵌套初始化列表
    void fillArrayWithInit(const std::string& arrayName, SysYParser::InitValContext* initVal,
                          std::shared_ptr<Type> arrayType, const std::vector<int>& dims,
                          int& currentIndex, int depth) {
        if (!initVal) return;
        
        // 如果是单个表达式（叶子节点）
        if (initVal->exp()) {
            // 存储单个值到当前索引位置
            IRValue val = getIRValue(visit(initVal->exp()));
            val = ensureInt32(val);
            
            // 计算多维索引
            std::vector<int> indices = calculateIndices(currentIndex, dims);
            
            // 生成 GEP 指令获取元素地址
            std::string addr = "%" + arrayName;
            std::shared_ptr<Type> currentType = arrayType;
            
            for (size_t j = 0; j < indices.size(); ++j) {
                std::string tmp = genTmpVar();
                std::string typeStr = getTypeLLVMString(currentType);
                currentBB->addInstruction("%" + tmp + " = getelementptr inbounds " + typeStr + ", " + 
                                        typeStr + "* " + addr + ", i64 0, i64 " + std::to_string(indices[j]));
                addr = "%" + tmp;
                currentType = getArrayElementType(currentType);
            }
            
            // 存储值
            if (val.isConst) {
                currentBB->addInstruction("store i32 " + std::to_string(val.constValue) + ", i32* " + addr + ", align 4");
            } else {
                currentBB->addInstruction("store i32 %" + val.name + ", i32* " + addr + ", align 4");
            }
            
            currentIndex++;
            return;
        }
        
        // 嵌套初始化列表 {...}
        auto subInits = initVal->initVal();
        if (subInits.empty()) return;
        
        // 计算当前深度的子数组大小
        // 对于 int[4][2]，depth=0 时子数组大小是 2（一个 int[2]）
        // 对于 int[4][2]，depth=1 时子数组大小是 1（一个 int）
        int subArraySize = 1;
        if (depth < dims.size()) {
            for (size_t i = depth + 1; i < dims.size(); ++i) {
                subArraySize *= dims[i];
            }
        }
        
        // 处理子初始化列表中的每个元素
        for (auto subInit : subInits) {
            // 检查 subInit 是否是嵌套的 {}
            bool isNestedBrace = (subInit->initVal().size() > 0 || 
                                 (subInit->initVal().size() == 0 && !subInit->exp()));
            
            if (isNestedBrace && depth < dims.size()) {
                // 对齐到子数组边界
                if (subArraySize > 0 && currentIndex % subArraySize != 0) {
                    currentIndex = ((currentIndex / subArraySize) + 1) * subArraySize;
                }
                
                // 记录子数组起始位置
                int subArrayStart = currentIndex;
                
                // 递归处理嵌套初始化
                fillArrayWithInit(arrayName, subInit, arrayType, dims, currentIndex, depth + 1);
                
                // 完成子数组后，确保移动到下一个子数组边界
                if (subArraySize > 0 && currentIndex < subArrayStart + subArraySize) {
                    currentIndex = subArrayStart + subArraySize;
                }
            } else {
                // 处理单个表达式
                fillArrayWithInit(arrayName, subInit, arrayType, dims, currentIndex, depth + 1);
            }
        }
    }
    
    // 辅助函数：平坦化初始化器（递归处理嵌套）
    void flattenInitializer(SysYParser::InitValContext* initVal, std::vector<IRValue>& flatValues) {
        if (initVal->exp()) {
            // 单个表达式
            IRValue val = getIRValue(visit(initVal->exp()));
            flatValues.push_back(val);
        } else {
            // 嵌套初始化列表
            for (auto subInit : initVal->initVal()) {
                flattenInitializer(subInit, flatValues);
            }
        }
    }

    // 辅助函数：平坦化常量初始化器
    void flattenConstInitializer(SysYParser::ConstInitValContext* initVal, std::vector<int>& values) {
        if (!initVal) return;
        if (initVal->constExp()) {
            values.push_back(evalConstExp(initVal->constExp()));
        } else {
            for (auto subInit : initVal->constInitVal()) {
                flattenConstInitializer(subInit, values);
            }
        }
    }
    
    // 使用C语言语义填充常量数组值
    void fillConstArrayWithCSemantics(SysYParser::ConstInitValContext* initVal,
                                       const std::vector<int>& dims,
                                       std::vector<int>& values,
                                       int& currentIndex,
                                       int depth) {
        if (!initVal) return;
        
        // 如果是单个表达式（叶子节点）
        if (initVal->constExp()) {
            if (currentIndex < (int)values.size()) {
                values[currentIndex] = evalConstExp(initVal->constExp());
            }
            currentIndex++;
            return;
        }
        
        // 嵌套初始化列表 {...}
        auto subInits = initVal->constInitVal();
        if (subInits.empty()) return;
        
        // 计算当前深度的子数组大小
        int subArraySize = 1;
        if (depth < (int)dims.size()) {
            for (size_t i = depth + 1; i < dims.size(); ++i) {
                subArraySize *= dims[i];
            }
        }
        
        // 处理子初始化列表中的每个元素
        for (auto subInit : subInits) {
            // 检查 subInit 是否是嵌套的 {}
            // constInitVal可以是单个constExp，或者是 LBRACE {...} RBRACE
            // 如果subInit包含子constInitVal，说明它是花括号列表
            bool isNestedBrace = (subInit->constInitVal().size() > 0);
            
            // 对于多维数组，如果我们还没到最内层，需要对齐子数组
            bool needAlignment = (depth < (int)dims.size() - 1);
            
            if (isNestedBrace || needAlignment) {
                // 对齐到子数组边界
                if (subArraySize > 0 && currentIndex % subArraySize != 0 && needAlignment) {
                    currentIndex = ((currentIndex / subArraySize) + 1) * subArraySize;
                }
                
                // 记录子数组起始位置
                int subArrayStart = currentIndex;
                
                // 递归处理嵌套初始化
                fillConstArrayWithCSemantics(subInit, dims, values, currentIndex, depth + 1);
                
                // 完成子数组后，确保移动到下一个子数组边界（仅当需要对齐时）
                if (subArraySize > 0 && currentIndex < subArrayStart + subArraySize && needAlignment) {
                    currentIndex = subArrayStart + subArraySize;
                }
            } else {
                // 处理单个表达式
                fillConstArrayWithCSemantics(subInit, dims, values, currentIndex, depth + 1);
            }
        }
    }
    
    // 辅助函数：从平坦索引计算多维索引
    std::vector<int> calculateIndices(int flatIndex, const std::vector<int>& dims) {
        std::vector<int> indices;
        int remaining = flatIndex;
        
        for (size_t i = 0; i < dims.size(); ++i) {
            int dimProduct = 1;
            for (size_t j = i + 1; j < dims.size(); ++j) {
                dimProduct *= dims[j];
            }
            indices.push_back(remaining / dimProduct);
            remaining %= dimProduct;
        }
        
        return indices;
    }

    void collectInitValues(SysYParser::InitValContext* ctx, std::vector<int>& values) {
        if (!ctx) return;
        if (ctx->exp()) {
            int val = 0;
            try {
                val = evalConstExp(ctx->exp()->addExp());
            } catch (...) {
                val = 0;
            }
            values.push_back(val);
        } else {
            for (auto sub : ctx->initVal()) {
                collectInitValues(sub, values);
            }
        }
    }

    std::string buildConstArrayLiteralRec(const std::vector<int>& dims, const std::vector<int>& values, int& idx) {
        if (dims.empty()) {
            int v = (idx < (int)values.size()) ? values[idx++] : 0;
            return "i32 " + std::to_string(v);
        }
        std::vector<int> subDims(dims.begin() + 1, dims.end());
        std::string subType = subDims.empty() ? std::string("i32") : getTypeLLVMString(std::make_shared<ArrayType>(i32Type(), subDims));
        std::string res = "[" + std::to_string(dims[0]) + " x " + subType + "] [";
        for (int i = 0; i < dims[0]; ++i) {
            if (i > 0) res += ", ";
            res += buildConstArrayLiteralRec(subDims, values, idx);
        }
        res += "]";
        return res;
    }

    std::string buildConstArrayLiteral(const std::vector<int>& dims, const std::vector<int>& values) {
        int idx = 0;
        return buildConstArrayLiteralRec(dims, values, idx);
    }
    
    // 生成数组初始化字符串（支持常数和变量表达式）
    std::string generateArrayInit(SysYParser::InitValContext *initCtx, const std::vector<int>& dims) {
        if (!initCtx) {
            return getTypeLLVMString(std::make_shared<ArrayType>(i32Type(), dims)) + " zeroinitializer";
        }

        // 计算总大小并初始化为0
        int totalSize = 1;
        for (int d : dims) totalSize *= d;
        std::vector<int> values(totalSize, 0);
        
        // 使用C语言语义填充（与const数组相同的逻辑）
        int currentIndex = 0;
        fillArrayWithCSemanticsForInit(initCtx, dims, values, currentIndex, 0);

        return buildConstArrayLiteral(dims, values);
    }
    
    // 为InitValContext填充数组（与fillConstArrayWithCSemantics逻辑相同）
    void fillArrayWithCSemanticsForInit(SysYParser::InitValContext* initVal,
                                       const std::vector<int>& dims,
                                       std::vector<int>& values,
                                       int& currentIndex,
                                       int depth) {
        if (!initVal) return;
        
        // 如果是单个表达式（叶子节点）
        if (initVal->exp()) {
            if (currentIndex < (int)values.size()) {
                try {
                    values[currentIndex] = evalConstExp(initVal->exp()->addExp());
                } catch (...) {
                    values[currentIndex] = 0;
                }
            }
            currentIndex++;
            return;
        }
        
        // 嵌套初始化列表 {...}
        auto subInits = initVal->initVal();
        if (subInits.empty()) return;
        
        // 计算当前深度的子数组大小
        int subArraySize = 1;
        if (depth < (int)dims.size()) {
            for (size_t i = depth + 1; i < dims.size(); ++i) {
                subArraySize *= dims[i];
            }
        }
        
        // 处理子初始化列表中的每个元素
        for (auto subInit : subInits) {
            // 检查 subInit 是否是嵌套的 {}
            bool isNestedBrace = (subInit->initVal().size() > 0);
            
            // 对于多维数组，如果我们还没到最内层，需要对齐子数组
            bool needAlignment = (depth < (int)dims.size() - 1);
            
            if (isNestedBrace || needAlignment) {
                // 对齐到子数组边界
                if (subArraySize > 0 && currentIndex % subArraySize != 0 && needAlignment) {
                    currentIndex = ((currentIndex / subArraySize) + 1) * subArraySize;
                }
                
                // 记录子数组起始位置
                int subArrayStart = currentIndex;
                
                // 递归处理嵌套初始化
                fillArrayWithCSemanticsForInit(subInit, dims, values, currentIndex, depth + 1);
                
                // 完成子数组后，确保移动到下一个子数组边界（仅当需要对齐时）
                if (subArraySize > 0 && currentIndex < subArrayStart + subArraySize && needAlignment) {
                    currentIndex = subArrayStart + subArraySize;
                }
            } else {
                // 处理单个表达式
                fillArrayWithCSemanticsForInit(subInit, dims, values, currentIndex, depth + 1);
            }
        }
    }
    
    // 生成常量数组初始化字符串
    std::string generateConstArrayInit(SysYParser::ConstInitValContext *initCtx, const std::vector<int>& dims) {
        if (!initCtx) {
            return getTypeLLVMString(std::make_shared<ArrayType>(i32Type(), dims)) + " zeroinitializer";
        }

        // 计算总大小并初始化为0
        int totalSize = 1;
        for (int d : dims) totalSize *= d;
        std::vector<int> values(totalSize, 0);
        
        // 使用C语言语义填充
        int currentIndex = 0;
        fillConstArrayWithCSemantics(initCtx, dims, values, currentIndex, 0);

        return buildConstArrayLiteral(dims, values);
    }
    
    // 访问常量声明
    virtual std::any visitConstDecl(SysYParser::ConstDeclContext *ctx) override {
        for (auto constDef : ctx->constDef()) {
            std::string constName = constDef->IDENT()->getText();
            std::vector<int> dims;
            
            for (size_t i = 0; i < constDef->constExp().size(); ++i) {
                auto constExp = constDef->constExp(i);
                if (constExp) {
                    int dimSize = evalConstExp(constExp);
                    dims.push_back(dimSize);
                }
            }
            
            std::shared_ptr<Type> constType = i32Type();
            if (!dims.empty()) {
                constType = std::make_shared<ArrayType>(i32Type(), dims);
            }
            
            bool isGlobal = (currentFunc == nullptr);
            if (isGlobal) {
                // 全局常量
                if (dims.empty() && constDef->constInitVal() && constDef->constInitVal()->constExp()) {
                    int value = evalConstExp(constDef->constInitVal()->constExp());
                    irBuilder.addGlobalDeclaration("@" + constName + " = global i32 " + std::to_string(value) + ", align 4");
                } else if (!dims.empty()) {
                    // 全局常数数组：生成初值列表
                    std::string arrayInit = generateConstArrayInit(constDef->constInitVal(), dims);
                    irBuilder.addGlobalDeclaration("@" + constName + " = global " + arrayInit + ", align 4");
                } else {
                    irBuilder.addGlobalDeclaration("@" + constName + " = global " + constType->toString() + " zeroinitializer, align 4");
                }
                int value = 0;
                if (dims.empty() && constDef->constInitVal() && constDef->constInitVal()->constExp()) {
                    value = evalConstExp(constDef->constInitVal()->constExp());
                }
                symTable.addSymbol(constName, constType, "@" + constName, true, value);
            } else {
                // 局部常量
                if (dims.empty()) {
                    int value = 0;
                    if (constDef->constInitVal() && constDef->constInitVal()->constExp()) {
                        value = evalConstExp(constDef->constInitVal()->constExp());
                    }
                    symTable.addSymbol(constName, constType, "", true, value);
                } else {
                    // 局部常量数组需要实际存储
                    std::string llvmName = allocateLocalName(constName);
                    std::string typeStr = constType->toString();
                    addAllocaToEntry("%" + llvmName + " = alloca " + typeStr + ", align 4");
                    std::string arrayInit = generateConstArrayInit(constDef->constInitVal(), dims);
                    currentBB->addInstruction("store " + arrayInit + ", " + typeStr + "* %" + llvmName + ", align 4");
                    symTable.addSymbol(constName, constType, llvmName, true, 0);
                }
            }
        }
        
        return nullptr;
    }
    
    // 访问函数定义
    virtual std::any visitFuncDef(SysYParser::FuncDefContext *ctx) override {
        std::string funcName = ctx->IDENT()->getText();

        // reset per-function counters
        tmpVarCounter = 0;
        blockCounter = 0;
        localNameCount.clear();
        
        // 返回类型
        std::shared_ptr<Type> returnType = nullptr;
        if (ctx->funcType()->INT()) {
            returnType = i32Type();
        }
        
        // 参数类型
        std::vector<std::shared_ptr<Type>> paramTypes;
        std::vector<std::string> paramNames;
        if (ctx->funcFParams()) {
            for (auto param : ctx->funcFParams()->funcFParam()) {
                paramNames.push_back(param->IDENT()->getText());
                int lbrackCount = param->LBRACK().size();
                if (lbrackCount == 0) {
                    paramTypes.push_back(i32Type());
                } else if (lbrackCount == 1) {
                    paramTypes.push_back(std::make_shared<PointerType>(i32Type()));
                } else {
                    // 多维数组参数，如 int a[][5][3]
                    // 第一维是空的（退化为指针），后续维度保留
                    std::vector<int> dims;
                    for (size_t i = 0; i < param->exp().size(); ++i) {
                        int dimSize = evalConstExp(param->exp(i)->addExp());
                        dims.push_back(dimSize);
                    }
                    if (!dims.empty()) {
                        auto arrayType = std::make_shared<ArrayType>(i32Type(), dims);
                        paramTypes.push_back(std::make_shared<PointerType>(arrayType));
                    } else {
                        // 所有维度都是空的，退化为 i32*
                        paramTypes.push_back(std::make_shared<PointerType>(i32Type()));
                    }
                }
            }
        }
        
        // 创建函数
        currentFunc = irBuilder.createFunction(funcName, returnType);
        symTable.enterScope();
        
        // 创建入口块
        currentBB = currentFunc->createBlock(funcName + "Entry");
        
        // 添加参数并为每个参数创建本地副本
        for (size_t i = 0; i < paramNames.size(); ++i) {
            auto paramName = paramNames[i];
            auto paramType = paramTypes[i];
            currentFunc->params.push_back({paramType, paramName});
            
            // 为参数创建本地存储
            std::string localParamName = allocateLocalName(paramName + "_arg");
            addAllocaToEntry("%" + localParamName + " = alloca " + paramType->toString() + ", align 4");
            currentBB->addInstruction("store " + paramType->toString() + " %" + paramName + ", " + 
                                    paramType->toString() + "* %" + localParamName + ", align 4");
            
            // 在符号表中存储参数的本地副本地址
            symTable.addSymbol(paramName, paramType, localParamName);
            if (auto s = symTable.lookupLocal(paramName)) {
                s->isParam = true;
            }
        }
        
        // 访问函数体
        visit(ctx->block());
        
        // 如果块没有终止符，添加返回语句
        if (!currentBB->hasTerminator) {
            if (returnType == nullptr) {
                currentBB->addInstruction("ret void");
            } else {
                currentBB->addInstruction("ret i32 0");
            }
            currentBB->setTerminator();
        }
        
        symTable.exitScope();
        currentFunc = nullptr;
        return nullptr;
    }
    
    // 访问块
    virtual std::any visitBlock(SysYParser::BlockContext *ctx) override {
        if (!currentFunc) return nullptr;
        
        symTable.enterScope();
        for (auto item : ctx->blockItem()) {
            visit(item);
        }
        symTable.exitScope();
        
        return nullptr;
    }
    
    // 访问语句
    virtual std::any visitStmt(SysYParser::StmtContext *ctx) override {
        if (!currentFunc || !currentBB || currentBB->hasTerminator) return nullptr;
        
        if (ctx->lVal() && ctx->ASSIGN()) {
            // 赋值语句
            IRValue lval = getLValAddress(ctx->lVal());
            IRValue rval = getIRValue(visit(ctx->exp()));
            rval = ensureInt32(rval);
            
            if (rval.isConst) {
                currentBB->addInstruction("store i32 " + std::to_string(rval.constValue) + ", i32* " + lval.name + ", align 4");
            } else {
                currentBB->addInstruction("store i32 %" + rval.name + ", i32* " + lval.name + ", align 4");
            }
        } else if (ctx->block()) {
            // 块语句
            visit(ctx->block());
        } else if (ctx->IF()) {
            // if 语句
            visitIfStmt(ctx);
        } else if (ctx->WHILE()) {
            // while 语句
            visitWhileStmt(ctx);
        } else if (ctx->BREAK()) {
            // break 语句
            if (!loopStack.empty()) {
                currentBB->addInstruction("br label %" + loopStack.back().exitLabel);
                currentBB->setTerminator();
            }
        } else if (ctx->CONTINUE()) {
            // continue 语句
            if (!loopStack.empty()) {
                currentBB->addInstruction("br label %" + loopStack.back().continueLabel);
                currentBB->setTerminator();
            }
        } else if (ctx->RETURN()) {
            // return 语句
            if (ctx->exp()) {
                IRValue retVal = getIRValue(visit(ctx->exp()));
                retVal = ensureInt32(retVal);
                if (retVal.isConst) {
                    currentBB->addInstruction("ret i32 " + std::to_string(retVal.constValue));
                } else {
                    currentBB->addInstruction("ret i32 %" + retVal.name);
                }
            } else {
                currentBB->addInstruction("ret void");
            }
            currentBB->setTerminator();
        } else if (ctx->exp()) {
            // 表达式语句
            visit(ctx->exp());
        }
        
        return nullptr;
    }
    
    // if 语句辅助
    void visitIfStmt(SysYParser::StmtContext *ctx) {
        std::string trueLabel = genBlockName();
        std::string falseLabel = genBlockName();
        std::string mergeLabel = genBlockName();
        
        // 条件在 LPAREN ... RPAREN 之间，是一个 lorExp
        // 需要从 ctx 的子树中提取条件
        auto condCtx = ctx->cond();
        IRValue cond = getIRValue(visit(condCtx));
        
        // 确保条件是 i1（如果是其他类型需要转换）
        if (cond.type) {
            if (auto intType = std::dynamic_pointer_cast<IntegerType>(cond.type)) {
                if (intType->width == 32) {
                    // i32 需要转换为 i1
                    if (!cond.isConst) {
                        std::string tmp = genTmpVar();
                        currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+cond.name+", 0");
                        cond = IRValue(tmp, i1Type());
                    } else {
                        cond.type = i1Type();
                        cond.constValue = (cond.constValue != 0);
                    }
                }
            }
        }
        
        // 条件分支 - 如果结果是 const，可以直接分支
        if (cond.isConst) {
            if (cond.constValue != 0) {
                // 条件为真，只执行 then 分支
                visit(ctx->stmt(0));
                if (!currentBB->hasTerminator) {
                    currentBB->addInstruction("br label %" + mergeLabel);
                    currentBB->setTerminator();
                }
            } else {
                // 条件为假，执行 else 分支（如果存在）
                if (ctx->ELSE()) {
                    visit(ctx->stmt(1));
                }
                if (!currentBB->hasTerminator) {
                    currentBB->addInstruction("br label %" + mergeLabel);
                    currentBB->setTerminator();
                }
            }
        } else {
            // 运行时条件分支
            currentBB->addInstruction("br i1 %" + cond.name + ", label %" + trueLabel + ", label %" + falseLabel);
            currentBB->setTerminator();
            
            // true 分支
            currentBB = currentFunc->createBlock(trueLabel);
            visit(ctx->stmt(0));
            if (!currentBB->hasTerminator) {
                currentBB->addInstruction("br label %" + mergeLabel);
                currentBB->setTerminator();
            }
            
            // false 分支
            currentBB = currentFunc->createBlock(falseLabel);
            if (ctx->ELSE()) {
                visit(ctx->stmt(1));
            }
            if (!currentBB->hasTerminator) {
                currentBB->addInstruction("br label %" + mergeLabel);
                currentBB->setTerminator();
            }
        }
        
        // merge 块
        currentBB = currentFunc->createBlock(mergeLabel);
    }
    
    // while 语句辅助
    void visitWhileStmt(SysYParser::StmtContext *ctx) {
        std::string condLabel = genBlockName();
        std::string bodyLabel = genBlockName();
        std::string exitLabel = genBlockName();
        
        // 跳到条件块
        currentBB->addInstruction("br label %" + condLabel);
        currentBB->setTerminator();
        
        // 条件块
        currentBB = currentFunc->createBlock(condLabel);
        auto condCtx = ctx->cond();
        IRValue cond = getIRValue(visit(condCtx));
        
        // 确保条件是 i1（如果是其他类型需要转换）
        if (cond.type) {
            if (auto intType = std::dynamic_pointer_cast<IntegerType>(cond.type)) {
                if (intType->width == 32) {
                    // i32 需要转换为 i1
                    if (!cond.isConst) {
                        std::string tmp = genTmpVar();
                        currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+cond.name+", 0");
                        cond = IRValue(tmp, i1Type());
                    } else {
                        cond.type = i1Type();
                        cond.constValue = (cond.constValue != 0);
                    }
                }
            }
        }
        
        if (cond.isConst) {
            if (cond.constValue != 0) {
                // 无限循环
                currentBB->addInstruction("br label %" + bodyLabel);
            } else {
                // 条件永远不成立，直接跳到退出
                currentBB->addInstruction("br label %" + exitLabel);
            }
        } else {
            currentBB->addInstruction("br i1 %" + cond.name + ", label %" + bodyLabel + ", label %" + exitLabel);
        }
        currentBB->setTerminator();
        
        // 循环体
        currentBB = currentFunc->createBlock(bodyLabel);
        
        // 推入循环上下文（用于 break/continue）
        loopStack.push_back({exitLabel, condLabel});
        
        visit(ctx->stmt(0));
        
        // 弹出循环上下文
        loopStack.pop_back();
        
        if (!currentBB->hasTerminator) {
            currentBB->addInstruction("br label %" + condLabel);
            currentBB->setTerminator();
        }
        
        // 退出块
        currentBB = currentFunc->createBlock(exitLabel);
    }
    
    // 访问表达式
    virtual std::any visitExp(SysYParser::ExpContext *ctx) override {
        return visit(ctx->addExp());
    }
    
    // 访问条件
    virtual std::any visitCond(SysYParser::CondContext *ctx) override {
        return visit(ctx->lorExp());
    }
    
    // 获取左值地址
    IRValue getLValAddress(SysYParser::LValContext *ctx) {
        std::string name = ctx->IDENT()->getText();
        Symbol *sym = symTable.lookup(name);
        if (!sym) {
            // 未定义的变量，假设是全局
            return IRValue("@" + name, i32Type());
        }
        
        // 使用符号表中存储的 llvmName
        std::string addr = sym->llvmName;
        if (addr[0] != '@' && addr[0] != '%') {
            // 本地变量名称，需要加 % 前缀
            addr = "%" + addr;
        }
        
        // 对指针形参，先加载出真实的指针值
        std::shared_ptr<Type> currentElementType = sym->type;
        bool isLoadedPointer = false;  // 标记是否已经加载了指针参数
        if (auto ptrType = std::dynamic_pointer_cast<PointerType>(currentElementType)) {
            std::string tmpLoad = genTmpVar();
            std::string ptrTypeStr = getTypeLLVMString(ptrType);
            currentBB->addInstruction("%" + tmpLoad + " = load " + ptrTypeStr + ", " + ptrTypeStr + "* " + addr + ", align 4");
            addr = "%" + tmpLoad;
            currentElementType = ptrType->pointee;
            isLoadedPointer = true;  // 标记已加载指针
        }
        
        // 处理数组索引 [exp]
        auto indexes = ctx->exp();
        if (indexes.empty()) {
            // 没有索引，直接返回变量地址（指向当前元素类型）
            return IRValue(addr, std::make_shared<PointerType>(currentElementType));
        }
        
        std::string currentAddr = addr;
        
        for (size_t i = 0; i < indexes.size(); ++i) {
            IRValue index = getIRValue(visit(indexes[i]));
            index = ensureInt32(index);
            
            std::string indexStr;
            if (index.isConst) {
                indexStr = std::to_string(index.constValue);
            } else {
                // GEP 需要 i64 索引，需要 sext
                std::string tmpIdx = genTmpVar();
                currentBB->addInstruction("%"+tmpIdx+" = sext i32 %"+index.name+" to i64");
                indexStr = "%" + tmpIdx;
            }
            
            std::string tmp = genTmpVar();
            
            if (auto arrType = std::dynamic_pointer_cast<ArrayType>(currentElementType)) {
                // 当前是数组
                std::string currentTypeStr = getTypeLLVMString(arrType);
                
                if (isLoadedPointer && i == 0) {
                    // 对于已加载的指针参数，第一次索引不需要 i64 0
                    // GEP 格式：getelementptr <arrayType>, <arrayType>* <ptr>, i64 <index>
                    // 结果类型仍然是 <arrayType>*，元素类型不变
                    currentBB->addInstruction("%"+tmp+" = getelementptr inbounds "+currentTypeStr+", "+currentTypeStr+"* "+currentAddr+", i64 "+indexStr);
                    isLoadedPointer = false;  // 后续维度恢复正常
                    // 元素类型不变，因为只是移动指针位置
                } else {
                    // 本地数组，GEP 格式：getelementptr <arrayType>, <arrayType>* <ptr>, i64 0, i64 <index>
                    currentBB->addInstruction("%"+tmp+" = getelementptr inbounds "+currentTypeStr+", "+currentTypeStr+"* "+currentAddr+", i64 0, i64 "+indexStr);
                    currentElementType = getArrayElementType(currentElementType);
                }
            } else if (auto ptrType = std::dynamic_pointer_cast<PointerType>(currentElementType)) {
                // 当前是指针，GEP 格式：getelementptr <pointeeType>, <pointeeType>* <ptr>, i64 <index>
                // 只有一个索引，不加 i64 0
                std::string elemTypeStr = getTypeLLVMString(ptrType->pointee);
                currentBB->addInstruction("%"+tmp+" = getelementptr inbounds "+elemTypeStr+", "+elemTypeStr+"* "+currentAddr+", i64 "+indexStr);
                currentElementType = ptrType->pointee;
            } else {
                // 其他类型（不应该发生），当作指针处理
                std::string elemTypeStr = getTypeLLVMString(currentElementType);
                currentBB->addInstruction("%"+tmp+" = getelementptr inbounds "+elemTypeStr+", "+elemTypeStr+"* "+currentAddr+", i64 "+indexStr);
            }
            currentAddr = "%" + tmp;
        }
        
        return IRValue(currentAddr, std::make_shared<PointerType>(currentElementType));
    }
    
    // 从数组类型中提取元素类型
    std::shared_ptr<Type> getArrayElementType(std::shared_ptr<Type> type) {
        if (auto arrType = std::dynamic_pointer_cast<ArrayType>(type)) {
            // 如果多维，返回去掉第一维的类型
            if (arrType->dimensions.size() > 1) {
                std::vector<int> newDims(arrType->dimensions.begin() + 1, arrType->dimensions.end());
                return std::make_shared<ArrayType>(arrType->elementType, newDims);
            } else {
                // 只有一维，返回元素类型
                return arrType->elementType;
            }
        } else if (auto ptrType = std::dynamic_pointer_cast<PointerType>(type)) {
            return ptrType->pointee;
        }
        return i32Type();
    }
    
    // 获取数组/类型的 LLVM 字符串表示（完整的递归构建）
    std::string getTypeLLVMString(std::shared_ptr<Type> type) {
        if (auto intType = std::dynamic_pointer_cast<IntegerType>(type)) {
            if (intType->width == 1) return "i1";
            return "i32";
        } else if (auto arrType = std::dynamic_pointer_cast<ArrayType>(type)) {
            // 递归构建完整的数组类型字符串，包括所有维度
            std::string result;
            for (size_t i = 0; i < arrType->dimensions.size(); ++i) {
                result += "[" + std::to_string(arrType->dimensions[i]) + " x ";
            }
            result += getTypeLLVMString(arrType->elementType);
            for (size_t i = 0; i < arrType->dimensions.size(); ++i) {
                result += "]";
            }
            return result;
        } else if (auto ptrType = std::dynamic_pointer_cast<PointerType>(type)) {
            return getTypeLLVMString(ptrType->pointee) + "*";
        }
        return "i32";
    }
    
    // 算术表达式
    virtual std::any visitAddExp(SysYParser::AddExpContext *ctx) override {
        IRValue result = getIRValue(visit(ctx->mulExp(0)));
        
        // 构建运算符序列
        std::vector<std::string> ops;
        for (auto child : ctx->children) {
            auto text = child->getText();
            if (text == "+") ops.push_back("+");
            else if (text == "-") ops.push_back("-");
        }
        
        for (size_t i = 1; i < ctx->mulExp().size(); ++i) {
            IRValue rhs = getIRValue(visit(ctx->mulExp(i)));
            std::string op = (i-1 < ops.size()) ? ops[i-1] : "+";
            
            // 常数折叠
            if (result.isConst && rhs.isConst) {
                if (op == "+") {
                    result.constValue = result.constValue + rhs.constValue;
                } else {
                    result.constValue = result.constValue - rhs.constValue;
                }
                continue;
            }
            
            result = ensureInt32(result);
            rhs = ensureInt32(rhs);
            
            std::string tmp = genTmpVar();
            if (op == "+") {
                if (result.isConst) {
                    currentBB->addInstruction("%"+tmp+" = add i32 "+std::to_string(result.constValue)+", %"+rhs.name);
                } else if (rhs.isConst) {
                    currentBB->addInstruction("%"+tmp+" = add i32 %"+result.name+", "+std::to_string(rhs.constValue));
                } else {
                    currentBB->addInstruction("%"+tmp+" = add i32 %"+result.name+", %"+rhs.name);
                }
            } else {
                if (result.isConst) {
                    currentBB->addInstruction("%"+tmp+" = sub i32 "+std::to_string(result.constValue)+", %"+rhs.name);
                } else if (rhs.isConst) {
                    currentBB->addInstruction("%"+tmp+" = sub i32 %"+result.name+", "+std::to_string(rhs.constValue));
                } else {
                    currentBB->addInstruction("%"+tmp+" = sub i32 %"+result.name+", %"+rhs.name);
                }
            }
            result = IRValue(tmp, i32Type());
        }
        
        return result;
    }
    
    virtual std::any visitMulExp(SysYParser::MulExpContext *ctx) override {
        IRValue result = getIRValue(visit(ctx->unaryExp(0)));
        
        // 构建运算符序列：遍历子节点找出运算符顺序
        std::vector<std::string> ops;
        for (auto child : ctx->children) {
            auto text = child->getText();
            if (text == "*") ops.push_back("*");
            else if (text == "/") ops.push_back("/");
            else if (text == "%") ops.push_back("%");
        }
        
        for (size_t i = 1; i < ctx->unaryExp().size(); ++i) {
            IRValue rhs = getIRValue(visit(ctx->unaryExp(i)));
            std::string op = (i-1 < ops.size()) ? ops[i-1] : "*";
            
            // 常数折叠
            if (result.isConst && rhs.isConst) {
                if (op == "*") {
                    result.constValue = result.constValue * rhs.constValue;
                } else if (op == "/") {
                    result.constValue = result.constValue / rhs.constValue;
                } else if (op == "%") {
                    result.constValue = result.constValue % rhs.constValue;
                }
                // 确保类型正确
                result.type = i32Type();
                continue;
            }
            
            result = ensureInt32(result);
            rhs = ensureInt32(rhs);
            
            std::string tmp = genTmpVar();
            if (op == "*") {
                if (result.isConst) {
                    currentBB->addInstruction("%"+tmp+" = mul i32 "+std::to_string(result.constValue)+", %"+rhs.name);
                } else if (rhs.isConst) {
                    currentBB->addInstruction("%"+tmp+" = mul i32 %"+result.name+", "+std::to_string(rhs.constValue));
                } else {
                    currentBB->addInstruction("%"+tmp+" = mul i32 %"+result.name+", %"+rhs.name);
                }
            } else if (op == "/") {
                if (result.isConst) {
                    currentBB->addInstruction("%"+tmp+" = sdiv i32 "+std::to_string(result.constValue)+", %"+rhs.name);
                } else if (rhs.isConst) {
                    currentBB->addInstruction("%"+tmp+" = sdiv i32 %"+result.name+", "+std::to_string(rhs.constValue));
                } else {
                    currentBB->addInstruction("%"+tmp+" = sdiv i32 %"+result.name+", %"+rhs.name);
                }
            } else if (op == "%") {
                if (result.isConst) {
                    currentBB->addInstruction("%"+tmp+" = srem i32 "+std::to_string(result.constValue)+", %"+rhs.name);
                } else if (rhs.isConst) {
                    currentBB->addInstruction("%"+tmp+" = srem i32 %"+result.name+", "+std::to_string(rhs.constValue));
                } else {
                    currentBB->addInstruction("%"+tmp+" = srem i32 %"+result.name+", %"+rhs.name);
                }
            }
            result = IRValue(tmp, i32Type());
        }
        
        return result;
    }
    
    virtual std::any visitUnaryExp(SysYParser::UnaryExpContext *ctx) override {
        if (ctx->primaryExp()) {
            return visit(ctx->primaryExp());
        } else if (ctx->unaryOp() && ctx->unaryExp()) {
            IRValue val = getIRValue(visit(ctx->unaryExp()));
            
            std::string op = ctx->unaryOp()->getText();
            if (op == "+") {
                return val;
            } else if (op == "-") {
                // 如果是常数，直接返回负值
                if (val.isConst) {
                    IRValue result = val;
                    result.constValue = -val.constValue;
                    return result;
                }
                // 否则生成 sub 指令
                std::string tmp = genTmpVar();
                currentBB->addInstruction("%"+tmp+" = sub i32 0, %"+val.name);
                return IRValue(tmp, i32Type());
            } else if (op == "!") {
                // 如果是常数，直接计算
                if (val.isConst) {
                    IRValue result = IRValue("", i32Type());
                    result.isConst = true;
                    result.constValue = (val.constValue == 0) ? 1 : 0;
                    return result;
                }
                // 否则生成指令
                val = ensureInt32(val);
                std::string tmp = genTmpVar();
                currentBB->addInstruction("%"+tmp+" = icmp eq i32 %"+val.name+", 0");
                std::string tmp2 = genTmpVar();
                currentBB->addInstruction("%"+tmp2+" = zext i1 %"+tmp+" to i32");
                return IRValue(tmp2, i32Type());
            }
        } else if (ctx->IDENT()) {
            // 函数调用
            std::string funcName = ctx->IDENT()->getText();
            std::vector<IRValue> args;
            if (ctx->funcRParams()) {
                for (auto exp : ctx->funcRParams()->exp()) {
                    IRValue arg = getIRValue(visit(exp));
                    args.push_back(arg);
                }
            }
            
            std::string argStr;
            for (size_t i = 0; i < args.size(); ++i) {
                if (i > 0) argStr += ", ";
                
                IRValue arg = args[i];
                
                // 如果参数是指向数组的指针，需要转换为指向元素的指针
                // [N x T]* → T*
                if (auto ptrType = std::dynamic_pointer_cast<PointerType>(arg.type)) {
                    if (auto arrType = std::dynamic_pointer_cast<ArrayType>(ptrType->pointee)) {
                        // 生成 getelementptr 或 bitcast
                        std::string tmp = genTmpVar();
                        std::string arrTypeStr = getTypeLLVMString(arrType);
                        std::string elemTypeStr = getTypeLLVMString(arrType->elementType);
                        
                        std::string operand = arg.name;
                        if (!(operand.size() && (operand[0] == '%' || operand[0] == '@'))) {
                            operand = "%" + operand;
                        }
                        
                        // 使用 getelementptr 转换: [N x T]* → T*
                        currentBB->addInstruction("%" + tmp + " = getelementptr inbounds " + 
                                                arrTypeStr + ", " + arrTypeStr + "* " + operand + ", i64 0, i64 0");
                        
                        // 更新参数为转换后的类型和名称
                        arg.name = tmp;
                        arg.type = std::make_shared<PointerType>(arrType->elementType);
                    }
                }
                
                std::string argTypeStr = getTypeLLVMString(arg.type);
                if (arg.isConst) {
                    argStr += argTypeStr + " " + std::to_string(arg.constValue);
                } else {
                    std::string operand = arg.name;
                    if (!(operand.size() && (operand[0] == '%' || operand[0] == '@'))) {
                        operand = "%" + operand;
                    }
                    argStr += argTypeStr + " " + operand;
                }
            }
            
            // 查询函数返回类型（提前收集），nullptr 表示 void
            std::shared_ptr<Type> retType = i32Type();
            auto it = funcReturnTypes.find(funcName);
            if (it != funcReturnTypes.end()) {
                retType = it->second;
            }

            bool isVoidFunc = (retType == nullptr);
            std::string returnTypeStr = isVoidFunc ? "void" : getTypeLLVMString(retType);
            
            if (isVoidFunc) {
                // void函数调用不需要赋值
                currentBB->addInstruction("call " + returnTypeStr + " @" + funcName + "(" + argStr + ")");
                IRValue ret("", i32Type());
                ret.isConst = true;
                ret.constValue = 0;
                return ret;  // void函数在表达式中当作0处理
            } else {
                std::string tmp = genTmpVar();
                currentBB->addInstruction("%" + tmp + " = call " + returnTypeStr + " @" + funcName + "(" + argStr + ")");
                return IRValue(tmp, retType);
            }
        }
        
        return IRValue("0", i32Type());
    }
    
    virtual std::any visitPrimaryExp(SysYParser::PrimaryExpContext *ctx) override {
        if (ctx->number()) {
            return visit(ctx->number());
        } else if (ctx->lVal()) {
            std::string name = ctx->lVal()->IDENT()->getText();
            Symbol *sym = symTable.lookup(name);
            
            if (!sym) {
                // 未定义的变量
                return IRValue("0", i32Type());
            }
            
            // 如果是常数（且没有索引），直接返回常数值
            if (sym->isConst && ctx->lVal()->exp().empty()) {
                IRValue val = IRValue("", i32Type());
                val.constValue = sym->constValue;
                val.isConst = true;
                return val;
            }
            bool hasIndex = !ctx->lVal()->exp().empty();
            bool needDecay = sym->type && (sym->type->isArray() || sym->type->isPointer()) && !hasIndex;

            // 获取数组/变量的地址（处理索引）
            IRValue addr = getLValAddress(ctx->lVal());

            if (needDecay) {
                // 数组/指针不带下标，需要decay
                if (auto arrType = std::dynamic_pointer_cast<ArrayType>(sym->type)) {
                    // 数组decay为指向第一个元素的指针
                    // int a[10] → i32*
                    // int a[10][20] → [20 x i32]*
                    std::string tmp = genTmpVar();
                    std::string arrTypeStr = getTypeLLVMString(arrType);
                    currentBB->addInstruction("%" + tmp + " = getelementptr inbounds " + arrTypeStr + 
                                            ", " + arrTypeStr + "* " + addr.name + ", i64 0, i64 0");
                    
                    // 计算decay后的元素类型
                    std::shared_ptr<Type> decayedType;
                    if (arrType->dimensions.size() > 1) {
                        // 多维数组，去掉第一维
                        std::vector<int> newDims(arrType->dimensions.begin() + 1, arrType->dimensions.end());
                        decayedType = std::make_shared<PointerType>(
                            std::make_shared<ArrayType>(arrType->elementType, newDims));
                    } else {
                        // 一维数组，decay为元素指针
                        decayedType = std::make_shared<PointerType>(arrType->elementType);
                    }
                    return IRValue(tmp, decayedType);
                } else {
                    // 指针参数，已经是指针了
                    return addr;
                }
            }
            
            // 检查返回的类型：如果是指向数组或指针的指针，也应该返回地址不load
            // 例如 a[17] 返回 [67 x i32]* 类型，应该传递地址而不是load
            if (auto ptrType = std::dynamic_pointer_cast<PointerType>(addr.type)) {
                if (ptrType->pointee->isArray() || ptrType->pointee->isPointer()) {
                    // 指向数组或指针的指针，返回地址
                    return addr;
                }
            }
            
            // 生成加载指令
            std::string tmp = genTmpVar();
            if (addr.name[0] == '@') {
                currentBB->addInstruction("%"+tmp+" = load i32, i32* "+addr.name+", align 4");
            } else if (addr.name[0] == '%') {
                currentBB->addInstruction("%"+tmp+" = load i32, i32* "+addr.name+", align 4");
            } else {
                return IRValue("0", i32Type());
            }
            return IRValue(tmp, i32Type());
        } else if (ctx->exp()) {
            return visit(ctx->exp());
        }
        
        return IRValue("0", i32Type());
    }
    
    // 辅助函数：解析数字（支持十进制、十六进制、八进制）
    int parseNumber(const std::string& text) {
        if (text.size() >= 2 && text[0] == '0') {
            if (text[1] == 'x' || text[1] == 'X') {
                // 十六进制
                return std::stoi(text, nullptr, 16);
            } else if (text[1] >= '0' && text[1] <= '7') {
                // 八进制
                return std::stoi(text, nullptr, 8);
            }
        }
        // 十进制
        return std::stoi(text);
    }
    
    virtual std::any visitNumber(SysYParser::NumberContext *ctx) override {
        int value = parseNumber(ctx->getText());
        IRValue val = IRValue("", i32Type());
        val.isConst = true;
        val.constValue = value;
        return val;
    }
    
    // 比较表达式
    virtual std::any visitRelExp(SysYParser::RelExpContext *ctx) override {
        IRValue result = getIRValue(visit(ctx->addExp(0)));
        
        for (size_t i = 1; i < ctx->addExp().size(); ++i) {
            IRValue rhs = getIRValue(visit(ctx->addExp(i)));
            result = ensureInt32(result);
            rhs = ensureInt32(rhs);

            // 常量折叠，避免生成无效操作数
            if (result.isConst && rhs.isConst) {
                bool cmpRes = false;
                if (ctx->LT(i-1)) cmpRes = result.constValue < rhs.constValue;
                else if (ctx->GT(i-1)) cmpRes = result.constValue > rhs.constValue;
                else if (ctx->LE(i-1)) cmpRes = result.constValue <= rhs.constValue;
                else if (ctx->GE(i-1)) cmpRes = result.constValue >= rhs.constValue;
                result = IRValue("", i1Type());
                result.isConst = true;
                result.constValue = cmpRes ? 1 : 0;
                continue;
            }
            
            std::string tmp = genTmpVar();
            std::string cmp;
            if (ctx->LT(i-1)) cmp = "slt";
            else if (ctx->GT(i-1)) cmp = "sgt";
            else if (ctx->LE(i-1)) cmp = "sle";
            else if (ctx->GE(i-1)) cmp = "sge";
            
            if (result.isConst) {
                currentBB->addInstruction("%"+tmp+" = icmp "+cmp+" i32 "+std::to_string(result.constValue)+", %"+rhs.name);
            } else if (rhs.isConst) {
                currentBB->addInstruction("%"+tmp+" = icmp "+cmp+" i32 %"+result.name+", "+std::to_string(rhs.constValue));
            } else {
                currentBB->addInstruction("%"+tmp+" = icmp "+cmp+" i32 %"+result.name+", %"+rhs.name);
            }
            result = IRValue(tmp, i1Type());
        }
        
        return result;
    }
    
    virtual std::any visitEqExp(SysYParser::EqExpContext *ctx) override {
        IRValue result = getIRValue(visit(ctx->relExp(0)));
        
        for (size_t i = 1; i < ctx->relExp().size(); ++i) {
            IRValue rhs = getIRValue(visit(ctx->relExp(i)));
            
            std::string cmp = ctx->EQ(i-1) ? "eq" : "ne";
            
            // 根据操作数类型生成正确的 icmp 指令
            std::string opType = "i32";
            if (auto intType = std::dynamic_pointer_cast<IntegerType>(result.type)) {
                opType = intType->toString();
            }
            
            // 常量折叠，避免空操作数
            if (result.isConst && rhs.isConst) {
                bool cmpRes = (cmp == "eq") ? (result.constValue == rhs.constValue) : (result.constValue != rhs.constValue);
                result = IRValue("", i1Type());
                result.isConst = true;
                result.constValue = cmpRes ? 1 : 0;
                continue;
            }
            
            std::string tmp = genTmpVar();
            
            if (result.isConst) {
                currentBB->addInstruction("%"+tmp+" = icmp "+cmp+" "+opType+" "+std::to_string(result.constValue)+", %"+rhs.name);
            } else if (rhs.isConst) {
                currentBB->addInstruction("%"+tmp+" = icmp "+cmp+" "+opType+" %"+result.name+", "+std::to_string(rhs.constValue));
            } else {
                currentBB->addInstruction("%"+tmp+" = icmp "+cmp+" "+opType+" %"+result.name+", %"+rhs.name);
            }
            result = IRValue(tmp, i1Type());
        }
        
        return result;
    }
    
    virtual std::any visitLandExp(SysYParser::LandExpContext *ctx) override {
        size_t numOps = ctx->eqExp().size();
        if (numOps == 1) {
            return visit(ctx->eqExp(0));
        }
        
        // 短路求值：a && b && c
        IRValue lhs = getIRValue(visit(ctx->eqExp(0)));
        
        // 将左操作数转换为 i1
        if (auto intType = std::dynamic_pointer_cast<IntegerType>(lhs.type)) {
            if (intType->width == 32) {
                if (!lhs.isConst) {
                    std::string tmp = genTmpVar();
                    currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+lhs.name+", 0");
                    lhs = IRValue(tmp, i1Type());
                } else {
                    lhs.constValue = lhs.constValue ? 1 : 0;
                    lhs.type = i1Type();
                }
            }
        }
        
        for (size_t i = 1; i < numOps; ++i) {
            // 如果左操作数为假，短路返回false（不计算右操作数）
            if (lhs.isConst && !lhs.constValue) {
                // 左操作数是常量0，结果就是0
                lhs = IRValue("0", i1Type());
                lhs.isConst = true;
                lhs.constValue = 0;
            } else {
                // 需要评估右操作数
                std::string rhsLabel = genBlockName();
                std::string mergeLabel = genBlockName();
                std::string zeroLabel = genBlockName();
                
                if (lhs.isConst) {
                    // 左操作数是常量1，无条件计算右操作数
                    IRValue rhs = getIRValue(visit(ctx->eqExp(i)));
                    
                    // 将右操作数转换为 i1
                    if (auto intType = std::dynamic_pointer_cast<IntegerType>(rhs.type)) {
                        if (intType->width == 32) {
                            if (!rhs.isConst) {
                                std::string tmp = genTmpVar();
                                currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+rhs.name+", 0");
                                lhs = IRValue(tmp, i1Type());
                            } else {
                                lhs.constValue = rhs.constValue ? 1 : 0;
                                lhs.type = i1Type();
                            }
                        } else {
                            lhs = rhs;
                        }
                    } else {
                        lhs = rhs;
                    }
                } else {
                    // 左操作数是变量，需要条件分支
                    currentBB->addInstruction("br i1 %"+lhs.name+", label %"+rhsLabel+", label %"+zeroLabel);
                    
                    // zero 块：直接返回 0
                    auto zeroBB = currentFunc->createBlock(zeroLabel);
                    zeroBB->addInstruction("br label %"+mergeLabel);
                    
                    // rhs 块：计算右操作数
                    currentBB = currentFunc->createBlock(rhsLabel);
                    
                    IRValue rhs = getIRValue(visit(ctx->eqExp(i)));
                    
                    // 将右操作数转换为 i1
                    if (auto intType = std::dynamic_pointer_cast<IntegerType>(rhs.type)) {
                        if (intType->width == 32) {
                            if (!rhs.isConst) {
                                std::string tmp = genTmpVar();
                                currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+rhs.name+", 0");
                                rhs = IRValue(tmp, i1Type());
                            } else {
                                rhs.constValue = rhs.constValue ? 1 : 0;
                                rhs.type = i1Type();
                            }
                        }
                    }
                    
                    std::string actualRhsBlock = currentBB->name;
                    currentBB->addInstruction("br label %"+mergeLabel);
                    
                    // merge 块：phi 节点
                    currentBB = currentFunc->createBlock(mergeLabel);
                    
                    std::string resultVar = genTmpVar();
                    std::string phiStr = "%"+resultVar+" = phi i1 ";
                    phiStr += "[ 0, %"+zeroLabel+" ], ";
                    if (rhs.isConst) {
                        phiStr += "[ "+std::to_string(rhs.constValue)+", %"+actualRhsBlock+" ]";
                    } else {
                        phiStr += "[ %"+rhs.name+", %"+actualRhsBlock+" ]";
                    }
                    currentBB->addInstruction(phiStr);
                    
                    lhs = IRValue(resultVar, i1Type());
                }
            }
        }
        
        return lhs;
    }
    
    virtual std::any visitLorExp(SysYParser::LorExpContext *ctx) override {
        size_t numOps = ctx->landExp().size();
        if (numOps == 1) {
            return visit(ctx->landExp(0));
        }
        
        // 短路求值：a || b || c
        IRValue lhs = getIRValue(visit(ctx->landExp(0)));
        
        // 将左操作数转换为 i1
        if (auto intType = std::dynamic_pointer_cast<IntegerType>(lhs.type)) {
            if (intType->width == 32) {
                if (!lhs.isConst) {
                    std::string tmp = genTmpVar();
                    currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+lhs.name+", 0");
                    lhs = IRValue(tmp, i1Type());
                } else {
                    lhs.constValue = lhs.constValue ? 1 : 0;
                    lhs.type = i1Type();
                }
            }
        }
        
        for (size_t i = 1; i < numOps; ++i) {
            // 如果左操作数为真，短路返回true（不计算右操作数）
            if (lhs.isConst && lhs.constValue) {
                // 左操作数是常量1，结果就是1
                lhs = IRValue("1", i1Type());
                lhs.isConst = true;
                lhs.constValue = 1;
            } else {
                // 需要评估右操作数
                std::string rhsLabel = genBlockName();
                std::string mergeLabel = genBlockName();
                std::string oneLabel = genBlockName();
                
                if (lhs.isConst) {
                    // 左操作数是常量0，无条件计算右操作数
                    IRValue rhs = getIRValue(visit(ctx->landExp(i)));
                    
                    // 将右操作数转换为 i1
                    if (auto intType = std::dynamic_pointer_cast<IntegerType>(rhs.type)) {
                        if (intType->width == 32) {
                            if (!rhs.isConst) {
                                std::string tmp = genTmpVar();
                                currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+rhs.name+", 0");
                                lhs = IRValue(tmp, i1Type());
                            } else {
                                lhs.constValue = rhs.constValue ? 1 : 0;
                                lhs.type = i1Type();
                            }
                        } else {
                            lhs = rhs;
                        }
                    } else {
                        lhs = rhs;
                    }
                } else {
                    // 左操作数是变量，需要条件分支
                    currentBB->addInstruction("br i1 %"+lhs.name+", label %"+oneLabel+", label %"+rhsLabel);
                    
                    // one 块：直接返回 1
                    auto oneBB = currentFunc->createBlock(oneLabel);
                    oneBB->addInstruction("br label %"+mergeLabel);
                    
                    // rhs 块：计算右操作数
                    currentBB = currentFunc->createBlock(rhsLabel);
                    
                    IRValue rhs = getIRValue(visit(ctx->landExp(i)));
                    
                    // 将右操作数转换为 i1
                    if (auto intType = std::dynamic_pointer_cast<IntegerType>(rhs.type)) {
                        if (intType->width == 32) {
                            if (!rhs.isConst) {
                                std::string tmp = genTmpVar();
                                currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+rhs.name+", 0");
                                rhs = IRValue(tmp, i1Type());
                            } else {
                                rhs.constValue = rhs.constValue ? 1 : 0;
                                rhs.type = i1Type();
                            }
                        }
                    }
                    
                    std::string actualRhsBlock = currentBB->name;
                    currentBB->addInstruction("br label %"+mergeLabel);
                    
                    // merge 块：phi 节点
                    currentBB = currentFunc->createBlock(mergeLabel);
                    
                    std::string resultVar = genTmpVar();
                    std::string phiStr = "%"+resultVar+" = phi i1 ";
                    phiStr += "[ 1, %"+oneLabel+" ], ";
                    if (rhs.isConst) {
                        phiStr += "[ "+std::to_string(rhs.constValue)+", %"+actualRhsBlock+" ]";
                    } else {
                        phiStr += "[ %"+rhs.name+", %"+actualRhsBlock+" ]";
                    }
                    currentBB->addInstruction(phiStr);
                    
                    lhs = IRValue(resultVar, i1Type());
                }
            }
        }
        
        return lhs;
    }
    
    // 常量计算
    virtual std::any visitInitVal(SysYParser::InitValContext *ctx) override {
        if (ctx->exp()) {
            return visit(ctx->exp());
        }
        return IRValue("0", i32Type());
    }
    
    int evalConstInitVal(SysYParser::ConstInitValContext *ctx) {
        if (!ctx) return 0;
        if (ctx->constExp()) {
            return evalConstExp(ctx->constExp());
        }
        return 0;
    }
    
    int evalConstInitVal(SysYParser::InitValContext *ctx) {
        if (!ctx) return 0;
        if (ctx->exp()) return evalConstExp(ctx->exp()->addExp());
        return 0;
    }
    
    int evalConstExp(SysYParser::ConstExpContext *ctx) {
        return evalAddExp(ctx->addExp());
    }
    
    int evalConstExp(SysYParser::AddExpContext *ctx) {
        return evalAddExp(ctx);
    }
    
    int evalAddExp(SysYParser::AddExpContext *ctx) {
        int val = evalMulExp(ctx->mulExp(0));
        for (size_t i = 1; i < ctx->mulExp().size(); ++i) {
            int rhs = evalMulExp(ctx->mulExp(i));
            if (ctx->ADD(i-1)) val += rhs;
            else val -= rhs;
        }
        return val;
    }
    
    int evalMulExp(SysYParser::MulExpContext *ctx) {
        int val = evalUnaryExp(ctx->unaryExp(0));
        for (size_t i = 1; i < ctx->unaryExp().size(); ++i) {
            int rhs = evalUnaryExp(ctx->unaryExp(i));
            if (ctx->MUL(i-1)) val *= rhs;
            else if (ctx->DIV(i-1)) val /= rhs;
            else val %= rhs;
        }
        return val;
    }
    
    int evalUnaryExp(SysYParser::UnaryExpContext *ctx) {
        if (ctx->primaryExp()) {
            return evalPrimaryExp(ctx->primaryExp());
        } else if (ctx->unaryOp() && ctx->unaryExp()) {
            int val = evalUnaryExp(ctx->unaryExp());
            std::string op = ctx->unaryOp()->getText();
            if (op == "-") return -val;
            if (op == "!") return (val == 0) ? 1 : 0;
            return val;
        }
        return 0;
    }
    
    int evalPrimaryExp(SysYParser::PrimaryExpContext *ctx) {
        if (ctx->number()) {
            return parseNumber(ctx->number()->getText());
        }
        if (ctx->lVal()) {
            std::string varName = ctx->lVal()->IDENT()->getText();
            auto sym = symTable.lookup(varName);
            if (sym && sym->isConst && ctx->lVal()->exp().empty()) {
                return sym->constValue;
            }
        }
        if (ctx->exp()) {
            return evalAddExp(ctx->exp()->addExp());
        }
        return 0;
    }
};
