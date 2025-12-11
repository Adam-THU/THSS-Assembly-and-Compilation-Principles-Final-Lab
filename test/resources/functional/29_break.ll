; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @main() {
mainEntry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 100
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = icmp eq i32 %__tmp2, 50
  br i1 %__tmp3, label %bb3, label %bb4
bb3:
  br label %bb2
bb4:
  br label %bb5
bb5:
  %__tmp4 = load i32, i32* %sum, align 4
  %__tmp5 = load i32, i32* %i, align 4
  %__tmp6 = add i32 %__tmp4, %__tmp5
  store i32 %__tmp6, i32* %sum, align 4
  %__tmp7 = load i32, i32* %i, align 4
  %__tmp8 = add i32 %__tmp7, 1
  store i32 %__tmp8, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp9 = load i32, i32* %sum, align 4
  ret i32 %__tmp9
}

