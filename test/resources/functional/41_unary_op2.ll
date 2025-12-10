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
  %b = alloca i32, align 4
  store i32 56, i32* %a, align 4
  store i32 4, i32* %b, align 4
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = sub i32 %__tmp0, -4
  %__tmp2 = load i32, i32* %b, align 4
  %__tmp3 = add i32 %__tmp1, %__tmp2
  store i32 %__tmp3, i32* %a, align 4
  %__tmp4 = load i32, i32* %a, align 4
  %__tmp5 = icmp eq i32 %__tmp4, 0
  %__tmp6 = zext i1 %__tmp5 to i32
  %__tmp7 = icmp eq i32 %__tmp6, 0
  %__tmp8 = zext i1 %__tmp7 to i32
  %__tmp9 = icmp eq i32 %__tmp8, 0
  %__tmp10 = zext i1 %__tmp9 to i32
  %__tmp11 = sub i32 0, %__tmp10
  %__tmp12 = trunc i32 %__tmp11 to i1
  br i1 %__tmp12, label %bb0, label %bb1
bb0:
  store i32 -1, i32* %a, align 4
  br label %bb2
bb1:
  %__tmp13 = load i32, i32* %b, align 4
  %__tmp14 = add i32 0, %__tmp13
  store i32 %__tmp14, i32* %a, align 4
  br label %bb2
bb2:
  %__tmp15 = load i32, i32* %a, align 4
  call void @putint(i32 %__tmp15)
  ret i32 0
}

