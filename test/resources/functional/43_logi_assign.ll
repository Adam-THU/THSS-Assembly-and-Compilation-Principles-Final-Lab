; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global i32 0, align 4
@b = global i32 0, align 4

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* @a, align 4
  %__tmp1 = call i32 @getint()
  store i32 %__tmp1, i32* @b, align 4
  %c = alloca i32, align 4
  %__tmp2 = load i32, i32* @a, align 4
  %__tmp3 = load i32, i32* @b, align 4
  %__tmp4 = icmp eq i32 %__tmp2, %__tmp3
  br i1 %__tmp4, label %bb3, label %bb5
bb5:
  br label %bb4
bb3:
  %__tmp5 = load i32, i32* @a, align 4
  %__tmp6 = icmp ne i32 %__tmp5, 3
  br label %bb4
bb4:
  %__tmp7 = phi i1 [ 0, %bb5 ], [ %__tmp6, %bb3 ]
  br i1 %__tmp7, label %bb0, label %bb1
bb0:
  store i32 1, i32* %c, align 4
  br label %bb2
bb1:
  store i32 0, i32* %c, align 4
  br label %bb2
bb2:
  %__tmp8 = load i32, i32* %c, align 4
  ret i32 %__tmp8
}

