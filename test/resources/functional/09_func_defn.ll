; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global i32 0, align 4

define i32 @func(i32 %p) {
funcEntry:
  %p_arg = alloca i32, align 4
  store i32 %p, i32* %p_arg, align 4
  %__tmp0 = load i32, i32* %p_arg, align 4
  %__tmp1 = sub i32 %__tmp0, 1
  store i32 %__tmp1, i32* %p_arg, align 4
  %__tmp2 = load i32, i32* %p_arg, align 4
  ret i32 %__tmp2
}

define i32 @main() {
mainEntry:
  %b = alloca i32, align 4
  store i32 10, i32* @a, align 4
  %__tmp0 = load i32, i32* @a, align 4
  %__tmp1 = call i32 @func(i32 %__tmp0)
  store i32 %__tmp1, i32* %b, align 4
  %__tmp2 = load i32, i32* %b, align 4
  ret i32 %__tmp2
}

