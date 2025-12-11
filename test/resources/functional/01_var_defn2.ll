; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global i32 3, align 4
@b = global i32 5, align 4

define i32 @main() {
mainEntry:
  %a = alloca i32, align 4
  store i32 5, i32* %a, align 4
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = load i32, i32* @b, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  ret i32 %__tmp2
}

