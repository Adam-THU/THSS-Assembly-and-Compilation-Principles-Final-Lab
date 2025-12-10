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
  store i32 10, i32* %a, align 4
  store i32 30, i32* %b, align 4
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = sub i32 %__tmp0, -5
  %__tmp2 = load i32, i32* %b, align 4
  %__tmp3 = add i32 %__tmp1, %__tmp2
  %__tmp4 = add i32 %__tmp3, -5
  ret i32 %__tmp4
}

