; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@ans = global [50 x i32] zeroinitializer, align 4
@sum = global i32 0, align 4
@n = global i32 0, align 4
@row = global [50 x i32] zeroinitializer, align 4
@line1 = global [50 x i32] zeroinitializer, align 4
@line2 = global [100 x i32] zeroinitializer, align 4

define void @printans() {
printansEntry:
  %__tmp0 = load i32, i32* @sum, align 4
  %__tmp1 = add i32 %__tmp0, 1
  store i32 %__tmp1, i32* @sum, align 4
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = load i32, i32* @n, align 4
  %__tmp4 = icmp sle i32 %__tmp2, %__tmp3
  br i1 %__tmp4, label %bb1, label %bb2
bb1:
  %__tmp5 = load i32, i32* %i, align 4
  %__tmp6 = sext i32 %__tmp5 to i64
  %__tmp7 = getelementptr inbounds [50 x i32], [50 x i32]* @ans, i64 0, i64 %__tmp6
  %__tmp8 = load i32, i32* %__tmp7, align 4
  call void @putint(i32 %__tmp8)
  %__tmp9 = load i32, i32* %i, align 4
  %__tmp10 = load i32, i32* @n, align 4
  %__tmp11 = icmp eq i32 %__tmp9, %__tmp10
  br i1 %__tmp11, label %bb3, label %bb4
bb3:
  call void @putch(i32 10)
  ret void
bb4:
  call void @putch(i32 32)
  br label %bb5
bb5:
  %__tmp12 = load i32, i32* %i, align 4
  %__tmp13 = add i32 %__tmp12, 1
  store i32 %__tmp13, i32* %i, align 4
  br label %bb0
bb2:
  ret void
}

define void @f(i32 %step) {
fEntry:
  %step_arg = alloca i32, align 4
  store i32 %step, i32* %step_arg, align 4
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* @n, align 4
  %__tmp2 = icmp sle i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = load i32, i32* %i, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i64 0, i64 %__tmp4
  %__tmp6 = load i32, i32* %__tmp5, align 4
  %__tmp7 = icmp ne i32 %__tmp6, 1
  br i1 %__tmp7, label %bb6, label %bb8
bb8:
  br label %bb7
bb6:
  %__tmp8 = load i32, i32* %step_arg, align 4
  %__tmp9 = load i32, i32* %i, align 4
  %__tmp10 = add i32 %__tmp8, %__tmp9
  %__tmp11 = sext i32 %__tmp10 to i64
  %__tmp12 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i64 0, i64 %__tmp11
  %__tmp13 = load i32, i32* %__tmp12, align 4
  %__tmp14 = icmp eq i32 %__tmp13, 0
  br label %bb7
bb7:
  %__tmp15 = phi i1 [ 0, %bb8 ], [ %__tmp14, %bb6 ]
  br i1 %__tmp15, label %bb9, label %bb11
bb11:
  br label %bb10
bb9:
  %__tmp16 = load i32, i32* @n, align 4
  %__tmp17 = load i32, i32* %step_arg, align 4
  %__tmp18 = add i32 %__tmp16, %__tmp17
  %__tmp19 = load i32, i32* %i, align 4
  %__tmp20 = sub i32 %__tmp18, %__tmp19
  %__tmp21 = sext i32 %__tmp20 to i64
  %__tmp22 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i64 0, i64 %__tmp21
  %__tmp23 = load i32, i32* %__tmp22, align 4
  %__tmp24 = icmp eq i32 %__tmp23, 0
  %__tmp25 = zext i1 %__tmp24 to i32
  %__tmp26 = icmp ne i32 %__tmp25, 0
  br label %bb10
bb10:
  %__tmp27 = phi i1 [ 0, %bb11 ], [ %__tmp26, %bb9 ]
  br i1 %__tmp27, label %bb3, label %bb4
bb3:
  %__tmp28 = load i32, i32* %step_arg, align 4
  %__tmp29 = sext i32 %__tmp28 to i64
  %__tmp30 = getelementptr inbounds [50 x i32], [50 x i32]* @ans, i64 0, i64 %__tmp29
  %__tmp31 = load i32, i32* %i, align 4
  store i32 %__tmp31, i32* %__tmp30, align 4
  %__tmp32 = load i32, i32* %step_arg, align 4
  %__tmp33 = load i32, i32* @n, align 4
  %__tmp34 = icmp eq i32 %__tmp32, %__tmp33
  br i1 %__tmp34, label %bb12, label %bb13
bb12:
  call void @printans()
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp35 = load i32, i32* %i, align 4
  %__tmp36 = sext i32 %__tmp35 to i64
  %__tmp37 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i64 0, i64 %__tmp36
  store i32 1, i32* %__tmp37, align 4
  %__tmp38 = load i32, i32* %step_arg, align 4
  %__tmp39 = load i32, i32* %i, align 4
  %__tmp40 = add i32 %__tmp38, %__tmp39
  %__tmp41 = sext i32 %__tmp40 to i64
  %__tmp42 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i64 0, i64 %__tmp41
  store i32 1, i32* %__tmp42, align 4
  %__tmp43 = load i32, i32* @n, align 4
  %__tmp44 = load i32, i32* %step_arg, align 4
  %__tmp45 = add i32 %__tmp43, %__tmp44
  %__tmp46 = load i32, i32* %i, align 4
  %__tmp47 = sub i32 %__tmp45, %__tmp46
  %__tmp48 = sext i32 %__tmp47 to i64
  %__tmp49 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i64 0, i64 %__tmp48
  store i32 1, i32* %__tmp49, align 4
  %__tmp50 = load i32, i32* %step_arg, align 4
  %__tmp51 = add i32 %__tmp50, 1
  call void @f(i32 %__tmp51)
  %__tmp52 = load i32, i32* %i, align 4
  %__tmp53 = sext i32 %__tmp52 to i64
  %__tmp54 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i64 0, i64 %__tmp53
  store i32 0, i32* %__tmp54, align 4
  %__tmp55 = load i32, i32* %step_arg, align 4
  %__tmp56 = load i32, i32* %i, align 4
  %__tmp57 = add i32 %__tmp55, %__tmp56
  %__tmp58 = sext i32 %__tmp57 to i64
  %__tmp59 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i64 0, i64 %__tmp58
  store i32 0, i32* %__tmp59, align 4
  %__tmp60 = load i32, i32* @n, align 4
  %__tmp61 = load i32, i32* %step_arg, align 4
  %__tmp62 = add i32 %__tmp60, %__tmp61
  %__tmp63 = load i32, i32* %i, align 4
  %__tmp64 = sub i32 %__tmp62, %__tmp63
  %__tmp65 = sext i32 %__tmp64 to i64
  %__tmp66 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i64 0, i64 %__tmp65
  store i32 0, i32* %__tmp66, align 4
  br label %bb5
bb4:
  br label %bb5
bb5:
  %__tmp67 = load i32, i32* %i, align 4
  %__tmp68 = add i32 %__tmp67, 1
  store i32 %__tmp68, i32* %i, align 4
  br label %bb0
bb2:
  ret void
}

define i32 @main() {
mainEntry:
  %N = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %N, align 4
  br label %bb0
bb0:
  %__tmp1 = load i32, i32* %N, align 4
  %__tmp2 = icmp sgt i32 %__tmp1, 0
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = call i32 @getint()
  store i32 %__tmp3, i32* @n, align 4
  call void @f(i32 1)
  %__tmp4 = load i32, i32* %N, align 4
  %__tmp5 = sub i32 %__tmp4, 1
  store i32 %__tmp5, i32* %N, align 4
  br label %bb0
bb2:
  %__tmp6 = load i32, i32* @sum, align 4
  ret i32 %__tmp6
}

