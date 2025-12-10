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
  store i32 2, i32* %a, align 4
  %b = alloca i32, align 4
  store i32 10, i32* %b, align 4
  %c = alloca i32, align 4
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = load i32, i32* %b, align 4
  %__tmp2 = icmp slt i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb0, label %bb1
bb0:
  store i32 30, i32* %c, align 4
  br label %bb2
bb1:
  %__tmp3 = load i32, i32* %a, align 4
  %__tmp4 = load i32, i32* %b, align 4
  %__tmp5 = sub i32 %__tmp3, %__tmp4
  %__tmp6 = mul i32 %__tmp5, 10
  %__tmp7 = add i32 %__tmp6, 30
  store i32 %__tmp7, i32* %c, align 4
  br label %bb2
bb2:
  %__tmp8 = load i32, i32* %c, align 4
  %__tmp9 = icmp sgt i32 %__tmp8, 1000
  br i1 %__tmp9, label %bb3, label %bb4
bb3:
  store i32 1000, i32* %c, align 4
  br label %bb5
bb4:
  br label %bb5
bb5:
  %__tmp10 = load i32, i32* %c, align 4
  ret i32 %__tmp10
}

