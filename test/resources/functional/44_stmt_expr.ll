; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@k = global i32 0, align 4
@n = global i32 10, align 4

define i32 @main() {
mainEntry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 1, i32* @k, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = icmp sle i32 %__tmp0, 9
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = add i32 %__tmp2, 1
  store i32 %__tmp3, i32* %i, align 4
  %__tmp4 = load i32, i32* @k, align 4
  %__tmp5 = add i32 %__tmp4, 1
  %__tmp6 = load i32, i32* @k, align 4
  %__tmp7 = load i32, i32* @k, align 4
  %__tmp8 = add i32 %__tmp6, %__tmp7
  store i32 %__tmp8, i32* @k, align 4
  br label %bb0
bb2:
  %__tmp9 = load i32, i32* @k, align 4
  %__tmp10 = call i32 @putint(i32 %__tmp9)
  %__tmp11 = load i32, i32* @k, align 4
  ret i32 %__tmp11
}

