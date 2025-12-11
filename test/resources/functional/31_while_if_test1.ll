; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @whileIf() {
whileIfEntry:
  %a = alloca i32, align 4
  store i32 0, i32* %a, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %b, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 100
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %a, align 4
  %__tmp3 = icmp eq i32 %__tmp2, 5
  br i1 %__tmp3, label %bb3, label %bb4
bb3:
  store i32 25, i32* %b, align 4
  br label %bb5
bb4:
  %__tmp4 = load i32, i32* %a, align 4
  %__tmp5 = icmp eq i32 %__tmp4, 10
  br i1 %__tmp5, label %bb6, label %bb7
bb6:
  store i32 42, i32* %b, align 4
  br label %bb8
bb7:
  %__tmp6 = load i32, i32* %a, align 4
  %__tmp7 = mul i32 %__tmp6, 2
  store i32 %__tmp7, i32* %b, align 4
  br label %bb8
bb8:
  br label %bb5
bb5:
  %__tmp8 = load i32, i32* %a, align 4
  %__tmp9 = add i32 %__tmp8, 1
  store i32 %__tmp9, i32* %a, align 4
  br label %bb0
bb2:
  %__tmp10 = load i32, i32* %b, align 4
  ret i32 %__tmp10
}

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @whileIf()
  ret i32 %__tmp0
}

