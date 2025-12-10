; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @FourWhile() {
FourWhileEntry:
  %a = alloca i32, align 4
  store i32 5, i32* %a, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 6, i32* %b, align 4
  store i32 7, i32* %c, align 4
  %d = alloca i32, align 4
  store i32 10, i32* %d, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 20
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %a, align 4
  %__tmp3 = add i32 %__tmp2, 3
  store i32 %__tmp3, i32* %a, align 4
  br label %bb3
bb3:
  %__tmp4 = load i32, i32* %b, align 4
  %__tmp5 = icmp slt i32 %__tmp4, 10
  br i1 %__tmp5, label %bb4, label %bb5
bb4:
  %__tmp6 = load i32, i32* %b, align 4
  %__tmp7 = add i32 %__tmp6, 1
  store i32 %__tmp7, i32* %b, align 4
  br label %bb6
bb6:
  %__tmp8 = load i32, i32* %c, align 4
  %__tmp9 = icmp eq i32 %__tmp8, 7
  br i1 %__tmp9, label %bb7, label %bb8
bb7:
  %__tmp10 = load i32, i32* %c, align 4
  %__tmp11 = sub i32 %__tmp10, 1
  store i32 %__tmp11, i32* %c, align 4
  br label %bb9
bb9:
  %__tmp12 = load i32, i32* %d, align 4
  %__tmp13 = icmp slt i32 %__tmp12, 20
  br i1 %__tmp13, label %bb10, label %bb11
bb10:
  %__tmp14 = load i32, i32* %d, align 4
  %__tmp15 = add i32 %__tmp14, 3
  store i32 %__tmp15, i32* %d, align 4
  br label %bb9
bb11:
  %__tmp16 = load i32, i32* %d, align 4
  %__tmp17 = sub i32 %__tmp16, 1
  store i32 %__tmp17, i32* %d, align 4
  br label %bb6
bb8:
  %__tmp18 = load i32, i32* %c, align 4
  %__tmp19 = add i32 %__tmp18, 1
  store i32 %__tmp19, i32* %c, align 4
  br label %bb3
bb5:
  %__tmp20 = load i32, i32* %b, align 4
  %__tmp21 = sub i32 %__tmp20, 2
  store i32 %__tmp21, i32* %b, align 4
  br label %bb0
bb2:
  %__tmp22 = load i32, i32* %a, align 4
  %__tmp23 = load i32, i32* %b, align 4
  %__tmp24 = load i32, i32* %d, align 4
  %__tmp25 = add i32 %__tmp23, %__tmp24
  %__tmp26 = add i32 %__tmp22, %__tmp25
  %__tmp27 = load i32, i32* %c, align 4
  %__tmp28 = add i32 %__tmp26, %__tmp27
  ret i32 %__tmp28
}

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @FourWhile()
  ret i32 %__tmp0
}

