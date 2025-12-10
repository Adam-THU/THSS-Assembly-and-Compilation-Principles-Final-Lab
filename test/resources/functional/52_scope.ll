; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global i32 7, align 4

define i32 @func() {
funcEntry:
  %b = alloca i32, align 4
  %__tmp0 = load i32, i32* @a, align 4
  store i32 %__tmp0, i32* %b, align 4
  %a = alloca i32, align 4
  store i32 1, i32* %a, align 4
  %__tmp1 = load i32, i32* %a, align 4
  %__tmp2 = load i32, i32* %b, align 4
  %__tmp3 = icmp eq i32 %__tmp1, %__tmp2
  br i1 %__tmp3, label %bb0, label %bb1
bb0:
  %__tmp4 = load i32, i32* %a, align 4
  %__tmp5 = add i32 %__tmp4, 1
  store i32 %__tmp5, i32* %a, align 4
  ret i32 1
bb1:
  ret i32 0
bb2:
  ret i32 0
}

define i32 @main() {
mainEntry:
  %result = alloca i32, align 4
  store i32 0, i32* %result, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 100
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = call i32 @func()
  %__tmp3 = icmp eq i32 %__tmp2, 1
  br i1 %__tmp3, label %bb3, label %bb4
bb3:
  %__tmp4 = load i32, i32* %result, align 4
  %__tmp5 = add i32 %__tmp4, 1
  store i32 %__tmp5, i32* %result, align 4
  br label %bb5
bb4:
  br label %bb5
bb5:
  %__tmp6 = load i32, i32* %i, align 4
  %__tmp7 = add i32 %__tmp6, 1
  store i32 %__tmp7, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp8 = load i32, i32* %result, align 4
  %__tmp9 = icmp slt i32 %__tmp8, 100
  br i1 %__tmp9, label %bb6, label %bb7
bb6:
  call void @putint(i32 1)
  br label %bb8
bb7:
  call void @putint(i32 0)
  br label %bb8
bb8:
  ret i32 0
}

