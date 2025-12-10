; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @doubleWhile() {
doubleWhileEntry:
  %i = alloca i32, align 4
  store i32 5, i32* %i, align 4
  %j = alloca i32, align 4
  store i32 7, i32* %j, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 100
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = add i32 %__tmp2, 30
  store i32 %__tmp3, i32* %i, align 4
  br label %bb3
bb3:
  %__tmp4 = load i32, i32* %j, align 4
  %__tmp5 = icmp slt i32 %__tmp4, 100
  br i1 %__tmp5, label %bb4, label %bb5
bb4:
  %__tmp6 = load i32, i32* %j, align 4
  %__tmp7 = add i32 %__tmp6, 6
  store i32 %__tmp7, i32* %j, align 4
  br label %bb3
bb5:
  %__tmp8 = load i32, i32* %j, align 4
  %__tmp9 = sub i32 %__tmp8, 100
  store i32 %__tmp9, i32* %j, align 4
  br label %bb0
bb2:
  %__tmp10 = load i32, i32* %j, align 4
  ret i32 %__tmp10
}

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @doubleWhile()
  ret i32 %__tmp0
}

