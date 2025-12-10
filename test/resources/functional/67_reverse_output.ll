; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define void @reverse(i32 %n) {
reverseEntry:
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %next = alloca i32, align 4
  %__tmp0 = load i32, i32* %n_arg, align 4
  %__tmp1 = icmp sle i32 %__tmp0, 1
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = call i32 @getint()
  store i32 %__tmp2, i32* %next, align 4
  %__tmp3 = load i32, i32* %next, align 4
  call void @putint(i32 %__tmp3)
  br label %bb2
bb1:
  %__tmp4 = call i32 @getint()
  store i32 %__tmp4, i32* %next, align 4
  %__tmp5 = load i32, i32* %n_arg, align 4
  %__tmp6 = sub i32 %__tmp5, 1
  %__tmp7 = call i32 @reverse(i32 %__tmp6)
  %__tmp8 = load i32, i32* %next, align 4
  call void @putint(i32 %__tmp8)
  br label %bb2
bb2:
  ret void
}

define i32 @main() {
mainEntry:
  %i = alloca i32, align 4
  store i32 200, i32* %i, align 4
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = call i32 @reverse(i32 %__tmp0)
  ret i32 0
}

