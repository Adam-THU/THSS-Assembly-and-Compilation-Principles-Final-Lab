; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @deepWhileBr(i32 %a, i32 %b) {
deepWhileBrEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %b_arg = alloca i32, align 4
  store i32 %b, i32* %b_arg, align 4
  %c = alloca i32, align 4
  %__tmp0 = load i32, i32* %a_arg, align 4
  %__tmp1 = load i32, i32* %b_arg, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  store i32 %__tmp2, i32* %c, align 4
  br label %bb0
bb0:
  %__tmp3 = load i32, i32* %c, align 4
  %__tmp4 = icmp slt i32 %__tmp3, 75
  br i1 %__tmp4, label %bb1, label %bb2
bb1:
  %d = alloca i32, align 4
  store i32 42, i32* %d, align 4
  %__tmp5 = load i32, i32* %c, align 4
  %__tmp6 = icmp slt i32 %__tmp5, 100
  br i1 %__tmp6, label %bb3, label %bb4
bb3:
  %__tmp7 = load i32, i32* %c, align 4
  %__tmp8 = load i32, i32* %d, align 4
  %__tmp9 = add i32 %__tmp7, %__tmp8
  store i32 %__tmp9, i32* %c, align 4
  %__tmp10 = load i32, i32* %c, align 4
  %__tmp11 = icmp sgt i32 %__tmp10, 99
  br i1 %__tmp11, label %bb6, label %bb7
bb6:
  %e = alloca i32, align 4
  %__tmp12 = load i32, i32* %d, align 4
  %__tmp13 = mul i32 %__tmp12, 2
  store i32 %__tmp13, i32* %e, align 4
  %__tmp14 = load i32, i32* %e, align 4
  %__tmp15 = mul i32 %__tmp14, 2
  store i32 %__tmp15, i32* %c, align 4
  br label %bb11
bb11:
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %bb5
bb4:
  br label %bb5
bb5:
  br label %bb0
bb2:
  %__tmp16 = load i32, i32* %c, align 4
  ret i32 %__tmp16
}

define i32 @main() {
mainEntry:
  %p = alloca i32, align 4
  store i32 2, i32* %p, align 4
  %__tmp0 = load i32, i32* %p, align 4
  %__tmp1 = load i32, i32* %p, align 4
  %__tmp2 = call i32 @deepWhileBr(i32 %__tmp0, i32 %__tmp1)
  ret i32 %__tmp2
}

