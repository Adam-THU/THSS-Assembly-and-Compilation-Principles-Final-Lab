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
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %a = alloca [10 x i32], align 4
  store [10 x i32] zeroinitializer, [10 x i32]* %a, align 4
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 10
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = sext i32 %__tmp2 to i64
  %__tmp4 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %__tmp3
  %__tmp5 = load i32, i32* %i, align 4
  %__tmp6 = add i32 %__tmp5, 1
  store i32 %__tmp6, i32* %__tmp4, align 4
  %__tmp7 = load i32, i32* %i, align 4
  %__tmp8 = add i32 %__tmp7, 1
  store i32 %__tmp8, i32* %i, align 4
  br label %bb0
bb2:
  %x = alloca i32, align 4
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  %mid = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 10, i32* %n, align 4
  %__tmp9 = call i32 @getint()
  store i32 %__tmp9, i32* %x, align 4
  %__tmp10 = load i32, i32* %n, align 4
  %__tmp11 = sub i32 %__tmp10, 1
  store i32 %__tmp11, i32* %high, align 4
  store i32 0, i32* %low, align 4
  %__tmp12 = load i32, i32* %high, align 4
  %__tmp13 = load i32, i32* %low, align 4
  %__tmp14 = add i32 %__tmp12, %__tmp13
  %__tmp15 = sdiv i32 %__tmp14, 2
  store i32 %__tmp15, i32* %mid, align 4
  br label %bb3
bb3:
  %__tmp16 = load i32, i32* %mid, align 4
  %__tmp17 = sext i32 %__tmp16 to i64
  %__tmp18 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %__tmp17
  %__tmp19 = load i32, i32* %__tmp18, align 4
  %__tmp20 = load i32, i32* %x, align 4
  %__tmp21 = icmp ne i32 %__tmp19, %__tmp20
  br i1 %__tmp21, label %bb6, label %bb8
bb8:
  br label %bb7
bb6:
  %__tmp22 = load i32, i32* %low, align 4
  %__tmp23 = load i32, i32* %high, align 4
  %__tmp24 = icmp slt i32 %__tmp22, %__tmp23
  br label %bb7
bb7:
  %__tmp25 = phi i1 [ 0, %bb8 ], [ %__tmp24, %bb6 ]
  br i1 %__tmp25, label %bb4, label %bb5
bb4:
  %__tmp26 = load i32, i32* %high, align 4
  %__tmp27 = load i32, i32* %low, align 4
  %__tmp28 = add i32 %__tmp26, %__tmp27
  %__tmp29 = sdiv i32 %__tmp28, 2
  store i32 %__tmp29, i32* %mid, align 4
  %__tmp30 = load i32, i32* %x, align 4
  %__tmp31 = load i32, i32* %mid, align 4
  %__tmp32 = sext i32 %__tmp31 to i64
  %__tmp33 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %__tmp32
  %__tmp34 = load i32, i32* %__tmp33, align 4
  %__tmp35 = icmp slt i32 %__tmp30, %__tmp34
  br i1 %__tmp35, label %bb9, label %bb10
bb9:
  %__tmp36 = load i32, i32* %mid, align 4
  %__tmp37 = sub i32 %__tmp36, 1
  store i32 %__tmp37, i32* %high, align 4
  br label %bb11
bb10:
  %__tmp38 = load i32, i32* %mid, align 4
  %__tmp39 = add i32 %__tmp38, 1
  store i32 %__tmp39, i32* %low, align 4
  br label %bb11
bb11:
  br label %bb3
bb5:
  %__tmp40 = load i32, i32* %x, align 4
  %__tmp41 = load i32, i32* %mid, align 4
  %__tmp42 = sext i32 %__tmp41 to i64
  %__tmp43 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %__tmp42
  %__tmp44 = load i32, i32* %__tmp43, align 4
  %__tmp45 = icmp eq i32 %__tmp40, %__tmp44
  br i1 %__tmp45, label %bb12, label %bb13
bb12:
  %__tmp46 = load i32, i32* %x, align 4
  call void @putint(i32 %__tmp46)
  br label %bb14
bb13:
  store i32 0, i32* %x, align 4
  %__tmp47 = load i32, i32* %x, align 4
  call void @putint(i32 %__tmp47)
  br label %bb14
bb14:
  store i32 10, i32* %x, align 4
  %__tmp48 = load i32, i32* %x, align 4
  call void @putch(i32 %__tmp48)
  ret i32 0
}

