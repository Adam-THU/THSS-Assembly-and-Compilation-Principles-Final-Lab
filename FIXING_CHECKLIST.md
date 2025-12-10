# 修复执行计划和Checklist

## 修复顺序和预计时间

```
修复阶段          预计时间    优先级
─────────────────────────────────────
第1阶段: 表达式修复    1天     🥇 高
第2阶段: 数组初始化    1-2天   🥈 高
第3阶段: 短路求值      3-5天   🥉 中（高风险）
─────────────────────────────────────
总计                  5-8天
```

---

## 第1阶段：修复表达式值丢失问题 (48_assign_complex_expr)

### 目标
确保复杂表达式中所有计算的中间值都被正确使用。

### 具体任务

- [ ] **1.1 - 审查表达式处理函数**
  - [ ] 检查 `visitMulExp()` 实现 (line ~1100)
  - [ ] 检查 `visitAddExp()` 实现 (line ~1140)
  - [ ] 检查 `visitUnaryExp()` 实现 (line ~1050)
  - [ ] 验证返回值是否包含所有计算结果

- [ ] **1.2 - 添加调试输出**
  ```cpp
  void debugIRValue(const std::string& tag, const IRValue& val) {
      std::cerr << "[DEBUG] " << tag << ": " << val.name 
                << " (type=" << val.type->toString() << ")" << std::endl;
  }
  ```
  在关键位置添加此调用来追踪值流

- [ ] **1.3 - 编译测试**
  ```bash
  cd build && cmake .. && make -j4
  ```

- [ ] **1.4 - 运行测试**
  ```bash
  ./compiler ../test/resources/functional/48_assign_complex_expr.sy -o /tmp/test.ll
  cat /tmp/test.ll | grep "tmp10"  # 应该出现对 %tmp10 的使用
  ```

- [ ] **1.5 - 验证输出**
  ```bash
  # 预期输出: 0 和 71
  cat test/resources/functional/48_assign_complex_expr.output
  ```

### 预期改变

**修复前的LLVM**:
```llvm
%tmp10 = srem i32 %tmp9, 2
store i32 %tmp6, i32* %result  ; ❌ 直接存储 %tmp6，%tmp10 被忽略
```

**修复后的LLVM**:
```llvm
%tmp10 = srem i32 %tmp9, 2
%tmp11 = sub i32 %tmp6, %tmp10  ; ✅ 使用 %tmp10
store i32 %tmp11, i32* %result
```

---

## 第2阶段：修复数组初始化 (04_arr_defn3 + 54_hidden_var)

### 目标
使所有数组初始化都能正确生成代码，包括全局、局部、平坦、嵌套、混合初始化。

### 具体任务

- [ ] **2.1 - 修复全局数组初始化**
  - [ ] 定位 `visitConstDecl()` 中的全局常数数组处理 (line ~280)
  - [ ] 修复 `visitVarDef()` 中的全局变量处理
  - [ ] 修复方案：
    ```cpp
    // 在 visitVarDef() 中，isGlobal 分支：
    if (ctx->initVal()) {
        if (!dims.empty()) {
            std::string arrayInit = generateArrayInit(ctx->initVal(), dims);
            irBuilder.addGlobalDeclaration("@" + llvmName + " = global " + 
                                          arrayInit + ", align 4");
        } else {
            // 标量初始化...
        }
    }
    ```
  - [ ] 添加单元测试验证全局数组 (04_arr_defn3)

- [ ] **2.2 - 修复局部数组初始化**
  - [ ] 定位 `visitVarDef()` 中的局部数组处理 (line ~150)
  - [ ] 在没有初始化器的块后添加有初始化器的处理：
    ```cpp
    if (!dims.empty() && ctx->initVal()) {
        initializeArray(llvmName, ctx->initVal(), varType, dims);
    }
    ```
  - [ ] 测试各种初始化模式：
    - [ ] 空初始化器 `{}`
    - [ ] 平坦初始化 `{1, 2, 3, ...}`
    - [ ] 嵌套初始化 `{{1, 2}, {3, 4}}`
    - [ ] 混合初始化 `{1, 2, {3}, {5}}`

- [ ] **2.3 - 验证 flattenInitializer() 正确性**
  - [ ] 检查递归逻辑是否正确
  - [ ] 添加测试用例验证平坦化结果
  - [ ] 确保嵌套深度任意

- [ ] **2.4 - 验证 calculateIndices() 正确性**
  - [ ] 测试二维数组：dims=[4, 2]
    ```
    flatIndex=0 → [0, 0]
    flatIndex=1 → [0, 1]
    flatIndex=2 → [1, 0]
    flatIndex=3 → [1, 1]
    flatIndex=4 → [2, 0]
    flatIndex=5 → [2, 1]
    ...
    ```
  - [ ] 测试三维数组
  - [ ] 编写单元测试

- [ ] **2.5 - 修复 initializeArray() 调用**
  - [ ] 确保调用参数正确
  - [ ] 处理边界情况（初始化值不足等）
  - [ ] 验证 GEP 指令生成正确

- [ ] **2.6 - 编译和测试**
  ```bash
  cd build && cmake .. && make -j4
  ./compiler ../test/resources/functional/04_arr_defn3.sy -o /tmp/test.ll
  # 应该看到大量的 store 指令来初始化数组元素
  ```

- [ ] **2.7 - 运行功能测试**
  ```bash
  python3 ../run-test.py 2>&1 | grep "04_arr_defn3\|54_hidden_var"
  # 应该显示 ✓ Passed
  ```

### 预期改变

**修复前的LLVM**:
```llvm
%b = alloca [4 x [2 x i32]], align 4
; 直接使用，没有初始化
```

**修复后的LLVM**:
```llvm
%b = alloca [4 x [2 x i32]], align 4
%__tmp0 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 0, i64 0
store i32 1, i32* %__tmp0, align 4
%__tmp1 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 0, i64 1
store i32 2, i32* %__tmp1, align 4
; ... 更多初始化 ...
```

---

## 第3阶段：修复短路求值 (50_short_circuit)

### 目标
实现正确的短路求值，使 `&&` 和 `||` 不会计算右操作数的副作用（当左操作数已决定结果时）。

### 具体任务

- [ ] **3.1 - 理解PHI节点**
  - [ ] 学习LLVM PHI 指令语法
  - [ ] 理解基本块和前驱的概念
  - [ ] 阅读示例代码

- [ ] **3.2 - 重构 visitLandExp()**
  - [ ] 保存当前实现的备份
  - [ ] 重新设计为生成条件分支版本：
    ```
    1. 计算左操作数
    2. 检查结果是否为i1，不是则转换
    3. 创建 rhs_bb（计算右操作数）
    4. 创建 end_bb（结束块）
    5. 从当前块生成条件跳转：br i1 left, rhs_bb, end_bb
    6. 在 rhs_bb 中计算右操作数
    7. 在 end_bb 中使用PHI节点合并结果
    ```
  - [ ] 处理常量优化情况

- [ ] **3.3 - 重构 visitLorExp()**
  - [ ] 类似 visitLandExp() 但逻辑相反
  - [ ] OR 的短路条件：如果左为真，结果为真，无需计算右边
  - [ ] 正确的条件跳转：`br i1 left, end_bb, rhs_bb`

- [ ] **3.4 - 处理嵌套情况**
  - [ ] 测试 `a && b && c` 的情况
  - [ ] 确保能生成多个条件分支
  - [ ] 验证PHI节点的前驱块信息正确

- [ ] **3.5 - 前驱块追踪**
  - [ ] 在IR生成中跟踪块的前驱
  - [ ] 确保PHI节点引用正确的前驱
  - [ ] 可能需要修改 `BasicBlock` 类来记录前驱

- [ ] **3.6 - 编译测试**
  ```bash
  cd build && cmake .. && make -j4
  ./compiler ../test/resources/functional/50_short_circuit.sy -o /tmp/test.ll
  # 应该看到多个 bb0, bb1, bb2... 标签
  # 应该看到 phi i1 [...] 指令
  ```

- [ ] **3.7 - 运行功能测试**
  ```bash
  cat > /tmp/50_test.in << 'EOF'
  11
  10
  100
  99
  EOF
  python3 ../run-test.py 2>&1 | grep "50_short_circuit"
  # 应该显示 ✓ Passed
  ```

- [ ] **3.8 - 验证短路行为**
  ```bash
  # 准备输入
  echo -e "11\n10\n100\n99" | ./build/compiler /tmp/test_50.sy -run
  # 应该输出正确的全局变量状态序列
  ```

### 预期改变

**修复前的LLVM**:
```llvm
%tmp1 = icmp sgt i32 %tmp0, 10
%tmp3 = call i32 @func(i32 %tmp2)    ; ❌ 无条件调用
%tmp4 = icmp ne i32 %tmp3, 0
%tmp5 = and i1 %tmp1, %tmp4          ; 简单的按位与
br i1 %tmp5, label %...
```

**修复后的LLVM**:
```llvm
%tmp1 = icmp sgt i32 %tmp0, 10
br i1 %tmp1, label %and.rhs, label %and.end  ; ✅ 条件跳转

and.rhs:
  %tmp3 = call i32 @func(i32 %tmp2)  ; ✅ 只在左为真时执行
  %tmp4 = icmp ne i32 %tmp3, 0
  br label %and.end

and.end:
  %result = phi i1 [ 0, %entry ], [ %tmp4, %and.rhs ]
  br i1 %result, label %...
```

---

## 回归测试Checklist

修复完成后，需要运行完整测试套件确保没有新增问题：

### 第1阶段后
- [ ] `python3 run-test.py` 
- [ ] 所有之前通过的测试仍然通过
- [ ] 48_assign_complex_expr 应该通过
- [ ] 49_if_complex_expr 也应该通过

### 第2阶段后
- [ ] `python3 run-test.py`
- [ ] 04_arr_defn3 应该通过
- [ ] 05_arr_defn4 应该通过
- [ ] 54_hidden_var 应该通过
- [ ] 52_scope, 53_scope2 应该仍然通过

### 第3阶段后
- [ ] `python3 run-test.py`
- [ ] 50_short_circuit 应该通过
- [ ] 51_short_circuit3 应该通过
- [ ] 所有之前通过的测试仍然通过

---

## 关键代码位置速查

| 修复内容 | 文件 | 函数 | 行号 | 操作 |
|---------|------|------|------|------|
| 表达式值 | CodeGenVisitor.h | visitMulExp | 1100 | 检查返回值 |
| 表达式值 | CodeGenVisitor.h | visitAddExp | 1140 | 检查返回值 |
| 数组初始化 | CodeGenVisitor.h | visitVarDef | 150-210 | 添加调用 |
| 全局数组 | CodeGenVisitor.h | visitConstDecl | 280-350 | 检查初始化 |
| 短路与 | CodeGenVisitor.h | visitLandExp | 1174 | 重写 |
| 短路或 | CodeGenVisitor.h | visitLorExp | 1223 | 重写 |

---

## 调试技巧

### 查看生成的LLVM代码
```bash
./build/compiler test/resources/functional/04_arr_defn3.sy -o /tmp/out.ll
cat /tmp/out.ll | less
```

### 验证LLVM语法
```bash
llvm-as /tmp/out.ll -o /tmp/out.bc 2>&1  # 如果有语法错误会报告
```

### 运行单个LLVM文件
```bash
lli /tmp/out.bc < test/resources/functional/04_arr_defn3.in
```

### 比较期望输出
```bash
lli /tmp/out.bc < test/resources/functional/04_arr_defn3.in > /tmp/actual.out
diff test/resources/functional/04_arr_defn3.output /tmp/actual.out
```

### 详细调试
```bash
# 在编译器代码中添加 std::cerr 输出
// 例如在 visitVarDef() 中：
std::cerr << "DEBUG: Processing var " << varName << ", dims=" << dims.size() << std::endl;

# 重新编译并观察输出
cd build && make -j4
./compiler test/resources/functional/04_arr_defn3.sy 2>&1 | head -50
```

---

## 预期测试结果

### 修复前
```
[ERROR] 04_arr_defn3            : ✗ Failed
[ERROR] 05_arr_defn4            : ✗ Failed
[ERROR] 48_assign_complex_expr  : ✗ Failed
[ERROR] 49_if_complex_expr      : ✗ Failed
[ERROR] 50_short_circuit        : ✗ Failed
[ERROR] 51_short_circuit3       : ✗ Failed
[ERROR] 54_hidden_var           : ✗ Failed
```

### 修复后（目标）
```
[INFO] 04_arr_defn3             : ✓ Passed
[INFO] 05_arr_defn4             : ✓ Passed
[INFO] 48_assign_complex_expr   : ✓ Passed
[INFO] 49_if_complex_expr       : ✓ Passed
[INFO] 50_short_circuit         : ✓ Passed
[INFO] 51_short_circuit3        : ✓ Passed
[INFO] 54_hidden_var            : ✓ Passed
```

---

## 风险评估和缓解

| 阶段 | 风险 | 缓解方案 |
|------|------|---------|
| 1 | 可能引入新bug | 修改前备份，小步骤提交 |
| 2 | 数组初始化逻辑复杂 | 逐个测试初始化模式 |
| 2 | 全局/局部初始化不同 | 分别测试两种情况 |
| 3 | PHI节点生成错误 | 详细的块前驱追踪 |
| 3 | 嵌套短路逻辑复杂 | 从简单到复杂逐步测试 |

---

## 额外资源

- **LLVM PHI 节点文档**：https://llvm.org/docs/LangRef/#phi-instruction
- **C 运算符优先级**：https://en.cppreference.com/w/c/language/operator_precedence
- **短路求值定义**：https://en.wikipedia.org/wiki/Short-circuit_evaluation

