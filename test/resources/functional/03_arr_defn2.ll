; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global [10 x [10 x i32]] zeroinitializer, align 4

define i32 @main() {
mainEntry:
  ret i32 0
}

