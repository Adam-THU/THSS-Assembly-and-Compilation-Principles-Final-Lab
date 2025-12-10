; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @defn() {
defnEntry:
  ret i32 4
}

define i32 @main() {
mainEntry:
  %a = alloca i32, align 4
  %__tmp0 = call i32 @defn()
  store i32 %__tmp0, i32* %a, align 4
  %__tmp1 = load i32, i32* %a, align 4
  ret i32 %__tmp1
}

