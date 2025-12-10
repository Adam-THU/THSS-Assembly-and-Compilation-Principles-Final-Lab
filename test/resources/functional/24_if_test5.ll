; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @if_if_Else() {
if_if_ElseEntry:
  %a = alloca i32, align 4
  store i32 5, i32* %a, align 4
  %b = alloca i32, align 4
  store i32 10, i32* %b, align 4
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 5
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32, i32* %b, align 4
  %__tmp3 = icmp eq i32 %__tmp2, 10
  br i1 %__tmp3, label %bb3, label %bb4
bb3:
  store i32 25, i32* %a, align 4
  br label %bb5
bb4:
  br label %bb5
bb5:
  br label %bb2
bb1:
  %__tmp4 = load i32, i32* %a, align 4
  %__tmp5 = add i32 %__tmp4, 15
  store i32 %__tmp5, i32* %a, align 4
  br label %bb2
bb2:
  %__tmp6 = load i32, i32* %a, align 4
  ret i32 %__tmp6
}

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @if_if_Else()
  ret i32 %__tmp0
}

