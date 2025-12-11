; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define void @move(i32 %x, i32 %y) {
moveEntry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %y_arg = alloca i32, align 4
  store i32 %y, i32* %y_arg, align 4
  %__tmp0 = load i32, i32* %x_arg, align 4
  call void @putint(i32 %__tmp0)
  call void @putch(i32 32)
  %__tmp1 = load i32, i32* %y_arg, align 4
  call void @putint(i32 %__tmp1)
  call void @putch(i32 44)
  call void @putch(i32 32)
  ret void
}

define void @hanoi(i32 %n, i32 %one, i32 %two, i32 %three) {
hanoiEntry:
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %one_arg = alloca i32, align 4
  store i32 %one, i32* %one_arg, align 4
  %two_arg = alloca i32, align 4
  store i32 %two, i32* %two_arg, align 4
  %three_arg = alloca i32, align 4
  store i32 %three, i32* %three_arg, align 4
  %__tmp0 = load i32, i32* %n_arg, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 1
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32, i32* %one_arg, align 4
  %__tmp3 = load i32, i32* %three_arg, align 4
  call void @move(i32 %__tmp2, i32 %__tmp3)
  br label %bb2
bb1:
  %__tmp4 = load i32, i32* %n_arg, align 4
  %__tmp5 = sub i32 %__tmp4, 1
  %__tmp6 = load i32, i32* %one_arg, align 4
  %__tmp7 = load i32, i32* %three_arg, align 4
  %__tmp8 = load i32, i32* %two_arg, align 4
  call void @hanoi(i32 %__tmp5, i32 %__tmp6, i32 %__tmp7, i32 %__tmp8)
  %__tmp9 = load i32, i32* %one_arg, align 4
  %__tmp10 = load i32, i32* %three_arg, align 4
  call void @move(i32 %__tmp9, i32 %__tmp10)
  %__tmp11 = load i32, i32* %n_arg, align 4
  %__tmp12 = sub i32 %__tmp11, 1
  %__tmp13 = load i32, i32* %two_arg, align 4
  %__tmp14 = load i32, i32* %one_arg, align 4
  %__tmp15 = load i32, i32* %three_arg, align 4
  call void @hanoi(i32 %__tmp12, i32 %__tmp13, i32 %__tmp14, i32 %__tmp15)
  br label %bb2
bb2:
  ret void
}

define i32 @main() {
mainEntry:
  %n = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %n, align 4
  br label %bb0
bb0:
  %__tmp1 = load i32, i32* %n, align 4
  %__tmp2 = icmp sgt i32 %__tmp1, 0
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = call i32 @getint()
  call void @hanoi(i32 %__tmp3, i32 1, i32 2, i32 3)
  call void @putch(i32 10)
  %__tmp4 = load i32, i32* %n, align 4
  %__tmp5 = sub i32 %__tmp4, 1
  store i32 %__tmp5, i32* %n, align 4
  br label %bb0
bb2:
  ret i32 0
}

