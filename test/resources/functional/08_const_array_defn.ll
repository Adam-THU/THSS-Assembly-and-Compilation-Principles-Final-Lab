; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 4

define i32 @main() {
mainEntry:
  %__tmp0 = getelementptr inbounds [5 x i32], [5 x i32]* @a, i64 0, i64 4
  %__tmp1 = load i32, i32* %__tmp0, align 4
  ret i32 %__tmp1
}

