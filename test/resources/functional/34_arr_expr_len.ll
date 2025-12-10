; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@N = global i32 -1, align 4
@arr = global [6 x i32] [i32 1, i32 2, i32 33, i32 4, i32 5, i32 6], align 4

define i32 @main() {
mainEntry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 6
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %sum, align 4
  %__tmp3 = load i32, i32* %i, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds [6 x i32], [6 x i32]* @arr, i64 0, i64 %__tmp4
  %__tmp6 = load i32, i32* %__tmp5, align 4
  %__tmp7 = add i32 %__tmp2, %__tmp6
  store i32 %__tmp7, i32* %sum, align 4
  %__tmp8 = load i32, i32* %i, align 4
  %__tmp9 = add i32 %__tmp8, 1
  store i32 %__tmp9, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp10 = load i32, i32* %sum, align 4
  ret i32 %__tmp10
}

