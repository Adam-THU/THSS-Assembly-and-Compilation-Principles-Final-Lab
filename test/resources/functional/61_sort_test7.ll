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
  call void @merge_sort(i32 %__tmp8, i32 %__tmp9)
  %__tmp10 = load i32, i32* %mid, align 4
  %__tmp11 = load i32, i32* %r_arg, align 4
  call void @merge_sort(i32 %__tmp10, i32 %__tmp11)
  %i = alloca i32, align 4
  %__tmp12 = load i32, i32* %l_arg, align 4
  store i32 %__tmp12, i32* %i, align 4
  %j = alloca i32, align 4
  %__tmp13 = load i32, i32* %mid, align 4
  store i32 %__tmp13, i32* %j, align 4
  %k = alloca i32, align 4
  %__tmp14 = load i32, i32* %l_arg, align 4
  store i32 %__tmp14, i32* %k, align 4
  br label %bb3
bb3:
  %__tmp15 = load i32, i32* %i, align 4
  %__tmp16 = load i32, i32* %mid, align 4
  %__tmp17 = icmp slt i32 %__tmp15, %__tmp16
  br i1 %__tmp17, label %bb6, label %bb8
bb8:
  br label %bb7
bb6:
  %__tmp18 = load i32, i32* %j, align 4
  %__tmp19 = load i32, i32* %r_arg, align 4
  %__tmp20 = icmp slt i32 %__tmp18, %__tmp19
  br label %bb7
bb7:
  %__tmp21 = phi i1 [ 0, %bb8 ], [ %__tmp20, %bb6 ]
  br i1 %__tmp21, label %bb4, label %bb5
bb4:
  %__tmp22 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp23 = load i32, i32* %i, align 4
  %__tmp24 = sext i32 %__tmp23 to i64
  %__tmp25 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp22, i64 0, i64 %__tmp24
  %__tmp26 = load i32, i32* %__tmp25, align 4
  %__tmp27 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp28 = load i32, i32* %j, align 4
  %__tmp29 = sext i32 %__tmp28 to i64
  %__tmp30 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp27, i64 0, i64 %__tmp29
  %__tmp31 = load i32, i32* %__tmp30, align 4
  %__tmp32 = icmp slt i32 %__tmp26, %__tmp31
  br i1 %__tmp32, label %bb9, label %bb10
bb9:
  %__tmp33 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp34 = load i32, i32* %k, align 4
  %__tmp35 = sext i32 %__tmp34 to i64
  %__tmp36 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp33, i64 0, i64 %__tmp35
  %__tmp37 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp38 = load i32, i32* %i, align 4
  %__tmp39 = sext i32 %__tmp38 to i64
  %__tmp40 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp37, i64 0, i64 %__tmp39
  %__tmp41 = load i32, i32* %__tmp40, align 4
  store i32 %__tmp41, i32* %__tmp36, align 4
  %__tmp42 = load i32, i32* %i, align 4
  %__tmp43 = add i32 %__tmp42, 1
  store i32 %__tmp43, i32* %i, align 4
  br label %bb11
bb10:
  %__tmp44 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp45 = load i32, i32* %k, align 4
  %__tmp46 = sext i32 %__tmp45 to i64
  %__tmp47 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp44, i64 0, i64 %__tmp46
  %__tmp48 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp49 = load i32, i32* %j, align 4
  %__tmp50 = sext i32 %__tmp49 to i64
  %__tmp51 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp48, i64 0, i64 %__tmp50
  %__tmp52 = load i32, i32* %__tmp51, align 4
  store i32 %__tmp52, i32* %__tmp47, align 4
  %__tmp53 = load i32, i32* %j, align 4
  %__tmp54 = add i32 %__tmp53, 1
  store i32 %__tmp54, i32* %j, align 4
  br label %bb11
bb11:
  %__tmp55 = load i32, i32* %k, align 4
  %__tmp56 = add i32 %__tmp55, 1
  store i32 %__tmp56, i32* %k, align 4
  br label %bb3
bb5:
  br label %bb12
bb12:
  %__tmp57 = load i32, i32* %i, align 4
  %__tmp58 = load i32, i32* %mid, align 4
  %__tmp59 = icmp slt i32 %__tmp57, %__tmp58
  br i1 %__tmp59, label %bb13, label %bb14
bb13:
  %__tmp60 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp61 = load i32, i32* %k, align 4
  %__tmp62 = sext i32 %__tmp61 to i64
  %__tmp63 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp60, i64 0, i64 %__tmp62
  %__tmp64 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp65 = load i32, i32* %i, align 4
  %__tmp66 = sext i32 %__tmp65 to i64
  %__tmp67 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp64, i64 0, i64 %__tmp66
  %__tmp68 = load i32, i32* %__tmp67, align 4
  store i32 %__tmp68, i32* %__tmp63, align 4
  %__tmp69 = load i32, i32* %i, align 4
  %__tmp70 = add i32 %__tmp69, 1
  store i32 %__tmp70, i32* %i, align 4
  %__tmp71 = load i32, i32* %k, align 4
  %__tmp72 = add i32 %__tmp71, 1
  store i32 %__tmp72, i32* %k, align 4
  br label %bb12
bb14:
  br label %bb15
bb15:
  %__tmp73 = load i32, i32* %j, align 4
  %__tmp74 = load i32, i32* %r_arg, align 4
  %__tmp75 = icmp slt i32 %__tmp73, %__tmp74
  br i1 %__tmp75, label %bb16, label %bb17
bb16:
  %__tmp76 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp77 = load i32, i32* %k, align 4
  %__tmp78 = sext i32 %__tmp77 to i64
  %__tmp79 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp76, i64 0, i64 %__tmp78
  %__tmp80 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp81 = load i32, i32* %j, align 4
  %__tmp82 = sext i32 %__tmp81 to i64
  %__tmp83 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp80, i64 0, i64 %__tmp82
  %__tmp84 = load i32, i32* %__tmp83, align 4
  store i32 %__tmp84, i32* %__tmp79, align 4
  %__tmp85 = load i32, i32* %j, align 4
  %__tmp86 = add i32 %__tmp85, 1
  store i32 %__tmp86, i32* %j, align 4
  %__tmp87 = load i32, i32* %k, align 4
  %__tmp88 = add i32 %__tmp87, 1
  store i32 %__tmp88, i32* %k, align 4
  br label %bb15
bb17:
  br label %bb18
bb18:
  %__tmp89 = load i32, i32* %l_arg, align 4
  %__tmp90 = load i32, i32* %r_arg, align 4
  %__tmp91 = icmp slt i32 %__tmp89, %__tmp90
  br i1 %__tmp91, label %bb19, label %bb20
bb19:
  %__tmp92 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp93 = load i32, i32* %l_arg, align 4
  %__tmp94 = sext i32 %__tmp93 to i64
  %__tmp95 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp92, i64 0, i64 %__tmp94
  %__tmp96 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1
  %__tmp97 = load i32, i32* %l_arg, align 4
  %__tmp98 = sext i32 %__tmp97 to i64
  %__tmp99 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp96, i64 0, i64 %__tmp98
  %__tmp100 = load i32, i32* %__tmp99, align 4
  store i32 %__tmp100, i32* %__tmp95, align 4
  %__tmp101 = load i32, i32* %l_arg, align 4
  %__tmp102 = add i32 %__tmp101, 1
  store i32 %__tmp102, i32* %l_arg, align 4
  br label %bb18
bb20:
  ret void
}

define i32 @main() {
mainEntry:
  %n = alloca i32, align 4
  %__tmp0 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp1 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp0, i64 0, i64 0
  %__tmp2 = call i32 @getarray(i32* %__tmp1)
  store i32 %__tmp2, i32* %n, align 4
  %__tmp3 = load i32, i32* %n, align 4
  call void @merge_sort(i32 0, i32 %__tmp3)
  %__tmp4 = load i32, i32* %n, align 4
  %__tmp5 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0
  %__tmp6 = getelementptr inbounds [100 x i32], [100 x i32]* %__tmp5, i64 0, i64 0
  call void @putarray(i32 %__tmp4, i32* %__tmp6)
  ret i32 0
}

