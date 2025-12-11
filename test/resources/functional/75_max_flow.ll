; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@INF = global i32 1879048192, align 4
@size = global [10 x i32] zeroinitializer, align 4
@to = global [10 x [10 x i32]] zeroinitializer, align 4
@cap = global [10 x [10 x i32]] zeroinitializer, align 4
@rev = global [10 x [10 x i32]] zeroinitializer, align 4
@used = global [10 x i32] zeroinitializer, align 4

define void @my_memset(i32* %arr, i32 %val, i32 %n) {
my_memsetEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %val_arg = alloca i32, align 4
  store i32 %val, i32* %val_arg, align 4
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* %n_arg, align 4
  %__tmp2 = icmp slt i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = load i32*, i32** %arr_arg, align 4
  %__tmp4 = load i32, i32* %i, align 4
  %__tmp5 = sext i32 %__tmp4 to i64
  %__tmp6 = getelementptr inbounds i32, i32* %__tmp3, i64 %__tmp5
  %__tmp7 = load i32, i32* %val_arg, align 4
  store i32 %__tmp7, i32* %__tmp6, align 4
  %__tmp8 = load i32, i32* %i, align 4
  %__tmp9 = add i32 %__tmp8, 1
  store i32 %__tmp9, i32* %i, align 4
  br label %bb0
bb2:
  ret void
}

define void @add_node(i32 %u, i32 %v, i32 %c) {
add_nodeEntry:
  %u_arg = alloca i32, align 4
  store i32 %u, i32* %u_arg, align 4
  %v_arg = alloca i32, align 4
  store i32 %v, i32* %v_arg, align 4
  %c_arg = alloca i32, align 4
  store i32 %c, i32* %c_arg, align 4
  %__tmp0 = load i32, i32* %u_arg, align 4
  %__tmp1 = sext i32 %__tmp0 to i64
  %__tmp2 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %__tmp1
  %__tmp3 = load i32, i32* %u_arg, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp4
  %__tmp6 = load i32, i32* %__tmp5, align 4
  %__tmp7 = sext i32 %__tmp6 to i64
  %__tmp8 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp2, i64 0, i64 %__tmp7
  %__tmp9 = load i32, i32* %v_arg, align 4
  store i32 %__tmp9, i32* %__tmp8, align 4
  %__tmp10 = load i32, i32* %u_arg, align 4
  %__tmp11 = sext i32 %__tmp10 to i64
  %__tmp12 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %__tmp11
  %__tmp13 = load i32, i32* %u_arg, align 4
  %__tmp14 = sext i32 %__tmp13 to i64
  %__tmp15 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp14
  %__tmp16 = load i32, i32* %__tmp15, align 4
  %__tmp17 = sext i32 %__tmp16 to i64
  %__tmp18 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp12, i64 0, i64 %__tmp17
  %__tmp19 = load i32, i32* %c_arg, align 4
  store i32 %__tmp19, i32* %__tmp18, align 4
  %__tmp20 = load i32, i32* %u_arg, align 4
  %__tmp21 = sext i32 %__tmp20 to i64
  %__tmp22 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %__tmp21
  %__tmp23 = load i32, i32* %u_arg, align 4
  %__tmp24 = sext i32 %__tmp23 to i64
  %__tmp25 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp24
  %__tmp26 = load i32, i32* %__tmp25, align 4
  %__tmp27 = sext i32 %__tmp26 to i64
  %__tmp28 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp22, i64 0, i64 %__tmp27
  %__tmp29 = load i32, i32* %v_arg, align 4
  %__tmp30 = sext i32 %__tmp29 to i64
  %__tmp31 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp30
  %__tmp32 = load i32, i32* %__tmp31, align 4
  store i32 %__tmp32, i32* %__tmp28, align 4
  %__tmp33 = load i32, i32* %v_arg, align 4
  %__tmp34 = sext i32 %__tmp33 to i64
  %__tmp35 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %__tmp34
  %__tmp36 = load i32, i32* %v_arg, align 4
  %__tmp37 = sext i32 %__tmp36 to i64
  %__tmp38 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp37
  %__tmp39 = load i32, i32* %__tmp38, align 4
  %__tmp40 = sext i32 %__tmp39 to i64
  %__tmp41 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp35, i64 0, i64 %__tmp40
  %__tmp42 = load i32, i32* %u_arg, align 4
  store i32 %__tmp42, i32* %__tmp41, align 4
  %__tmp43 = load i32, i32* %v_arg, align 4
  %__tmp44 = sext i32 %__tmp43 to i64
  %__tmp45 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %__tmp44
  %__tmp46 = load i32, i32* %v_arg, align 4
  %__tmp47 = sext i32 %__tmp46 to i64
  %__tmp48 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp47
  %__tmp49 = load i32, i32* %__tmp48, align 4
  %__tmp50 = sext i32 %__tmp49 to i64
  %__tmp51 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp45, i64 0, i64 %__tmp50
  store i32 0, i32* %__tmp51, align 4
  %__tmp52 = load i32, i32* %v_arg, align 4
  %__tmp53 = sext i32 %__tmp52 to i64
  %__tmp54 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %__tmp53
  %__tmp55 = load i32, i32* %v_arg, align 4
  %__tmp56 = sext i32 %__tmp55 to i64
  %__tmp57 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp56
  %__tmp58 = load i32, i32* %__tmp57, align 4
  %__tmp59 = sext i32 %__tmp58 to i64
  %__tmp60 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp54, i64 0, i64 %__tmp59
  %__tmp61 = load i32, i32* %u_arg, align 4
  %__tmp62 = sext i32 %__tmp61 to i64
  %__tmp63 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp62
  %__tmp64 = load i32, i32* %__tmp63, align 4
  store i32 %__tmp64, i32* %__tmp60, align 4
  %__tmp65 = load i32, i32* %u_arg, align 4
  %__tmp66 = sext i32 %__tmp65 to i64
  %__tmp67 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp66
  %__tmp68 = load i32, i32* %u_arg, align 4
  %__tmp69 = sext i32 %__tmp68 to i64
  %__tmp70 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp69
  %__tmp71 = load i32, i32* %__tmp70, align 4
  %__tmp72 = add i32 %__tmp71, 1
  store i32 %__tmp72, i32* %__tmp67, align 4
  %__tmp73 = load i32, i32* %v_arg, align 4
  %__tmp74 = sext i32 %__tmp73 to i64
  %__tmp75 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp74
  %__tmp76 = load i32, i32* %v_arg, align 4
  %__tmp77 = sext i32 %__tmp76 to i64
  %__tmp78 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp77
  %__tmp79 = load i32, i32* %__tmp78, align 4
  %__tmp80 = add i32 %__tmp79, 1
  store i32 %__tmp80, i32* %__tmp75, align 4
  ret void
}

define i32 @dfs(i32 %s, i32 %t, i32 %f) {
dfsEntry:
  %s_arg = alloca i32, align 4
  store i32 %s, i32* %s_arg, align 4
  %t_arg = alloca i32, align 4
  store i32 %t, i32* %t_arg, align 4
  %f_arg = alloca i32, align 4
  store i32 %f, i32* %f_arg, align 4
  %__tmp0 = load i32, i32* %s_arg, align 4
  %__tmp1 = load i32, i32* %t_arg, align 4
  %__tmp2 = icmp eq i32 %__tmp0, %__tmp1
  %i = alloca i32, align 4
  %min_f = alloca i32, align 4
  %d = alloca i32, align 4
  br i1 %__tmp2, label %bb0, label %bb1
bb0:
  %__tmp3 = load i32, i32* %f_arg, align 4
  ret i32 %__tmp3
bb1:
  br label %bb2
bb2:
  %__tmp4 = load i32, i32* %s_arg, align 4
  %__tmp5 = sext i32 %__tmp4 to i64
  %__tmp6 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i64 0, i64 %__tmp5
  store i32 1, i32* %__tmp6, align 4
  store i32 0, i32* %i, align 4
  br label %bb3
bb3:
  %__tmp7 = load i32, i32* %i, align 4
  %__tmp8 = load i32, i32* %s_arg, align 4
  %__tmp9 = sext i32 %__tmp8 to i64
  %__tmp10 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %__tmp9
  %__tmp11 = load i32, i32* %__tmp10, align 4
  %__tmp12 = icmp slt i32 %__tmp7, %__tmp11
  br i1 %__tmp12, label %bb4, label %bb5
bb4:
  %__tmp13 = load i32, i32* %s_arg, align 4
  %__tmp14 = sext i32 %__tmp13 to i64
  %__tmp15 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %__tmp14
  %__tmp16 = load i32, i32* %i, align 4
  %__tmp17 = sext i32 %__tmp16 to i64
  %__tmp18 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp15, i64 0, i64 %__tmp17
  %__tmp19 = load i32, i32* %__tmp18, align 4
  %__tmp20 = sext i32 %__tmp19 to i64
  %__tmp21 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i64 0, i64 %__tmp20
  %__tmp22 = load i32, i32* %__tmp21, align 4
  %__tmp23 = icmp ne i32 %__tmp22, 0
  br i1 %__tmp23, label %bb6, label %bb7
bb6:
  %__tmp24 = load i32, i32* %i, align 4
  %__tmp25 = add i32 %__tmp24, 1
  store i32 %__tmp25, i32* %i, align 4
  br label %bb3
bb7:
  br label %bb8
bb8:
  %__tmp26 = load i32, i32* %s_arg, align 4
  %__tmp27 = sext i32 %__tmp26 to i64
  %__tmp28 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %__tmp27
  %__tmp29 = load i32, i32* %i, align 4
  %__tmp30 = sext i32 %__tmp29 to i64
  %__tmp31 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp28, i64 0, i64 %__tmp30
  %__tmp32 = load i32, i32* %__tmp31, align 4
  %__tmp33 = icmp sle i32 %__tmp32, 0
  br i1 %__tmp33, label %bb9, label %bb10
bb9:
  %__tmp34 = load i32, i32* %i, align 4
  %__tmp35 = add i32 %__tmp34, 1
  store i32 %__tmp35, i32* %i, align 4
  br label %bb3
bb10:
  br label %bb11
bb11:
  %__tmp36 = load i32, i32* %f_arg, align 4
  %__tmp37 = load i32, i32* %s_arg, align 4
  %__tmp38 = sext i32 %__tmp37 to i64
  %__tmp39 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %__tmp38
  %__tmp40 = load i32, i32* %i, align 4
  %__tmp41 = sext i32 %__tmp40 to i64
  %__tmp42 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp39, i64 0, i64 %__tmp41
  %__tmp43 = load i32, i32* %__tmp42, align 4
  %__tmp44 = icmp slt i32 %__tmp36, %__tmp43
  br i1 %__tmp44, label %bb12, label %bb13
bb12:
  %__tmp45 = load i32, i32* %f_arg, align 4
  store i32 %__tmp45, i32* %min_f, align 4
  br label %bb14
bb13:
  %__tmp46 = load i32, i32* %s_arg, align 4
  %__tmp47 = sext i32 %__tmp46 to i64
  %__tmp48 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %__tmp47
  %__tmp49 = load i32, i32* %i, align 4
  %__tmp50 = sext i32 %__tmp49 to i64
  %__tmp51 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp48, i64 0, i64 %__tmp50
  %__tmp52 = load i32, i32* %__tmp51, align 4
  store i32 %__tmp52, i32* %min_f, align 4
  br label %bb14
bb14:
  %__tmp53 = load i32, i32* %s_arg, align 4
  %__tmp54 = sext i32 %__tmp53 to i64
  %__tmp55 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %__tmp54
  %__tmp56 = load i32, i32* %i, align 4
  %__tmp57 = sext i32 %__tmp56 to i64
  %__tmp58 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp55, i64 0, i64 %__tmp57
  %__tmp59 = load i32, i32* %__tmp58, align 4
  %__tmp60 = load i32, i32* %t_arg, align 4
  %__tmp61 = load i32, i32* %min_f, align 4
  %__tmp62 = call i32 @dfs(i32 %__tmp59, i32 %__tmp60, i32 %__tmp61)
  store i32 %__tmp62, i32* %d, align 4
  %__tmp63 = load i32, i32* %d, align 4
  %__tmp64 = icmp sgt i32 %__tmp63, 0
  br i1 %__tmp64, label %bb15, label %bb16
bb15:
  %__tmp65 = load i32, i32* %s_arg, align 4
  %__tmp66 = sext i32 %__tmp65 to i64
  %__tmp67 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %__tmp66
  %__tmp68 = load i32, i32* %i, align 4
  %__tmp69 = sext i32 %__tmp68 to i64
  %__tmp70 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp67, i64 0, i64 %__tmp69
  %__tmp71 = load i32, i32* %s_arg, align 4
  %__tmp72 = sext i32 %__tmp71 to i64
  %__tmp73 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %__tmp72
  %__tmp74 = load i32, i32* %i, align 4
  %__tmp75 = sext i32 %__tmp74 to i64
  %__tmp76 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp73, i64 0, i64 %__tmp75
  %__tmp77 = load i32, i32* %__tmp76, align 4
  %__tmp78 = load i32, i32* %d, align 4
  %__tmp79 = sub i32 %__tmp77, %__tmp78
  store i32 %__tmp79, i32* %__tmp70, align 4
  %__tmp80 = load i32, i32* %s_arg, align 4
  %__tmp81 = sext i32 %__tmp80 to i64
  %__tmp82 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %__tmp81
  %__tmp83 = load i32, i32* %i, align 4
  %__tmp84 = sext i32 %__tmp83 to i64
  %__tmp85 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp82, i64 0, i64 %__tmp84
  %__tmp86 = load i32, i32* %__tmp85, align 4
  %__tmp87 = sext i32 %__tmp86 to i64
  %__tmp88 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %__tmp87
  %__tmp89 = load i32, i32* %s_arg, align 4
  %__tmp90 = sext i32 %__tmp89 to i64
  %__tmp91 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %__tmp90
  %__tmp92 = load i32, i32* %i, align 4
  %__tmp93 = sext i32 %__tmp92 to i64
  %__tmp94 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp91, i64 0, i64 %__tmp93
  %__tmp95 = load i32, i32* %__tmp94, align 4
  %__tmp96 = sext i32 %__tmp95 to i64
  %__tmp97 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp88, i64 0, i64 %__tmp96
  %__tmp98 = load i32, i32* %s_arg, align 4
  %__tmp99 = sext i32 %__tmp98 to i64
  %__tmp100 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %__tmp99
  %__tmp101 = load i32, i32* %i, align 4
  %__tmp102 = sext i32 %__tmp101 to i64
  %__tmp103 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp100, i64 0, i64 %__tmp102
  %__tmp104 = load i32, i32* %__tmp103, align 4
  %__tmp105 = sext i32 %__tmp104 to i64
  %__tmp106 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %__tmp105
  %__tmp107 = load i32, i32* %s_arg, align 4
  %__tmp108 = sext i32 %__tmp107 to i64
  %__tmp109 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %__tmp108
  %__tmp110 = load i32, i32* %i, align 4
  %__tmp111 = sext i32 %__tmp110 to i64
  %__tmp112 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp109, i64 0, i64 %__tmp111
  %__tmp113 = load i32, i32* %__tmp112, align 4
  %__tmp114 = sext i32 %__tmp113 to i64
  %__tmp115 = getelementptr inbounds [10 x i32], [10 x i32]* %__tmp106, i64 0, i64 %__tmp114
  %__tmp116 = load i32, i32* %__tmp115, align 4
  %__tmp117 = load i32, i32* %d, align 4
  %__tmp118 = add i32 %__tmp116, %__tmp117
  store i32 %__tmp118, i32* %__tmp97, align 4
  %__tmp119 = load i32, i32* %d, align 4
  ret i32 %__tmp119
bb16:
  br label %bb17
bb17:
  %__tmp120 = load i32, i32* %i, align 4
  %__tmp121 = add i32 %__tmp120, 1
  store i32 %__tmp121, i32* %i, align 4
  br label %bb3
bb5:
  ret i32 0
}

define i32 @max_flow(i32 %s, i32 %t) {
max_flowEntry:
  %s_arg = alloca i32, align 4
  store i32 %s, i32* %s_arg, align 4
  %t_arg = alloca i32, align 4
  store i32 %t, i32* %t_arg, align 4
  %flow = alloca i32, align 4
  store i32 0, i32* %flow, align 4
  %f = alloca i32, align 4
  br label %bb0
bb0:
  br label %bb1
bb1:
  %__tmp0 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i64 0, i64 0
  call void @my_memset(i32* %__tmp0, i32 0, i32 10)
  %__tmp1 = load i32, i32* %s_arg, align 4
  %__tmp2 = load i32, i32* %t_arg, align 4
  %__tmp3 = call i32 @dfs(i32 %__tmp1, i32 %__tmp2, i32 1879048192)
  store i32 %__tmp3, i32* %f, align 4
  %__tmp4 = load i32, i32* %f, align 4
  %__tmp5 = icmp eq i32 %__tmp4, 0
  br i1 %__tmp5, label %bb3, label %bb4
bb3:
  %__tmp6 = load i32, i32* %flow, align 4
  ret i32 %__tmp6
bb4:
  br label %bb5
bb5:
  %__tmp7 = load i32, i32* %flow, align 4
  %__tmp8 = load i32, i32* %f, align 4
  %__tmp9 = add i32 %__tmp7, %__tmp8
  store i32 %__tmp9, i32* %flow, align 4
  br label %bb0
bb2:
  ret i32 0
}

define i32 @main() {
mainEntry:
  %V = alloca i32, align 4
  %E = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %V, align 4
  %__tmp1 = call i32 @getint()
  store i32 %__tmp1, i32* %E, align 4
  %__tmp2 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 0
  call void @my_memset(i32* %__tmp2, i32 0, i32 10)
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  br label %bb0
bb0:
  %__tmp3 = load i32, i32* %E, align 4
  %__tmp4 = icmp sgt i32 %__tmp3, 0
  br i1 %__tmp4, label %bb1, label %bb2
bb1:
  %__tmp5 = call i32 @getint()
  store i32 %__tmp5, i32* %u, align 4
  %__tmp6 = call i32 @getint()
  store i32 %__tmp6, i32* %v, align 4
  %__tmp7 = call i32 @getint()
  store i32 %__tmp7, i32* %c, align 4
  %__tmp8 = load i32, i32* %u, align 4
  %__tmp9 = load i32, i32* %v, align 4
  %__tmp10 = load i32, i32* %c, align 4
  call void @add_node(i32 %__tmp8, i32 %__tmp9, i32 %__tmp10)
  %__tmp11 = load i32, i32* %E, align 4
  %__tmp12 = sub i32 %__tmp11, 1
  store i32 %__tmp12, i32* %E, align 4
  br label %bb0
bb2:
  %__tmp13 = load i32, i32* %V, align 4
  %__tmp14 = call i32 @max_flow(i32 1, i32 %__tmp13)
  call void @putint(i32 %__tmp14)
  call void @putch(i32 10)
  ret i32 0
}

