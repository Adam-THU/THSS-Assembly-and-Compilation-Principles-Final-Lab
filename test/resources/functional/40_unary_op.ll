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
  %a = alloca i32, align 4
  store i32 10, i32* %a, align 4
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 0
  %__tmp2 = zext i1 %__tmp1 to i32
  %__tmp3 = icmp eq i32 %__tmp2, 0
  %__tmp4 = zext i1 %__tmp3 to i32
  %__tmp5 = icmp eq i32 %__tmp4, 0
  %__tmp6 = zext i1 %__tmp5 to i32
  %__tmp7 = sub i32 0, %__tmp6
  %__tmp8 = icmp ne i32 %__tmp7, 0
  br i1 %__tmp8, label %bb0, label %bb1
bb0:
  store i32 -1, i32* %a, align 4
  br label %bb2
bb1:
  store i32 0, i32* %a, align 4
  br label %bb2
bb2:
  %__tmp9 = load i32, i32* %a, align 4
  ret i32 %__tmp9
}

