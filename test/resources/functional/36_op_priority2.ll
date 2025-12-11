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
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 10, i32* %a, align 4
  store i32 4, i32* %b, align 4
  store i32 2, i32* %c, align 4
  store i32 2, i32* %d, align 4
  %__tmp0 = load i32, i32* %c, align 4
  %__tmp1 = load i32, i32* %a, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  %__tmp3 = load i32, i32* %b, align 4
  %__tmp4 = load i32, i32* %d, align 4
  %__tmp5 = sub i32 %__tmp3, %__tmp4
  %__tmp6 = mul i32 %__tmp2, %__tmp5
  ret i32 %__tmp6
}

