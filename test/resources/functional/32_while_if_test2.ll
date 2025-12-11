; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @ifWhile() {
ifWhileEntry:
  %a = alloca i32, align 4
  store i32 0, i32* %a, align 4
  %b = alloca i32, align 4
  store i32 3, i32* %b, align 4
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 5
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  br label %bb3
bb3:
  %__tmp2 = load i32, i32* %b, align 4
  %__tmp3 = icmp eq i32 %__tmp2, 2
  br i1 %__tmp3, label %bb4, label %bb5
bb4:
  %__tmp4 = load i32, i32* %b, align 4
  %__tmp5 = add i32 %__tmp4, 2
  store i32 %__tmp5, i32* %b, align 4
  br label %bb3
bb5:
  %__tmp6 = load i32, i32* %b, align 4
  %__tmp7 = add i32 %__tmp6, 25
  store i32 %__tmp7, i32* %b, align 4
  br label %bb2
bb1:
  br label %bb6
bb6:
  %__tmp8 = load i32, i32* %a, align 4
  %__tmp9 = icmp slt i32 %__tmp8, 5
  br i1 %__tmp9, label %bb7, label %bb8
bb7:
  %__tmp10 = load i32, i32* %b, align 4
  %__tmp11 = mul i32 %__tmp10, 2
  store i32 %__tmp11, i32* %b, align 4
  %__tmp12 = load i32, i32* %a, align 4
  %__tmp13 = add i32 %__tmp12, 1
  store i32 %__tmp13, i32* %a, align 4
  br label %bb6
bb8:
  br label %bb2
bb2:
  %__tmp14 = load i32, i32* %b, align 4
  ret i32 %__tmp14
}

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @ifWhile()
  ret i32 %__tmp0
}

