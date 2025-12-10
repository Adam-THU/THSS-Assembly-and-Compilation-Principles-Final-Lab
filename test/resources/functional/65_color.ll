; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@maxn = global i32 18, align 4
@mod = global i32 1000000007, align 4
@dp = global [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]] zeroinitializer, align 4
@list = global [200 x i32] zeroinitializer, align 4
@cns = global [20 x i32] zeroinitializer, align 4

define i32 @equal(i32 %a, i32 %b) {
equalEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %b_arg = alloca i32, align 4
  store i32 %b, i32* %b_arg, align 4
  %__tmp0 = load i32, i32* %a_arg, align 4
  %__tmp1 = load i32, i32* %b_arg, align 4
  %__tmp2 = icmp eq i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb0, label %bb1
bb0:
  ret i32 1
bb1:
  br label %bb2
bb2:
  ret i32 0
}

define i32 @dfs(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %last) {
dfsEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %b_arg = alloca i32, align 4
  store i32 %b, i32* %b_arg, align 4
  %c_arg = alloca i32, align 4
  store i32 %c, i32* %c_arg, align 4
  %d_arg = alloca i32, align 4
  store i32 %d, i32* %d_arg, align 4
  %e_arg = alloca i32, align 4
  store i32 %e, i32* %e_arg, align 4
  %last_arg = alloca i32, align 4
  store i32 %last, i32* %last_arg, align 4
  %__tmp0 = load i32, i32* %a_arg, align 4
  %__tmp1 = sext i32 %__tmp0 to i64
  %__tmp2 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %__tmp1
  %__tmp3 = load i32, i32* %b_arg, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %__tmp2, i64 0, i64 %__tmp4
  %__tmp6 = load i32, i32* %c_arg, align 4
  %__tmp7 = sext i32 %__tmp6 to i64
  %__tmp8 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %__tmp5, i64 0, i64 %__tmp7
  %__tmp9 = load i32, i32* %d_arg, align 4
  %__tmp10 = sext i32 %__tmp9 to i64
  %__tmp11 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %__tmp8, i64 0, i64 %__tmp10
  %__tmp12 = load i32, i32* %e_arg, align 4
  %__tmp13 = sext i32 %__tmp12 to i64
  %__tmp14 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %__tmp11, i64 0, i64 %__tmp13
  %__tmp15 = load i32, i32* %last_arg, align 4
  %__tmp16 = sext i32 %__tmp15 to i64
  %__tmp17 = getelementptr inbounds [7 x i32], [7 x i32]* %__tmp14, i64 0, i64 %__tmp16
  %__tmp18 = load i32, i32* %__tmp17, align 4
  %__tmp19 = icmp ne i32 %__tmp18, -1
  br i1 %__tmp19, label %bb0, label %bb1
bb0:
  %__tmp20 = load i32, i32* %a_arg, align 4
  %__tmp21 = sext i32 %__tmp20 to i64
  %__tmp22 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %__tmp21
  %__tmp23 = load i32, i32* %b_arg, align 4
  %__tmp24 = sext i32 %__tmp23 to i64
  %__tmp25 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %__tmp22, i64 0, i64 %__tmp24
  %__tmp26 = load i32, i32* %c_arg, align 4
  %__tmp27 = sext i32 %__tmp26 to i64
  %__tmp28 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %__tmp25, i64 0, i64 %__tmp27
  %__tmp29 = load i32, i32* %d_arg, align 4
  %__tmp30 = sext i32 %__tmp29 to i64
  %__tmp31 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %__tmp28, i64 0, i64 %__tmp30
  %__tmp32 = load i32, i32* %e_arg, align 4
  %__tmp33 = sext i32 %__tmp32 to i64
  %__tmp34 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %__tmp31, i64 0, i64 %__tmp33
  %__tmp35 = load i32, i32* %last_arg, align 4
  %__tmp36 = sext i32 %__tmp35 to i64
  %__tmp37 = getelementptr inbounds [7 x i32], [7 x i32]* %__tmp34, i64 0, i64 %__tmp36
  %__tmp38 = load i32, i32* %__tmp37, align 4
  ret i32 %__tmp38
bb1:
  br label %bb2
bb2:
  %__tmp39 = load i32, i32* %a_arg, align 4
  %__tmp40 = load i32, i32* %b_arg, align 4
  %__tmp41 = add i32 %__tmp39, %__tmp40
  %__tmp42 = load i32, i32* %c_arg, align 4
  %__tmp43 = add i32 %__tmp41, %__tmp42
  %__tmp44 = load i32, i32* %d_arg, align 4
  %__tmp45 = add i32 %__tmp43, %__tmp44
  %__tmp46 = load i32, i32* %e_arg, align 4
  %__tmp47 = add i32 %__tmp45, %__tmp46
  %__tmp48 = icmp eq i32 %__tmp47, 0
  br i1 %__tmp48, label %bb3, label %bb4
bb3:
  ret i32 1
bb4:
  br label %bb5
bb5:
  %ans = alloca i32, align 4
  store i32 0, i32* %ans, align 4
  %__tmp49 = load i32, i32* %a_arg, align 4
  %__tmp50 = trunc i32 %__tmp49 to i1
  br i1 %__tmp50, label %bb6, label %bb7
bb6:
  %__tmp51 = load i32, i32* %ans, align 4
  %__tmp52 = load i32, i32* %a_arg, align 4
  %__tmp53 = load i32, i32* %last_arg, align 4
  %__tmp54 = call i32 @equal(i32 %__tmp53, i32 2)
  %__tmp55 = sub i32 %__tmp52, %__tmp54
  %__tmp56 = load i32, i32* %a_arg, align 4
  %__tmp57 = sub i32 %__tmp56, 1
  %__tmp58 = load i32, i32* %b_arg, align 4
  %__tmp59 = load i32, i32* %c_arg, align 4
  %__tmp60 = load i32, i32* %d_arg, align 4
  %__tmp61 = load i32, i32* %e_arg, align 4
  %__tmp62 = call i32 @dfs(i32 %__tmp57, i32 %__tmp58, i32 %__tmp59, i32 %__tmp60, i32 %__tmp61, i32 1)
  %__tmp63 = mul i32 %__tmp55, %__tmp62
  %__tmp64 = add i32 %__tmp51, %__tmp63
  %__tmp65 = srem i32 %__tmp64, 1000000007
  store i32 %__tmp65, i32* %ans, align 4
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp66 = load i32, i32* %b_arg, align 4
  %__tmp67 = trunc i32 %__tmp66 to i1
  br i1 %__tmp67, label %bb9, label %bb10
bb9:
  %__tmp68 = load i32, i32* %ans, align 4
  %__tmp69 = load i32, i32* %b_arg, align 4
  %__tmp70 = load i32, i32* %last_arg, align 4
  %__tmp71 = call i32 @equal(i32 %__tmp70, i32 3)
  %__tmp72 = sub i32 %__tmp69, %__tmp71
  %__tmp73 = load i32, i32* %a_arg, align 4
  %__tmp74 = add i32 %__tmp73, 1
  %__tmp75 = load i32, i32* %b_arg, align 4
  %__tmp76 = sub i32 %__tmp75, 1
  %__tmp77 = load i32, i32* %c_arg, align 4
  %__tmp78 = load i32, i32* %d_arg, align 4
  %__tmp79 = load i32, i32* %e_arg, align 4
  %__tmp80 = call i32 @dfs(i32 %__tmp74, i32 %__tmp76, i32 %__tmp77, i32 %__tmp78, i32 %__tmp79, i32 2)
  %__tmp81 = mul i32 %__tmp72, %__tmp80
  %__tmp82 = add i32 %__tmp68, %__tmp81
  %__tmp83 = srem i32 %__tmp82, 1000000007
  store i32 %__tmp83, i32* %ans, align 4
  br label %bb11
bb10:
  br label %bb11
bb11:
  %__tmp84 = load i32, i32* %c_arg, align 4
  %__tmp85 = trunc i32 %__tmp84 to i1
  br i1 %__tmp85, label %bb12, label %bb13
bb12:
  %__tmp86 = load i32, i32* %ans, align 4
  %__tmp87 = load i32, i32* %c_arg, align 4
  %__tmp88 = load i32, i32* %last_arg, align 4
  %__tmp89 = call i32 @equal(i32 %__tmp88, i32 4)
  %__tmp90 = sub i32 %__tmp87, %__tmp89
  %__tmp91 = load i32, i32* %a_arg, align 4
  %__tmp92 = load i32, i32* %b_arg, align 4
  %__tmp93 = add i32 %__tmp92, 1
  %__tmp94 = load i32, i32* %c_arg, align 4
  %__tmp95 = sub i32 %__tmp94, 1
  %__tmp96 = load i32, i32* %d_arg, align 4
  %__tmp97 = load i32, i32* %e_arg, align 4
  %__tmp98 = call i32 @dfs(i32 %__tmp91, i32 %__tmp93, i32 %__tmp95, i32 %__tmp96, i32 %__tmp97, i32 3)
  %__tmp99 = mul i32 %__tmp90, %__tmp98
  %__tmp100 = add i32 %__tmp86, %__tmp99
  %__tmp101 = srem i32 %__tmp100, 1000000007
  store i32 %__tmp101, i32* %ans, align 4
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp102 = load i32, i32* %d_arg, align 4
  %__tmp103 = trunc i32 %__tmp102 to i1
  br i1 %__tmp103, label %bb15, label %bb16
bb15:
  %__tmp104 = load i32, i32* %ans, align 4
  %__tmp105 = load i32, i32* %d_arg, align 4
  %__tmp106 = load i32, i32* %last_arg, align 4
  %__tmp107 = call i32 @equal(i32 %__tmp106, i32 5)
  %__tmp108 = sub i32 %__tmp105, %__tmp107
  %__tmp109 = load i32, i32* %a_arg, align 4
  %__tmp110 = load i32, i32* %b_arg, align 4
  %__tmp111 = load i32, i32* %c_arg, align 4
  %__tmp112 = add i32 %__tmp111, 1
  %__tmp113 = load i32, i32* %d_arg, align 4
  %__tmp114 = sub i32 %__tmp113, 1
  %__tmp115 = load i32, i32* %e_arg, align 4
  %__tmp116 = call i32 @dfs(i32 %__tmp109, i32 %__tmp110, i32 %__tmp112, i32 %__tmp114, i32 %__tmp115, i32 4)
  %__tmp117 = mul i32 %__tmp108, %__tmp116
  %__tmp118 = add i32 %__tmp104, %__tmp117
  %__tmp119 = srem i32 %__tmp118, 1000000007
  store i32 %__tmp119, i32* %ans, align 4
  br label %bb17
bb16:
  br label %bb17
bb17:
  %__tmp120 = load i32, i32* %e_arg, align 4
  %__tmp121 = trunc i32 %__tmp120 to i1
  br i1 %__tmp121, label %bb18, label %bb19
bb18:
  %__tmp122 = load i32, i32* %ans, align 4
  %__tmp123 = load i32, i32* %e_arg, align 4
  %__tmp124 = load i32, i32* %a_arg, align 4
  %__tmp125 = load i32, i32* %b_arg, align 4
  %__tmp126 = load i32, i32* %c_arg, align 4
  %__tmp127 = load i32, i32* %d_arg, align 4
  %__tmp128 = add i32 %__tmp127, 1
  %__tmp129 = load i32, i32* %e_arg, align 4
  %__tmp130 = sub i32 %__tmp129, 1
  %__tmp131 = call i32 @dfs(i32 %__tmp124, i32 %__tmp125, i32 %__tmp126, i32 %__tmp128, i32 %__tmp130, i32 5)
  %__tmp132 = mul i32 %__tmp123, %__tmp131
  %__tmp133 = add i32 %__tmp122, %__tmp132
  %__tmp134 = srem i32 %__tmp133, 1000000007
  store i32 %__tmp134, i32* %ans, align 4
  br label %bb20
bb19:
  br label %bb20
bb20:
  %__tmp135 = load i32, i32* %a_arg, align 4
  %__tmp136 = sext i32 %__tmp135 to i64
  %__tmp137 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %__tmp136
  %__tmp138 = load i32, i32* %b_arg, align 4
  %__tmp139 = sext i32 %__tmp138 to i64
  %__tmp140 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %__tmp137, i64 0, i64 %__tmp139
  %__tmp141 = load i32, i32* %c_arg, align 4
  %__tmp142 = sext i32 %__tmp141 to i64
  %__tmp143 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %__tmp140, i64 0, i64 %__tmp142
  %__tmp144 = load i32, i32* %d_arg, align 4
  %__tmp145 = sext i32 %__tmp144 to i64
  %__tmp146 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %__tmp143, i64 0, i64 %__tmp145
  %__tmp147 = load i32, i32* %e_arg, align 4
  %__tmp148 = sext i32 %__tmp147 to i64
  %__tmp149 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %__tmp146, i64 0, i64 %__tmp148
  %__tmp150 = load i32, i32* %last_arg, align 4
  %__tmp151 = sext i32 %__tmp150 to i64
  %__tmp152 = getelementptr inbounds [7 x i32], [7 x i32]* %__tmp149, i64 0, i64 %__tmp151
  %__tmp153 = load i32, i32* %ans, align 4
  %__tmp154 = srem i32 %__tmp153, 1000000007
  store i32 %__tmp154, i32* %__tmp152, align 4
  %__tmp155 = load i32, i32* %a_arg, align 4
  %__tmp156 = sext i32 %__tmp155 to i64
  %__tmp157 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %__tmp156
  %__tmp158 = load i32, i32* %b_arg, align 4
  %__tmp159 = sext i32 %__tmp158 to i64
  %__tmp160 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %__tmp157, i64 0, i64 %__tmp159
  %__tmp161 = load i32, i32* %c_arg, align 4
  %__tmp162 = sext i32 %__tmp161 to i64
  %__tmp163 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %__tmp160, i64 0, i64 %__tmp162
  %__tmp164 = load i32, i32* %d_arg, align 4
  %__tmp165 = sext i32 %__tmp164 to i64
  %__tmp166 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %__tmp163, i64 0, i64 %__tmp165
  %__tmp167 = load i32, i32* %e_arg, align 4
  %__tmp168 = sext i32 %__tmp167 to i64
  %__tmp169 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %__tmp166, i64 0, i64 %__tmp168
  %__tmp170 = load i32, i32* %last_arg, align 4
  %__tmp171 = sext i32 %__tmp170 to i64
  %__tmp172 = getelementptr inbounds [7 x i32], [7 x i32]* %__tmp169, i64 0, i64 %__tmp171
  %__tmp173 = load i32, i32* %__tmp172, align 4
  ret i32 %__tmp173
}

define i32 @main() {
mainEntry:
  %n = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %n, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp1 = load i32, i32* %i, align 4
  %__tmp2 = icmp slt i32 %__tmp1, 18
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %j = alloca i32, align 4
  store i32 0, i32* %j, align 4
  br label %bb3
bb3:
  %__tmp3 = load i32, i32* %j, align 4
  %__tmp4 = icmp slt i32 %__tmp3, 18
  br i1 %__tmp4, label %bb4, label %bb5
bb4:
  %k = alloca i32, align 4
  store i32 0, i32* %k, align 4
  br label %bb6
bb6:
  %__tmp5 = load i32, i32* %k, align 4
  %__tmp6 = icmp slt i32 %__tmp5, 18
  br i1 %__tmp6, label %bb7, label %bb8
bb7:
  %l = alloca i32, align 4
  store i32 0, i32* %l, align 4
  br label %bb9
bb9:
  %__tmp7 = load i32, i32* %l, align 4
  %__tmp8 = icmp slt i32 %__tmp7, 18
  br i1 %__tmp8, label %bb10, label %bb11
bb10:
  %m = alloca i32, align 4
  store i32 0, i32* %m, align 4
  br label %bb12
bb12:
  %__tmp9 = load i32, i32* %m, align 4
  %__tmp10 = icmp slt i32 %__tmp9, 18
  br i1 %__tmp10, label %bb13, label %bb14
bb13:
  %h = alloca i32, align 4
  store i32 0, i32* %h, align 4
  br label %bb15
bb15:
  %__tmp11 = load i32, i32* %h, align 4
  %__tmp12 = icmp slt i32 %__tmp11, 7
  br i1 %__tmp12, label %bb16, label %bb17
bb16:
  %__tmp13 = load i32, i32* %i, align 4
  %__tmp14 = sext i32 %__tmp13 to i64
  %__tmp15 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %__tmp14
  %__tmp16 = load i32, i32* %j, align 4
  %__tmp17 = sext i32 %__tmp16 to i64
  %__tmp18 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %__tmp15, i64 0, i64 %__tmp17
  %__tmp19 = load i32, i32* %k, align 4
  %__tmp20 = sext i32 %__tmp19 to i64
  %__tmp21 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %__tmp18, i64 0, i64 %__tmp20
  %__tmp22 = load i32, i32* %l, align 4
  %__tmp23 = sext i32 %__tmp22 to i64
  %__tmp24 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %__tmp21, i64 0, i64 %__tmp23
  %__tmp25 = load i32, i32* %m, align 4
  %__tmp26 = sext i32 %__tmp25 to i64
  %__tmp27 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %__tmp24, i64 0, i64 %__tmp26
  %__tmp28 = load i32, i32* %h, align 4
  %__tmp29 = sext i32 %__tmp28 to i64
  %__tmp30 = getelementptr inbounds [7 x i32], [7 x i32]* %__tmp27, i64 0, i64 %__tmp29
  store i32 -1, i32* %__tmp30, align 4
  %__tmp31 = load i32, i32* %h, align 4
  %__tmp32 = add i32 %__tmp31, 1
  store i32 %__tmp32, i32* %h, align 4
  br label %bb15
bb17:
  %__tmp33 = load i32, i32* %m, align 4
  %__tmp34 = add i32 %__tmp33, 1
  store i32 %__tmp34, i32* %m, align 4
  br label %bb12
bb14:
  %__tmp35 = load i32, i32* %l, align 4
  %__tmp36 = add i32 %__tmp35, 1
  store i32 %__tmp36, i32* %l, align 4
  br label %bb9
bb11:
  %__tmp37 = load i32, i32* %k, align 4
  %__tmp38 = add i32 %__tmp37, 1
  store i32 %__tmp38, i32* %k, align 4
  br label %bb6
bb8:
  %__tmp39 = load i32, i32* %j, align 4
  %__tmp40 = add i32 %__tmp39, 1
  store i32 %__tmp40, i32* %j, align 4
  br label %bb3
bb5:
  %__tmp41 = load i32, i32* %i, align 4
  %__tmp42 = add i32 %__tmp41, 1
  store i32 %__tmp42, i32* %i, align 4
  br label %bb0
bb2:
  store i32 0, i32* %i, align 4
  br label %bb18
bb18:
  %__tmp43 = load i32, i32* %i, align 4
  %__tmp44 = load i32, i32* %n, align 4
  %__tmp45 = icmp slt i32 %__tmp43, %__tmp44
  br i1 %__tmp45, label %bb19, label %bb20
bb19:
  %__tmp46 = load i32, i32* %i, align 4
  %__tmp47 = sext i32 %__tmp46 to i64
  %__tmp48 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i64 0, i64 %__tmp47
  %__tmp49 = call i32 @getint()
  store i32 %__tmp49, i32* %__tmp48, align 4
  %__tmp50 = load i32, i32* %i, align 4
  %__tmp51 = sext i32 %__tmp50 to i64
  %__tmp52 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i64 0, i64 %__tmp51
  %__tmp53 = load i32, i32* %__tmp52, align 4
  %__tmp54 = sext i32 %__tmp53 to i64
  %__tmp55 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i64 0, i64 %__tmp54
  %__tmp56 = load i32, i32* %i, align 4
  %__tmp57 = sext i32 %__tmp56 to i64
  %__tmp58 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i64 0, i64 %__tmp57
  %__tmp59 = load i32, i32* %__tmp58, align 4
  %__tmp60 = sext i32 %__tmp59 to i64
  %__tmp61 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i64 0, i64 %__tmp60
  %__tmp62 = load i32, i32* %__tmp61, align 4
  %__tmp63 = add i32 %__tmp62, 1
  store i32 %__tmp63, i32* %__tmp55, align 4
  %__tmp64 = load i32, i32* %i, align 4
  %__tmp65 = add i32 %__tmp64, 1
  store i32 %__tmp65, i32* %i, align 4
  br label %bb18
bb20:
  %ans = alloca i32, align 4
  %__tmp66 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i64 0, i64 1
  %__tmp67 = load i32, i32* %__tmp66, align 4
  %__tmp68 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i64 0, i64 2
  %__tmp69 = load i32, i32* %__tmp68, align 4
  %__tmp70 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i64 0, i64 3
  %__tmp71 = load i32, i32* %__tmp70, align 4
  %__tmp72 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i64 0, i64 4
  %__tmp73 = load i32, i32* %__tmp72, align 4
  %__tmp74 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i64 0, i64 5
  %__tmp75 = load i32, i32* %__tmp74, align 4
  %__tmp76 = call i32 @dfs(i32 %__tmp67, i32 %__tmp69, i32 %__tmp71, i32 %__tmp73, i32 %__tmp75, i32 0)
  store i32 %__tmp76, i32* %ans, align 4
  %__tmp77 = load i32, i32* %ans, align 4
  %__tmp78 = call i32 @putint(i32 %__tmp77)
  %__tmp79 = load i32, i32* %ans, align 4
  ret i32 %__tmp79
}

