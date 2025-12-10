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
  %b0 = alloca i32, align 4
  %_c = alloca i32, align 4
  store i32 1, i32* %a, align 4
  store i32 2, i32* %b0, align 4
  store i32 3, i32* %_c, align 4
  %__tmp0 = load i32, i32* %b0, align 4
  %__tmp1 = load i32, i32* %_c, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  ret i32 %__tmp2
}

