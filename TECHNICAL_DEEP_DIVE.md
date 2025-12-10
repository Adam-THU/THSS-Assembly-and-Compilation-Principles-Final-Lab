# 编译器问题深层技术分析

## 问题 #1：数组初始化缺失

### 当前代码流程

#### 在 `visitVarDef()` 中的处理
```cpp
virtual std::any visitVarDef(SysYParser::VarDefContext *ctx) override {
    std::string varName = ctx->IDENT()->getText();
    std::vector<int> dims;
    
    // 1. 提取维度信息
    for (size_t i = 0; i < ctx->constExp().size(); ++i) {
        auto constExp = ctx->constExp(i);
        if (constExp) {
            int dimSize = evalConstExp(constExp);
            dims.push_back(dimSize);
        }
    }
    
    std::shared_ptr<Type> varType = i32Type();
    if (!dims.empty()) {
        varType = std::make_shared<ArrayType>(i32Type(), dims);
    }
    
    // 2. 检查是否是全局或局部
    bool isGlobal = (currentFunc == nullptr);
    if (isGlobal) {
        // 全局变量处理
        std::string llvmName = varName;
        std::string typeStr = varType->toString();
        
        // ⚠️ 问题：这里没有处理初始化器！
        if (!dims.empty() && ctx->initVal()) {
            // 应该调用 generateArrayInit()
        }
        
        irBuilder.addGlobalDeclaration("@" + llvmName + " = global " + typeStr + 
                                      " zeroinitializer, align 4");  // ❌ 总是零初始化！
    } else {
        // 局部变量处理
        std::string llvmName = allocateLocalName(varName);
        std::string typeStr = varType->toString();
        currentBB->addInstruction("%" + llvmName + " = alloca " + typeStr + ", align 4");
        
        if (!dims.empty()) {
            if (!ctx->initVal()) {
                // 没有初始化器，清零
                std::string typeStr = varType->toString();
                currentBB->addInstruction("store " + typeStr + " zeroinitializer, " + 
                                        typeStr + "* %" + llvmName + ", align 4");
            }
            // ❌ 问题：有初始化器也没有处理！应该调用 initializeArray()
        }
        
        symTable.addSymbol(varName, varType, llvmName);
    }
    
    return nullptr;
}
```

### 为什么会丢失初始化？

代码中存在的 `initializeArray()` 函数：
```cpp
void initializeArray(const std::string& arrayName, SysYParser::InitValContext* initVal, 
                    std::shared_ptr<Type> arrayType, const std::vector<int>& dims) {
    // 这个函数存在，但从未被调用！
    std::vector<IRValue> flatValues;
    flattenInitializer(initVal, flatValues);
    // ... 生成初始化代码 ...
}
```

**问题根源**：
1. `initializeArray()` 定义了但未被调用
2. `visitVarDef()` 在局部数组初始化时没有调用它
3. 全局数组初始化总是使用 `zeroinitializer`，忽略实际的初始值列表

### 必要的修复

```cpp
// 修复方案：在 visitVarDef() 中添加初始化调用

if (isGlobal) {
    if (ctx->initVal() && !dims.empty()) {
        // 生成全局数组初始化
        std::string arrayInit = generateArrayInit(ctx->initVal(), dims);
        irBuilder.addGlobalDeclaration("@" + llvmName + " = global " + arrayInit + ", align 4");
    } else if (!dims.empty()) {
        irBuilder.addGlobalDeclaration("@" + llvmName + " = global " + 
                                      getTypeLLVMString(varType) + " zeroinitializer, align 4");
    } else if (ctx->initVal()) {
        // 标量全局初始化
        IRValue initVal = getIRValue(visit(ctx->initVal()));
        irBuilder.addGlobalDeclaration("@" + llvmName + " = global i32 " + 
                                      std::to_string(initVal.constValue) + ", align 4");
    }
} else {
    // 局部变量
    if (ctx->initVal() && !dims.empty()) {
        // ✅ 关键修复：调用初始化函数
        initializeArray(llvmName, ctx->initVal(), varType, dims);
    } else if (!dims.empty()) {
        std::string typeStr = varType->toString();
        currentBB->addInstruction("store " + typeStr + " zeroinitializer, " + 
                                typeStr + "* %" + llvmName + ", align 4");
    } else if (ctx->initVal()) {
        // 标量初始化
        IRValue rval = getIRValue(visit(ctx->initVal()));
        rval = ensureInt32(rval);
        if (rval.isConst) {
            currentBB->addInstruction("store i32 " + std::to_string(rval.constValue) + 
                                    ", i32* %" + llvmName + ", align 4");
        } else {
            currentBB->addInstruction("store i32 %" + rval.name + ", i32* %" + 
                                    llvmName + ", align 4");
        }
    }
}
```

---

## 问题 #2：短路求值错误实现

### 当前的错误实现

```cpp
virtual std::any visitLandExp(SysYParser::LandExpContext *ctx) override {
    IRValue result = getIRValue(visit(ctx->eqExp(0)));
    
    for (size_t i = 1; i < ctx->eqExp().size(); ++i) {
        IRValue rhs = getIRValue(visit(ctx->eqExp(i)));  // ❌ 无条件计算右操作数！
        
        // ... 类型转换 ...
        
        std::string tmp = genTmpVar();
        // ... 生成 and i1 指令 ...
        currentBB->addInstruction("%"+tmp+" = and i1 %"+result.name+", %"+rhs.name);
    }
    
    return result;
}
```

**问题**：
- 即使左操作数为假，仍然会计算右操作数
- 不生成条件分支，无法跳过右边的计算
- 特别是当右边包含函数调用时，会产生副作用

### 正确的短路实现方式

在LLVM中，短路求值需要使用条件分支和PHI节点：

```llvm
; a && b 的正确实现
%a_val = ...
br i1 %a_val, label %and.rhs, label %and.end

and.rhs:
  %b_val = ...
  br label %and.end

and.end:
  %result = phi i1 [ 0, %entry ], [ %b_val, %and.rhs ]
```

### 修复代码结构

```cpp
virtual std::any visitLandExp(SysYParser::LandExpContext *ctx) override {
    if (ctx->eqExp().size() == 1) {
        // 只有一个操作数，直接返回
        return visit(ctx->eqExp(0));
    }
    
    IRValue result = getIRValue(visit(ctx->eqExp(0)));
    
    for (size_t i = 1; i < ctx->eqExp().size(); ++i) {
        // 确保左操作数是 i1
        if (auto intType = std::dynamic_pointer_cast<IntegerType>(result.type)) {
            if (intType->width == 32) {
                std::string tmp = genTmpVar();
                currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+result.name+", 0");
                result = IRValue(tmp, i1Type());
            }
        }
        
        // ✅ 关键修复：生成条件分支
        std::string rhsBB = genBlockName();
        std::string endBB = genBlockName();
        
        currentBB->addInstruction("br i1 %"+result.name+", label %"+rhsBB+", label %"+endBB);
        
        // 创建计算右操作数的块
        currentBB = currentFunc->createBlock(rhsBB);
        IRValue rhs = getIRValue(visit(ctx->eqExp(i)));
        
        if (auto intType = std::dynamic_pointer_cast<IntegerType>(rhs.type)) {
            if (intType->width == 32) {
                std::string tmp = genTmpVar();
                currentBB->addInstruction("%"+tmp+" = icmp ne i32 %"+rhs.name+", 0");
                rhs = IRValue(tmp, i1Type());
            }
        }
        
        currentBB->addInstruction("br label %"+endBB);
        
        // 创建结束块
        currentBB = currentFunc->createBlock(endBB);
        
        // ✅ 使用 PHI 节点合并结果
        std::string phiResult = genTmpVar();
        currentBB->addInstruction("%"+phiResult+" = phi i1 [ 0, %...previous_block ], [ %"+
                                 rhs.name+", %"+rhsBB+" ]");
        result = IRValue(phiResult, i1Type());
    }
    
    return result;
}
```

**重要考虑**：
- 需要追踪前驱块（predecessor blocks）来正确生成PHI节点
- OR运算类似，但起始条件相反（如果左为真，跳过右边）
- 需要在IR生成中维护基本块链

---

## 问题 #3：表达式值丢失

### 问题示例

```c
result = (d * 1 / 2) + (a - b) - -(c + 3) % 2;
```

生成的LLVM中：
```llvm
%tmp9 = sub i32 0, %tmp8        ; -(c+3)
%tmp10 = srem i32 %tmp9, 2      ; -(c+3) % 2 ✅ 计算了
store i32 %tmp6, i32* %result   ; ❌ 但 %tmp10 没有被用到！
; 应该是: %tmp11 = sub i32 %tmp6, %tmp10
```

### 根本原因分析

在表达式解析树中，可能的问题：

```
表达式树应该是：
          -
         / \
        +   (一元 -)%2
       / \       /
      /   (a-b) (c+3)
     / \
   (d*1) 2

但实际可能被解析为：
          -
         / \
        +   (一元 -)
       / \       |
      /   (a-b) (c+3)
     / \
   (d*1) 2
```

**原因**：运算符优先级和结合性的处理不正确

### 调试建议

```cpp
// 在生成代码时追踪中间值
void debugExpression(const std::string& context, const IRValue& val) {
    std::cerr << "DEBUG [" << context << "]: " << val.name << " (type: " 
              << val.type->toString() << ")" << std::endl;
}

virtual std::any visitMulExp(SysYParser::MulExpContext *ctx) override {
    IRValue result = getIRValue(visit(ctx->unaryExp(0)));
    debugExpression("mulExp.left", result);
    
    for (size_t i = 1; i < ctx->unaryExp().size(); ++i) {
        // ... 运算 ...
        debugExpression("mulExp.result", result);
    }
    
    return result;
}
```

---

## 问题 #4：全局数组初始化

### 当前问题

在 `visitConstDecl()` 中：

```cpp
if (!dims.empty()) {
    // 全局常数数组
    std::string arrayInit = generateConstArrayInit(constDef->constInitVal(), dims);
    irBuilder.addGlobalDeclaration("@" + constName + " = global " + arrayInit + ", align 4");
}
```

但在 `visitVarDef()` 的全局变量处理中：

```cpp
if (isGlobal) {
    std::string typeStr = varType->toString();
    
    irBuilder.addGlobalDeclaration("@" + llvmName + " = global " + typeStr + 
                                  " zeroinitializer, align 4");  // ❌ 总是 zeroinitializer!
}
```

**问题**：
- 对于常数（const），有初始化处理
- 对于变量（int），缺少初始化处理，总是用 `zeroinitializer`

### 修复方案

```cpp
if (isGlobal) {
    // 全局变量初始化处理
    if (ctx->initVal()) {
        if (dims.empty()) {
            // 标量初始化
            int value = 0;
            if (auto constExp = ctx->initVal()->exp()) {
                value = evalConstExp(constExp->addExp());
            }
            irBuilder.addGlobalDeclaration("@" + llvmName + " = global i32 " + 
                                          std::to_string(value) + ", align 4");
        } else {
            // ✅ 数组初始化
            std::string arrayInit = generateArrayInit(ctx->initVal(), dims);
            irBuilder.addGlobalDeclaration("@" + llvmName + " = global " + arrayInit + ", align 4");
        }
    } else {
        // 没有初始化器，使用默认值
        std::string typeStr = varType->toString();
        irBuilder.addGlobalDeclaration("@" + llvmName + " = global " + typeStr + 
                                      " zeroinitializer, align 4");
    }
}
```

---

## 关键实现函数回顾

### `flattenInitializer()` - 递归平坦化嵌套初始化

```cpp
void flattenInitializer(SysYParser::InitValContext* initVal, 
                       std::vector<IRValue>& flatValues) {
    if (initVal->exp()) {
        // 单个表达式
        IRValue val = getIRValue(visit(initVal->exp()));
        flatValues.push_back(val);
    } else {
        // 嵌套初始化列表 {{{...}}}
        for (auto subInit : initVal->initVal()) {
            flattenInitializer(subInit, flatValues);
        }
    }
}
```

**工作原理**：
- 递归遍历初始化树
- 遇到表达式，计算并添加
- 遇到嵌套列表，递归处理
- 结果是一维向量（平坦化）

### `calculateIndices()` - 从平坦索引计算多维坐标

```cpp
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
```

**示例**：
```
dims = [4, 2]，flatIndex = 5
dimProduct for i=0: 2
indices[0] = 5 / 2 = 2
remaining = 5 % 2 = 1

dimProduct for i=1: 1
indices[1] = 1 / 1 = 1
remaining = 1 % 1 = 0

结果：[2, 1]，对应 a[2][1]
```

---

## 测试用例关键点提取

### 04_arr_defn3 的关键测试

```c
int b[4][2] = {1, 2, 3, 4, 5, 6, 7, 8};  // 平坦初始化
// 应该填充：
// b[0][0]=1, b[0][1]=2
// b[1][0]=3, b[1][1]=4
// b[2][0]=5, b[2][1]=6
// b[3][0]=7, b[3][1]=8

int c[4][2] = {{1, 2}, {3, 4}, {5, 6}, {7, 8}};  // 嵌套初始化
// 结果相同

int d[4][2] = {1, 2, {3}, {5}, 7, 8};  // 混合初始化
// d[0][0]=1, d[0][1]=2
// d[1][0]=3, d[1][1]=0  (缺少的部分默认为0)
// d[2][0]=5, d[2][1]=0
// d[3][0]=7, d[3][1]=8

int e[4][2] = {{d[2][1], c[2][1]}, ...};  // 表达式初始化
// 引用其他数组元素，需要在运行时初始化
```

### 50_short_circuit 的关键测试

```c
i = 11; if (i > 10 && func(i)) ...
// 11 > 10 为真，应该计算 func(11) 的副作用 ✓

i = 10; if (i > 11 && func(i)) ...
// 10 > 11 为假，不应该计算 func(i) 的副作用 ❌
// 但当前实现会计算

i = 100; if (i <= 99 || func(i)) ...
// 100 <= 99 为假，应该计算 func(100) 的副作用 ✓

i = 99; if (i <= 100 || func(i)) ...
// 99 <= 100 为真，不应该计算 func(i) 的副作用 ❌
// 但当前实现会计算
```

**验证方法**：
- 全局变量 `g` 记录调用次数
- 每次函数调用会修改 `g` 的值
- 通过 `putint(g)` 输出，可以看出是否被调用
- 期望的调用序列能唯一确定正确的短路行为

---

## 优化建议（修复后）

1. **常表达式求值优化**：对于 `initVal` 中的常数，提前计算
2. **代码生成优化**：避免多次计算相同子表达式
3. **符号表优化**：使用更高效的作用域链实现
4. **基本块优化**：合并相邻的基本块，删除无用跳转

