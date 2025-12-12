# Ubuntu 22.04 调试总结（2025-12-12）

## 环境确认
- **测试环境**：WSL Ubuntu 22.04.5 LTS（与 GradeScope 一致）
- **工具链**：clang 14.0.0, cmake 3.22.1, Python 3.10.12
- **重要发现**：原 `libsysy.a` 是 ARM 架构，需重新编译为 x86_64 版本（`libsysy_x86.a`）

## Bug 修复记录

### Bug 1: 多维数组参数类型不匹配（71_full_conn）

**错误信息**：
```
error: '@model' defined with type 'i32 ([5 x i32]*)*' but expected 'i32 (i32*)*'
```

**问题分析**：
- 函数定义 `int model(int a[][5])` 生成参数类型 `[5 x i32]*`（正确）
- 函数调用传递 `int a[5][5]` 时：
  1. `visitPrimaryExp` 正确 decay：`int a[5][5]` → `[5 x i32]*`
  2. 但函数调用时（第1252-1282行）又检查"元素类型不是数组"，进一步 decay 成 `i32*`（错误）
- 结果：函数期望 `[5 x i32]*`，实际传递 `i32*` → 类型不匹配

**修复方案**：
删除 `visitUnaryExp` 中函数调用部分的"二次 decay"逻辑（第1252-1282行），因为 `visitPrimaryExp` 已经做过正确的 array decay。

**修改文件**：`github-compiler/include/CodeGenVisitor.h`

**修改内容**：
```cpp
// 删除了以下逻辑：
// if (auto ptrType = std::dynamic_pointer_cast<PointerType>(arg.type)) {
//     if (auto arrType = std::dynamic_pointer_cast<ArrayType>(ptrType->pointee)) {
//         bool elementIsArray = ...;
//         if (!elementIsArray) {
//             // 二次 decay: [N x T]* → T*
//         }
//     }
// }

// 改为直接使用参数类型，不做额外转换
```

### Bug 2: 带索引数组未正确 decay（88_many_params2）

**错误信息**：
```
error: '@func' defined with type '... i32* ...' but expected '... [67 x i32]* ...'
```

**问题分析**：
- 函数定义 `int func(..., int d[], ...)` 期望 `i32*`（一维数组参数）
- 调用时传递 `a[17]`（`a` 是 `int [61][67]`）：
  1. `getLValAddress` 返回类型为 `Pointer([67 x i32])`（指向一维数组的指针）
  2. `visitPrimaryExp` 的 decay 逻辑（第1348-1355行）只处理"不带索引的数组"
  3. 对于"指向数组的指针"，直接返回地址，没有进一步 decay
- 结果：函数期望 `i32*`，实际传递 `[67 x i32]*` → 类型不匹配

**修复方案**：
在 `visitPrimaryExp` 中，当返回类型是 `Pointer(Array)` 时，通过 `getelementptr` decay 成 `Pointer(元素类型)`。

**修改文件**：`github-compiler/include/CodeGenVisitor.h`（第1348-1360行）

**修改内容**：
```cpp
// 原逻辑：
// if (ptrType->pointee->isArray() || ptrType->pointee->isPointer()) {
//     return addr;  // 直接返回，不 decay
// }

// 新逻辑：
if (auto arrType = std::dynamic_pointer_cast<ArrayType>(ptrType->pointee)) {
    // 指向数组的指针，需要 decay 成指向首元素的指针
    // [N x T]* → T*（通过 getelementptr）
    std::string tmp = genTmpVar();
    std::string arrTypeStr = getTypeLLVMString(arrType);
    currentBB->addInstruction("%" + tmp + " = getelementptr inbounds " + arrTypeStr + 
                            ", " + arrTypeStr + "* " + addr.name + ", i64 0, i64 0");
    return IRValue(tmp, std::make_shared<PointerType>(arrType->elementType));
} else if (ptrType->pointee->isPointer()) {
    // 指向指针的指针，返回地址（指针参数）
    return addr;
}
```

## 测试结果

### 修复前（Ubuntu 22.04）
```
Total tests:  100
Passed tests: 96
Failed tests: 4

失败用例：69, 71, 74, 88
```

### 修复后（Ubuntu 22.04）
```
Total tests:  100
Passed tests: 98
Failed tests: 2

失败用例：69, 74
```

**已修复**：
- ✅ 71_full_conn（多维数组参数类型匹配）
- ✅ 88_many_params2（带索引数组正确 decay）

**仍失败**：
- ✗ 69_expr_eval（所有环境都失败，可能栈溢出或输出格式问题）
- ✗ 74_kmp（所有环境都失败，可能栈溢出或输出格式问题）

## 环境差异分析

| 环境 | 失败用例 | 通过率 |
|------|---------|--------|
| Alpine Linux (docker-desktop) | 69, 74 | 98/100 |
| Ubuntu 22.04 (WSL) | 69, 74 | 98/100 |
| macOS (同学本地) | 无 | 100/100 |
| GradeScope (同学提交) | 71, 88 | 98/100 |

**关键发现**：
- 71 和 88 是 **Ubuntu 22.04 特有的失败用例**（已修复）
- 69 和 74 在 **Alpine 和 Ubuntu 22.04 都失败**，但 **macOS 通过**
- 可能原因：栈大小限制、编译器优化差异、或 `sylib.c` 输出格式问题

## 下一步行动

### 针对 69/74 的调试策略

1. **确认输出格式问题**
   - 当前 diff 显示多了一行 `TOTAL: 0H-0M-0S-0us`（来自 `sylib.c`）
   - 检查 `run-test.py` 的比较逻辑是否正确处理 stderr
   - 或修改 `sylib.c` 确保时间统计只输出到 stderr

2. **如果输出确实错误**
   - 用 `gdb` 调试 69/74，检查是否栈溢出或段错误
   - 检查生成的 IR 中 `alloca` 指令是否在循环内重复分配
   - 尝试增加栈大小：`ulimit -s unlimited`

3. **最坏情况**
   - 69/74 可能是边界用例，GradeScope 也可能失败
   - 或者需要优化 IR 生成（如合并重复的 `alloca`，避免栈膨胀）

## 提交建议

**当前状态**：Ubuntu 22.04 环境下 98/100，已修复 GradeScope 失败的 71 和 88。

**建议操作**：
1. 立即提交当前版本到 GradeScope，验证是否能达到 100 分
2. 如果 GradeScope 上 69/74 也失败，说明这两个用例在所有 Linux 环境都有问题
3. 如果 GradeScope 通过，说明是本地环境（WSL/Alpine）的栈大小或库版本问题

## 相关文件

- 修改文件：`github-compiler/include/CodeGenVisitor.h`
- 测试脚本：`github-compiler/check_failed_tests.sh`
- 运行时库：`github-compiler/test/resources/libsysy_x86.a`（重新编译的 x86_64 版本）
- 测试日志：`github-compiler/ubuntu22_full_test.log`


