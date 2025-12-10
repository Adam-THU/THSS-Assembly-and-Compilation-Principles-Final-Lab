#pragma once

#include <string>
#include <sstream>
#include <vector>
#include <map>
#include <set>
#include <memory>
#include "Type.h"

// 基本块（Basic Block）
struct BasicBlock {
    std::string name;
    std::vector<std::string> instructions;
    bool hasTerminator = false;
    
    BasicBlock(const std::string& n) : name(n) {}
    
    void addInstruction(const std::string& instr) {
        instructions.push_back(instr);
    }
    
    void setTerminator() {
        hasTerminator = true;
    }
};

// 函数
struct Function {
    std::string name;
    std::shared_ptr<Type> returnType;
    std::vector<std::pair<std::shared_ptr<Type>, std::string>> params;  // (type, name)
    std::vector<std::shared_ptr<BasicBlock>> blocks;
    std::map<std::string, std::shared_ptr<BasicBlock>> blockMap;
    
    Function(const std::string& n, std::shared_ptr<Type> rt)
        : name(n), returnType(rt) {}
    
    std::shared_ptr<BasicBlock> createBlock(const std::string& blockName) {
        auto block = std::make_shared<BasicBlock>(blockName);
        blocks.push_back(block);
        blockMap[blockName] = block;
        return block;
    }
    
    std::string toString() const {
        std::ostringstream oss;
        
        // 函数签名
        std::string retType = (returnType == nullptr) ? "void" : returnType->toString();
        oss << "define " << retType << " @" << name << "(";
        for (size_t i = 0; i < params.size(); ++i) {
            if (i > 0) oss << ", ";
            oss << params[i].first->toString() << " %" << params[i].second;
        }
        oss << ") {\n";
        
        // 收集所有被引用的块名
        std::set<std::string> referencedBlocks;
        std::set<std::string> emptyBlocks;
        
        for (const auto& block : blocks) {
            bool isEmpty = block->instructions.empty();
            if (isEmpty) {
                emptyBlocks.insert(block->name);
            }
            for (const auto& instr : block->instructions) {
                // 简单的块引用提取（label: 开头）
                if (instr.find("br label %") != std::string::npos) {
                    size_t pos = instr.find("label %") + 7;
                    size_t end = instr.find_first_of(" \n", pos);
                    if (end == std::string::npos) end = instr.length();
                    referencedBlocks.insert(instr.substr(pos, end - pos));
                }
                if (instr.find("br i1") != std::string::npos) {
                    size_t pos1 = instr.find("label %");
                    while (pos1 != std::string::npos) {
                        pos1 += 7;
                        size_t end = instr.find_first_of(" \n,", pos1);
                        if (end == std::string::npos) end = instr.length();
                        referencedBlocks.insert(instr.substr(pos1, end - pos1));
                        pos1 = instr.find("label %", pos1);
                    }
                }
            }
        }
        
        // 输出块（跳过空且无引用的块）
        for (const auto& block : blocks) {
            bool isEmpty = emptyBlocks.count(block->name) > 0;
            bool isReferenced = referencedBlocks.count(block->name) > 0 || block == blocks[0];
            
            if (!isEmpty || isReferenced) {
                oss << block->name << ":\n";
                for (const auto& instr : block->instructions) {
                    oss << "  " << instr << "\n";
                }
            }
        }
        
        oss << "}\n";
        return oss.str();
    }
};

// IR 生成器
class IRBuilder {
public:
    std::vector<std::string> globalDeclarations;  // 全局变量和声明
    std::vector<std::shared_ptr<Function>> functions;
    std::map<std::string, std::shared_ptr<Function>> functionMap;
    
    std::shared_ptr<Function> createFunction(const std::string& name, std::shared_ptr<Type> returnType) {
        auto func = std::make_shared<Function>(name, returnType);
        functions.push_back(func);
        functionMap[name] = func;
        return func;
    }
    
    void addGlobalDeclaration(const std::string& decl) {
        globalDeclarations.push_back(decl);
    }
    
    std::string toString() const {
        std::ostringstream oss;
        
        // LLVM IR 头
        oss << "; ModuleID = 'module'\n";
        oss << "source_filename = \"module\"\n\n";
        
        // 全局声明和变量
        for (const auto& decl : globalDeclarations) {
            oss << decl << "\n";
        }
        
        if (!globalDeclarations.empty()) {
            oss << "\n";
        }
        
        // 函数
        for (const auto& func : functions) {
            oss << func->toString() << "\n";
        }
        
        return oss.str();
    }
};
