# 编译器失败测试分析 - 文档导航

## 📋 文档清单

本分析包含4个详细文档，针对编译器的4个关键问题进行了全面分析：

### 1. **TEST_ANALYSIS.md** - 主分析报告（最重要）
**内容**：
- 4个失败测试用例的详细分析
- 每个问题的源代码、期望输出、实际问题、根本原因
- 共同点总结和影响范围评估
- **修复难度排序**（易到难）和修复时间预估
- 详细的影响评估

**何时读取**：首先读这个文档来获得完整图景

**关键结论**：
- 问题1（数组初始化）：最高优先级，影响面广
- 问题2（短路求值）：最困难，需要重构控制流
- 问题3（表达式处理）：最简单，容易修复
- 问题4（全局数组）：同问题1

---

### 2. **QUICK_REFERENCE.md** - 快速查询卡
**内容**：
- 问题速查表
- 问题与症状的快速对应
- 关键代码位置
- 修复优先级简表
- 一页纸快速参考

**何时读取**：需要快速查找某个问题的信息时

**使用方式**：打印出来，放在desk上作为快速参考

---

### 3. **TECHNICAL_DEEP_DIVE.md** - 技术深层分析
**内容**：
- 每个问题的代码级分析
- 当前实现的问题代码展示
- 正确实现的示例代码
- 关键函数的工作原理说明
- 测试用例的关键点提取

**何时读取**：当需要理解代码实现细节时，准备修复代码时

**包含内容**：
- 问题1的 `visitVarDef()` 分析
- 问题2的 PHI 节点和控制流解释
- 问题3的表达式树调试建议
- 问题4的全局初始化修复方案

---

### 4. **FIXING_CHECKLIST.md** - 修复执行计划（最实用）
**内容**：
- 分3个阶段的修复计划
- 每个阶段的具体任务
- 可打勾的Checklist
- 编译和测试命令
- 预期的代码改变对比
- 调试技巧和资源链接

**何时读取**：准备开始修复代码时

**使用方式**：
1. 按阶段顺序执行任务
2. 完成每个任务打勾
3. 修复后运行指定的测试命令
4. 使用提供的调试技巧排查问题

---

## 🎯 快速开始指南

### 场景1：我想快速了解问题概况
1. 读 **QUICK_REFERENCE.md** (5分钟)
2. 读 **TEST_ANALYSIS.md** 中的"修复难度排序"部分 (10分钟)

### 场景2：我想深入理解一个特定问题
1. 在 **TEST_ANALYSIS.md** 中找到相关章节
2. 查看 **TECHNICAL_DEEP_DIVE.md** 中的代码细节
3. 如果要修复，参考 **FIXING_CHECKLIST.md**

### 场景3：我现在要开始修复代码
1. 按优先级顺序读相关章节
2. 打开 **FIXING_CHECKLIST.md** 作为主要参考
3. 使用 **TECHNICAL_DEEP_DIVE.md** 作为代码参考
4. 用 **QUICK_REFERENCE.md** 快速查询信息

### 场景4：我修复了一个问题，想确认没有回归
1. 查看 **FIXING_CHECKLIST.md** 中的"回归测试"部分
2. 运行指定的测试命令
3. 参考"预期测试结果"部分

---

## 📊 问题速览

```
问题编号  | 测试名                | 类型      | 优先级 | 修复时间
---------|-----------------------|-----------|--------|----------
#1       | 04_arr_defn3/3_hidden | 数组初始化 | 最高   | 1-2天
#2       | 50_short_circuit      | 短路求值   | 高     | 3-5天
#3       | 48_assign_complex     | 表达式    | 中     | 1天
---------|-----------------------|-----------|--------|----------
         |                       | 总计      |        | 5-8天
```

**修复顺序建议**：问题3 → 问题1/4 → 问题2

---

## 📍 关键代码位置

| 问题 | 主文件 | 主函数 | 行号 |
|------|--------|--------|------|
| 问题1 | CodeGenVisitor.h | visitVarDef() | ~150-210 |
| 问题2 | CodeGenVisitor.h | visitLandExp/visitLorExp | ~1174-1270 |
| 问题3 | CodeGenVisitor.h | visitMulExp/visitAddExp | ~1100-1160 |
| 问题4 | CodeGenVisitor.h | visitConstDecl | ~280-350 |

---

## 🔍 核心问题总结

### 问题1：数组初始化代码完全缺失
```c
int a[4][2] = {1, 2, 3, 4, 5, 6, 7, 8};  // ❌ 完全没被初始化
```
**根因**：`initializeArray()` 函数存在但从不被调用

### 问题2：短路求值无法工作
```c
if (x > 10 && expensive_func())  // ❌ 即使x<=10也会调用func
```
**根因**：使用简单的`and i1`而不是条件分支和PHI节点

### 问题3：中间值在表达式中丢失
```c
result = a + b - -(c) % 2;  // ❌ -(c) % 2 被计算但未使用
```
**根因**：表达式树遍历时某些值未被追踪

### 问题4：全局数组总是零初始化
```c
int c[4] = {6, 7, 8, 9};  // ❌ 变成 [0, 0, 0, 0]
```
**根因**：全局声明时缺少初始化列表处理

---

## ✅ 验证标准

修复完成的标志：
- [ ] 运行 `python3 run-test.py` 全部通过
- [ ] 具体测试用例通过：
  - [ ] 04_arr_defn3 ✓
  - [ ] 05_arr_defn4 ✓
  - [ ] 48_assign_complex_expr ✓
  - [ ] 49_if_complex_expr ✓
  - [ ] 50_short_circuit ✓
  - [ ] 51_short_circuit3 ✓
  - [ ] 54_hidden_var ✓
- [ ] 所有之前通过的测试仍然通过（无回归）

---

## 💡 提示和技巧

### 编译和测试的快速命令
```bash
# 快速编译
cd build && make -j4

# 快速测试单个文件
./compiler ../test/resources/functional/XX_test_name.sy -o /tmp/out.ll
llvm-as /tmp/out.ll -o /tmp/out.bc 2>&1
lli /tmp/out.bc < ../test/resources/functional/XX_test_name.in

# 比较输出
lli /tmp/out.bc < ../test/resources/functional/XX_test_name.in > /tmp/actual.out
diff ../test/resources/functional/XX_test_name.output /tmp/actual.out

# 运行完整测试
python3 ../run-test.py 2>&1 | grep -E "^(✓|✗|ERROR|INFO)"
```

### 调试技巧
- 在关键函数中添加 `std::cerr` 输出
- 查看生成的 `.ll` 文件确认LLVM语法
- 使用 `llvm-as` 验证LLVM代码的有效性
- 逐步测试：先修复一个，再测试所有

### 常见陷阱
- 修改全局函数时注意作用域（全局vs局部初始化不同）
- PHI节点需要正确的前驱块列表
- 数组初始化需要正确的多维索引计算
- 短路求值需要多个基本块和条件跳转

---

## 📚 补充资源

文档中提供的有用工具和信息：

1. **TECHNICAL_DEEP_DIVE.md** 中的代码示例
2. **FIXING_CHECKLIST.md** 中的调试命令
3. **TEST_ANALYSIS.md** 中的完整源代码和输出
4. 外部资源链接（在各文档中）

---

## 🏁 完成标志

当你看到这个输出时，说明修复完成了：
```
║ 04_arr_defn3            ║ ✓ Passed    ║
║ 05_arr_defn4            ║ ✓ Passed    ║
║ 48_assign_complex_expr  ║ ✓ Passed    ║
║ 49_if_complex_expr      ║ ✓ Passed    ║
║ 50_short_circuit        ║ ✓ Passed    ║
║ 51_short_circuit3       ║ ✓ Passed    ║
║ 54_hidden_var           ║ ✓ Passed    ║
```

---

## 📝 文档生成信息

- **生成时间**：2025年12月10日
- **分析深度**：代码级，包含完整源代码分析
- **覆盖范围**：4个主要问题，7个相关失败的测试用例
- **修复预计**：5-8天工作量

---

## 快速问题诊断

**问题：我不知道从哪里开始？**
→ 读 TEST_ANALYSIS.md 中的"修复难度排序"部分

**问题：我想要快速修复清单？**
→ 打开 FIXING_CHECKLIST.md

**问题：我需要理解某个问题的代码细节？**
→ 去 TECHNICAL_DEEP_DIVE.md

**问题：我想快速查找某个问题的信息？**
→ 使用 QUICK_REFERENCE.md

**问题：我修复后想验证没有问题？**
→ 参考 FIXING_CHECKLIST.md 的回归测试部分

---

**祝修复顺利！** 🚀

