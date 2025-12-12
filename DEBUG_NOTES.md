# 调试笔记 - 修复最后 2 个失败测试

## 📊 当前状态

- **总测试数**: 100
- **通过**: 98
- **失败**: 2
- **成绩**: 98/100

## ❌ 失败的测试

### 1. 69_expr_eval - 表达式求值器

#### 测试文件
- 源文件: `test/resources/functional/69_expr_eval.sy`
- 输入: `test/resources/functional/69_expr_eval.in`
- 期望输出: `test/resources/functional/69_expr_eval.out`

#### 输入内容
```
5
  1+2*   3/4-  2 *411 ;
0 -1+10*1329000/ 22219 +99    ;
1199+ 98888/2227 %112-23;
 *     2;
;
```

#### 期望输出
```
-820
696
1220
panic!
-1
panic!
-1
0
```

#### 实际输出（Linux/WSL）
```
-820     ✓ 第1个表达式正确
panic!   ✗ 应该是 696
-1       ✓ 返回值正确
panic!   ✗ 应该是 1220
-1       ✓ 返回值正确
panic!   ✓ 正确（第4个表达式语法错误）
-1       ✓ 返回值正确
panic!   ✗ 应该是 -1（第5个表达式是空行）
-1       ✓ 返回值正确
0        ✓ main 返回值正确
```

#### 问题分析
1. **第一个表达式成功**: `1+2*3/4-2*411 = -820` ✓
2. **第二个表达式失败**: `0-1+10*1329000/22219+99 = 696` ✗ 返回 panic!
3. **第三个表达式失败**: `1199+98888/2227%112-23 = 1220` ✗ 返回 panic!

#### 可能原因
- ✅ IR 生成正确（数组初始化、函数调用都正确）
- ❓ 运行时状态问题：第一次 eval() 后，全局变量状态没有正确重置？
- ❓ 栈操作问题：stack_push/stack_pop 在多次调用时可能有问题
- ❓ 输入解析问题：getch() 读取字符后 last_char 状态不对？

#### 程序结构
```c
int main() {
    int count = getint();  // 读取 5
    getch();               // 读取换行
    next_token();          // 初始化
    while (count) {
        putint(eval());    // 调用 eval()
        putch(10);
        count = count - 1;
    }
    return 0;
}
```

#### 调试计划
1. [ ] 检查 eval() 函数是否正确重置内部状态
2. [ ] 检查 next_token() 在每次表达式后是否正确
3. [ ] 检查栈数组 oprs[256] 和 ops[256] 是否有问题
4. [ ] 手动跟踪第二个表达式的执行流程

---

### 2. 74_kmp - KMP 字符串匹配

#### 测试文件
- 源文件: `test/resources/functional/74_kmp.sy`
- 输入: `test/resources/functional/74_kmp.in`
- 期望输出: `test/resources/functional/74_kmp.out`

#### 输入内容
```
abcabdbca
aababcabdabdababcabdbcadceadbcababcdcbaabsbda
```
- 第一行: 要查找的模式串
- 第二行: 主串

#### 期望输出
```
23
0
```
- 第一行: 找到位置为 23
- 第二行: 返回值 0（成功）

#### 实际输出（Linux/WSL）
```
-1       ✗ 应该找到位置 23
0        ✓ 返回值正确
```

#### 问题分析
- KMP 算法返回 -1（未找到），但应该找到位置 23
- 可能是字符串比较或索引计算错误

#### 程序结构
```c
int main() {
    int dst[4096], src[4096];
    read_str(dst);  // 读取模式串
    read_str(src);  // 读取主串
    putint(KMP(dst, src));
    putch(10);
    return 0;
}
```

#### 调试计划
1. [ ] 运行测试查看实际输出
2. [ ] 检查数组大小 4096 是否导致栈溢出
3. [ ] 检查 KMP 算法实现的 IR 是否正确

---

## 🔍 下一步行动

### 优先级 1: 调试 69_expr_eval

**步骤 1**: 创建简化测试，只测试前两个表达式
```c
// 输入
2
  1+2*   3/4-  2 *411 ;
0 -1+10*1329000/ 22219 +99    ;
```

**步骤 2**: 添加调试输出
- 在每次 eval() 调用前后打印 cur_token 的值
- 检查 last_char 的状态

**步骤 3**: 检查 IR
- 查看 eval() 函数返回前是否调用了 next_token()
- 确认栈数组的初始化是否在函数内部（不是全局）

### 优先级 2: 调试 74_kmp

**步骤 1**: 运行测试看实际输出

**步骤 2**: 如果栈溢出，考虑减小数组大小或优化

---

## 📝 待验证的假设

### 假设 1: 状态污染问题
**假设**: eval() 函数第一次执行成功，但没有正确重置全局状态，导致第二次失败。

**验证方法**:
```bash
# 只测试一个表达式
echo -e "1\n  1+2*   3/4-  2 *411 ;" | ./test_69
```

### 假设 2: 输入解析问题
**假设**: getch() 或 next_token() 在处理空格和换行时有问题。

**验证方法**: 查看 next_token() 的实现，确认是否正确跳过空格。

### 假设 3: 栈溢出
**假设**: 256 元素的数组太大，导致栈溢出。

**验证方法**: 检查栈大小限制，尝试减小数组。

---

## ✅ 已确认的事实

1. ✅ 编译器生成的 IR 语法正确
2. ✅ 数组初始化使用 `zeroinitializer` 是正确的
3. ✅ 第一个表达式能正确求值（-820）
4. ✅ stderr 的 "TOTAL: ..." 不影响测试结果（测试只捕获 stdout）
5. ✅ 基本的算术运算、函数调用都正常工作

---

## 🔧 工具命令

### 编译测试
```bash
cd /mnt/host/d/Pycharm/thss-2025-compiler/github-compiler
./build/compiler test/resources/functional/69_expr_eval.sy test_69.ll 2>/dev/null
clang test_69.ll test/resources/sylib.c -w -o test_69
```

### 运行测试
```bash
cat test/resources/functional/69_expr_eval.in | ./test_69 > test_69_output.txt 2>/dev/null
diff test/resources/functional/69_expr_eval.out test_69_output.txt
```

### 单个表达式测试
```bash
echo -e "1\n  1+2*   3/4-  2 *411 ;" | ./test_69
```

### 查看 IR
```bash
grep -A 50 "define i32 @eval" test_69.ll | less
```

---

## 📅 更新日志

### 2024-12-11 晚
- **关键发现**: Mac 能 100 分，Linux/WSL 只能 98 分 → **平台差异问题**
- **问题定位**: 
  - 69_expr_eval: 第2、3个表达式返回 panic!（应该是 696 和 1220）
  - 74_kmp: 返回 -1（应该返回 23）
- **IR 检查**: 
  - ✅ 数组初始化正确（`zeroinitializer`）
  - ✅ 所有 alloca 都在入口块（使用了 `addAllocaToEntry`）
  - ⚠️ 发现循环中的变量有重复后缀（`cur_op.1`, `rhs.1`, `lhs.1`）
- **尝试的修复**:
  - 添加 `-O2` 优化到 clang 编译 → 无效，仍然 98 分
  
### 明天的调试方向

1. **检查源代码问题**（不是编译器问题）
   - while 循环内声明变量：`int cur_op = ...` 在循环内
   - 虽然 alloca 被提升到入口块，但可能有其他问题
   
2. **对比 Mac 和 Linux 的 IR**
   - 让队友发送 Mac 上生成的 test_69.ll
   - 对比两个版本的 IR 差异
   
3. **检查 clang 版本差异**
   - Mac clang vs Alpine clang
   - 可能编译或优化行为不同
   
4. **运行时调试**
   - 在 test_69 中添加 printf 调试输出
   - 跟踪第二个表达式的执行流程
   
5. **栈大小问题**
   - 检查 ulimit -s（栈大小限制）
   - 尝试用 `-Wl,-z,stack-size=16777216` 增加栈空间

### 待验证的代码位置
- `69_expr_eval.sy` 第 112-116 行：第一个 while 循环
- `69_expr_eval.sy` 第 127-130 行：第二个 while 循环
- `74_kmp.sy` 整个程序：3 个 4096 元素数组

### 关键线索
✨ **Mac 能通过说明编译器逻辑完全正确！** 问题在于运行时环境或未定义行为。

