; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@buf = global [2 x [100 x i32]] zeroinitializer, align 4

define void @merge_sort(i32 %l, i32 %r) {
merge_sortEntry:
  %l_arg = alloca i32, align 4
  store i32 %l, i32* %l_arg, align 4
  %r_arg = alloca i32, align 4
  store i32 %r, i32* %r_arg, align 4
  %__tmp0 = load i32, i32* %l_arg, align 4
  %__tmp1 = add i32 %__tmp0, 1
  %__tmp2 = load i32, i32* %r_arg, align 4
  %__tmp3 = icmp sge i32 %__tmp1, %__tmp2
  br i1 %__tmp3, label %bb0, label %bb1
bb0:
  ret void
bb1:
  br label %bb2
bb2:
  %mid = alloca i32, align 4
  %__tmp4 = load i32, i32* %l_arg, align 4
  %__tmp5 = load i32, i32* %r_arg, align 4
  %__tmp6 = add i32 %__tmp4, %__tmp5
  %__tmp7 = sdiv i32 %__tmp6, 2
  store i32 %__tmp7, i32* %mid, align 4
  %__tmp8 = load i32, i32* %l_arg, align 4
  %__tmp9 = load i32, i32* %mid, align 4
  %__tmp10 = call i32 @merge_sort(i32 %__tmp8, i32 %__tmp9)
  %__tmp11 = load i32, i32* %mid, align 4
  %__tmp12 = load i32, i32* %r_arg, align 4
  %__tmp13 = call i32 @merge_sort(i32 %__tmp11, i32 %__tmp12)
  %i = alloca i32, align 4
  %__tmp14 = load i32, i32* %l_arg, align 4
  store i32 %__tmp14, i32* %i, align 4
  %j = alloca i32, align 4
  %__tmp15 = load i32, i32* %mid, align 4
  store i32 %__tmp15, i32* %j, align 4
  %k = alloca i32, align 4
  %__tmp16 = load i32, i32* %l_arg, align 4
  store i32 %__tmp16, i32* %k, align 4
  br label %bb3
bb3:
  %__tmp17 = load i32, i32* %i, align 4
  %__tmp18 = load i32, i32* %mid, align 4
  %__tmp19 = icmp slt i32 %__tmp17, %__tmp18
  br i1 %__tmp19, label %bb6, label %bb8
bb8:
  br label %bb7
bb6:
  %__tmp20 = load i32, i32* %j, align 4
  %__tmp21 = load i32, i32* %r_arg, align 4
  %__tmp22 = icmp slt i32 %__tmp20, %__tmp21
  br label %bb7
bb7:
  %__tmp23 = phi i1 [ 0, %bb8 ], [ %__tmp22, %bb6 ]
  br i1 %__tmp23, label %bb4, label %bb5
bb4:
  %__tmp24 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp25 = load i32, i32* %i, align 4
  %__tmp26 = sext i32 %__tmp25 to i64
  %__tmp27 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp24, i64 0, i64 %__tmp26
  %__tmp28 = load i32, i32* %__tmp27, align 4
  %__tmp29 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp30 = load i32, i32* %j, align 4
  %__tmp31 = sext i32 %__tmp30 to i64
  %__tmp32 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp29, i64 0, i64 %__tmp31
  %__tmp33 = load i32, i32* %__tmp32, align 4
  %__tmp34 = icmp slt i32 %__tmp28, %__tmp33
  br i1 %__tmp34, label %bb9, label %bb10
bb9:
  %__tmp35 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp36 = load i32, i32* %k, align 4
  %__tmp37 = sext i32 %__tmp36 to i64
  %__tmp38 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp35, i64 0, i64 %__tmp37
  %__tmp39 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp40 = load i32, i32* %i, align 4
  %__tmp41 = sext i32 %__tmp40 to i64
  %__tmp42 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp39, i64 0, i64 %__tmp41
  %__tmp43 = load i32, i32* %__tmp42, align 4
  store i32 %__tmp43, i32* %__tmp38, align 4
  %__tmp44 = load i32, i32* %i, align 4
  %__tmp45 = add i32 %__tmp44, 1
  store i32 %__tmp45, i32* %i, align 4
  br label %bb11
bb10:
  %__tmp46 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp47 = load i32, i32* %k, align 4
  %__tmp48 = sext i32 %__tmp47 to i64
  %__tmp49 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp46, i64 0, i64 %__tmp48
  %__tmp50 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp51 = load i32, i32* %j, align 4
  %__tmp52 = sext i32 %__tmp51 to i64
  %__tmp53 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp50, i64 0, i64 %__tmp52
  %__tmp54 = load i32, i32* %__tmp53, align 4
  store i32 %__tmp54, i32* %__tmp49, align 4
  %__tmp55 = load i32, i32* %j, align 4
  %__tmp56 = add i32 %__tmp55, 1
  store i32 %__tmp56, i32* %j, align 4
  br label %bb11
bb11:
  %__tmp57 = load i32, i32* %k, align 4
  %__tmp58 = add i32 %__tmp57, 1
  store i32 %__tmp58, i32* %k, align 4
  br label %bb3
bb5:
  br label %bb12
bb12:
  %__tmp59 = load i32, i32* %i, align 4
  %__tmp60 = load i32, i32* %mid, align 4
  %__tmp61 = icmp slt i32 %__tmp59, %__tmp60
  br i1 %__tmp61, label %bb13, label %bb14
bb13:
  %__tmp62 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp63 = load i32, i32* %k, align 4
  %__tmp64 = sext i32 %__tmp63 to i64
  %__tmp65 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp62, i64 0, i64 %__tmp64
  %__tmp66 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp67 = load i32, i32* %i, align 4
  %__tmp68 = sext i32 %__tmp67 to i64
  %__tmp69 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp66, i64 0, i64 %__tmp68
  %__tmp70 = load i32, i32* %__tmp69, align 4
  store i32 %__tmp70, i32* %__tmp65, align 4
  %__tmp71 = load i32, i32* %i, align 4
  %__tmp72 = add i32 %__tmp71, 1
  store i32 %__tmp72, i32* %i, align 4
  %__tmp73 = load i32, i32* %k, align 4
  %__tmp74 = add i32 %__tmp73, 1
  store i32 %__tmp74, i32* %k, align 4
  br label %bb12
bb14:
  br label %bb15
bb15:
  %__tmp75 = load i32, i32* %j, align 4
  %__tmp76 = load i32, i32* %r_arg, align 4
  %__tmp77 = icmp slt i32 %__tmp75, %__tmp76
  br i1 %__tmp77, label %bb16, label %bb17
bb16:
  %__tmp78 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp79 = load i32, i32* %k, align 4
  %__tmp80 = sext i32 %__tmp79 to i64
  %__tmp81 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp78, i64 0, i64 %__tmp80
  %__tmp82 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp83 = load i32, i32* %j, align 4
  %__tmp84 = sext i32 %__tmp83 to i64
  %__tmp85 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp82, i64 0, i64 %__tmp84
  %__tmp86 = load i32, i32* %__tmp85, align 4
  store i32 %__tmp86, i32* %__tmp81, align 4
  %__tmp87 = load i32, i32* %j, align 4
  %__tmp88 = add i32 %__tmp87, 1
  store i32 %__tmp88, i32* %j, align 4
  %__tmp89 = load i32, i32* %k, align 4
  %__tmp90 = add i32 %__tmp89, 1
  store i32 %__tmp90, i32* %k, align 4
  br label %bb15
bb17:
  br label %bb18
bb18:
  %__tmp91 = load i32, i32* %l_arg, align 4
  %__tmp92 = load i32, i32* %r_arg, align 4
  %__tmp93 = icmp slt i32 %__tmp91, %__tmp92
  br i1 %__tmp93, label %bb19, label %bb20
bb19:
  %__tmp94 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp95 = load i32, i32* %l_arg, align 4
  %__tmp96 = sext i32 %__tmp95 to i64
  %__tmp97 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp94, i64 0, i64 %__tmp96
  %__tmp98 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp99 = load i32, i32* %l_arg, align 4
  %__tmp100 = sext i32 %__tmp99 to i64
  %__tmp101 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp98, i64 0, i64 %__tmp100
  %__tmp102 = load i32, i32* %__tmp101, align 4
  store i32 %__tmp102, i32* %__tmp97, align 4
  %__tmp103 = load i32, i32* %l_arg, align 4
  %__tmp104 = add i32 %__tmp103, 1
  store i32 %__tmp104, i32* %l_arg, align 4
  br label %bb18
bb20:
  ret void
}

define i32 @main() {
mainEntry:
  %n = alloca i32, align 4
  %__tmp0 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp1 = call i32 @getarray([100 x i32]* %__tmp0)
  store i32 %__tmp1, i32* %n, align 4
  %__tmp2 = load i32, i32* %n, align 4
  %__tmp3 = call i32 @merge_sort(i32 0, i32 %__tmp2)
  %__tmp4 = load i32, i32* %n, align 4
  %__tmp5 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp6 = call i32 @putarray(i32 %__tmp4, [100 x i32]* %__tmp5)
  ret i32 0
}

