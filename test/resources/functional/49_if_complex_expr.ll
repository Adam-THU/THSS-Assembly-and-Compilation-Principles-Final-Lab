; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @main() {
mainEntry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 5, i32* %a, align 4
  store i32 5, i32* %b, align 4
  store i32 1, i32* %c, align 4
  store i32 -2, i32* %d, align 4
  store i32 2, i32* %result, align 4
  %__tmp0 = load i32, i32* %d, align 4
  %__tmp1 = mul i32 %__tmp0, 1
  %__tmp2 = sdiv i32 %__tmp1, 2
  %__tmp3 = icmp slt i32 %__tmp2, 0
  br i1 %__tmp3, label %bb5, label %bb3
bb5:
  br label %bb4
bb3:
  %__tmp4 = load i32, i32* %a, align 4
  %__tmp5 = load i32, i32* %b, align 4
  %__tmp6 = sub i32 %__tmp4, %__tmp5
  %__tmp7 = icmp ne i32 %__tmp6, 0
  br i1 %__tmp7, label %bb6, label %bb8
bb8:
  br label %bb7
bb6:
  %__tmp8 = load i32, i32* %c, align 4
  %__tmp9 = add i32 %__tmp8, 3
  %__tmp10 = srem i32 %__tmp9, 2
  %__tmp11 = icmp ne i32 %__tmp10, 0
  br label %bb7
bb7:
  %__tmp12 = phi i1 [ 0, %bb8 ], [ %__tmp11, %bb6 ]
  br label %bb4
bb4:
  %__tmp13 = phi i1 [ 1, %bb5 ], [ %__tmp12, %bb7 ]
  br i1 %__tmp13, label %bb0, label %bb1
bb0:
  %__tmp14 = load i32, i32* %result, align 4
  call void @putint(i32 %__tmp14)
  br label %bb2
bb1:
  br label %bb2
bb2:
  %__tmp15 = load i32, i32* %d, align 4
  %__tmp16 = srem i32 %__tmp15, 2
  %__tmp17 = add i32 %__tmp16, 67
  %__tmp18 = icmp slt i32 %__tmp17, 0
  br i1 %__tmp18, label %bb14, label %bb12
bb14:
  br label %bb13
bb12:
  %__tmp19 = load i32, i32* %a, align 4
  %__tmp20 = load i32, i32* %b, align 4
  %__tmp21 = sub i32 %__tmp19, %__tmp20
  %__tmp22 = icmp ne i32 %__tmp21, 0
  br i1 %__tmp22, label %bb15, label %bb17
bb17:
  br label %bb16
bb15:
  %__tmp23 = load i32, i32* %c, align 4
  %__tmp24 = add i32 %__tmp23, 2
  %__tmp25 = srem i32 %__tmp24, 2
  %__tmp26 = icmp ne i32 %__tmp25, 0
  br label %bb16
bb16:
  %__tmp27 = phi i1 [ 0, %bb17 ], [ %__tmp26, %bb15 ]
  br label %bb13
bb13:
  %__tmp28 = phi i1 [ 1, %bb14 ], [ %__tmp27, %bb16 ]
  br i1 %__tmp28, label %bb9, label %bb10
bb9:
  store i32 4, i32* %result, align 4
  %__tmp29 = load i32, i32* %result, align 4
  call void @putint(i32 %__tmp29)
  br label %bb11
bb10:
  br label %bb11
bb11:
  ret i32 0
}

