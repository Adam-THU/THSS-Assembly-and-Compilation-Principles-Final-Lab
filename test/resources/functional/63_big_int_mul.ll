; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@len = global i32 20, align 4

define i32 @main() {
mainEntry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %n = alloca i32, align 4
  %temp = alloca i32, align 4
  %mult1 = alloca [20 x i32], align 4
  store [20 x i32] zeroinitializer, [20 x i32]* %mult1, align 4
  %__tmp0 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 0
  store i32 1, i32* %__tmp0, align 4
  %__tmp1 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 1
  store i32 2, i32* %__tmp1, align 4
  %__tmp2 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 2
  store i32 3, i32* %__tmp2, align 4
  %__tmp3 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 3
  store i32 4, i32* %__tmp3, align 4
  %__tmp4 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 4
  store i32 5, i32* %__tmp4, align 4
  %__tmp5 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 5
  store i32 6, i32* %__tmp5, align 4
  %__tmp6 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 6
  store i32 7, i32* %__tmp6, align 4
  %__tmp7 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 7
  store i32 8, i32* %__tmp7, align 4
  %__tmp8 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 8
  store i32 9, i32* %__tmp8, align 4
  %__tmp9 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 9
  store i32 0, i32* %__tmp9, align 4
  %__tmp10 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 10
  store i32 1, i32* %__tmp10, align 4
  %__tmp11 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 11
  store i32 2, i32* %__tmp11, align 4
  %__tmp12 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 12
  store i32 3, i32* %__tmp12, align 4
  %__tmp13 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 13
  store i32 4, i32* %__tmp13, align 4
  %__tmp14 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 14
  store i32 5, i32* %__tmp14, align 4
  %__tmp15 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 15
  store i32 6, i32* %__tmp15, align 4
  %__tmp16 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 16
  store i32 7, i32* %__tmp16, align 4
  %__tmp17 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 17
  store i32 8, i32* %__tmp17, align 4
  %__tmp18 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 18
  store i32 9, i32* %__tmp18, align 4
  %__tmp19 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 19
  store i32 0, i32* %__tmp19, align 4
  %mult2 = alloca [20 x i32], align 4
  store [20 x i32] zeroinitializer, [20 x i32]* %mult2, align 4
  %__tmp20 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 0
  store i32 2, i32* %__tmp20, align 4
  %__tmp21 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 1
  store i32 3, i32* %__tmp21, align 4
  %__tmp22 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 2
  store i32 4, i32* %__tmp22, align 4
  %__tmp23 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 3
  store i32 2, i32* %__tmp23, align 4
  %__tmp24 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 4
  store i32 5, i32* %__tmp24, align 4
  %__tmp25 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 5
  store i32 7, i32* %__tmp25, align 4
  %__tmp26 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 6
  store i32 9, i32* %__tmp26, align 4
  %__tmp27 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 7
  store i32 9, i32* %__tmp27, align 4
  %__tmp28 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 8
  store i32 0, i32* %__tmp28, align 4
  %__tmp29 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 9
  store i32 1, i32* %__tmp29, align 4
  %__tmp30 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 10
  store i32 9, i32* %__tmp30, align 4
  %__tmp31 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 11
  store i32 8, i32* %__tmp31, align 4
  %__tmp32 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 12
  store i32 7, i32* %__tmp32, align 4
  %__tmp33 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 13
  store i32 6, i32* %__tmp33, align 4
  %__tmp34 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 14
  store i32 4, i32* %__tmp34, align 4
  %__tmp35 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 15
  store i32 3, i32* %__tmp35, align 4
  %__tmp36 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 16
  store i32 2, i32* %__tmp36, align 4
  %__tmp37 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 17
  store i32 1, i32* %__tmp37, align 4
  %__tmp38 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 18
  store i32 2, i32* %__tmp38, align 4
  %__tmp39 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 19
  store i32 2, i32* %__tmp39, align 4
  %len1 = alloca i32, align 4
  store i32 20, i32* %len1, align 4
  %len2 = alloca i32, align 4
  store i32 20, i32* %len2, align 4
  %c1 = alloca [25 x i32], align 4
  store [25 x i32] zeroinitializer, [25 x i32]* %c1, align 4
  %c2 = alloca [25 x i32], align 4
  store [25 x i32] zeroinitializer, [25 x i32]* %c2, align 4
  %result = alloca [40 x i32], align 4
  store [40 x i32] zeroinitializer, [40 x i32]* %result, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp40 = load i32, i32* %i, align 4
  %__tmp41 = load i32, i32* %len1, align 4
  %__tmp42 = icmp slt i32 %__tmp40, %__tmp41
  br i1 %__tmp42, label %bb1, label %bb2
bb1:
  %__tmp43 = load i32, i32* %i, align 4
  %__tmp44 = sext i32 %__tmp43 to i64
  %__tmp45 = getelementptr inbounds [25 x i32], [25 x i32]* %c1, i64 0, i64 %__tmp44
  %__tmp46 = load i32, i32* %i, align 4
  %__tmp47 = sext i32 %__tmp46 to i64
  %__tmp48 = getelementptr inbounds [20 x i32], [20 x i32]* %mult1, i64 0, i64 %__tmp47
  %__tmp49 = load i32, i32* %__tmp48, align 4
  store i32 %__tmp49, i32* %__tmp45, align 4
  %__tmp50 = load i32, i32* %i, align 4
  %__tmp51 = add i32 %__tmp50, 1
  store i32 %__tmp51, i32* %i, align 4
  br label %bb0
bb2:
  store i32 0, i32* %i, align 4
  br label %bb3
bb3:
  %__tmp52 = load i32, i32* %i, align 4
  %__tmp53 = load i32, i32* %len2, align 4
  %__tmp54 = icmp slt i32 %__tmp52, %__tmp53
  br i1 %__tmp54, label %bb4, label %bb5
bb4:
  %__tmp55 = load i32, i32* %i, align 4
  %__tmp56 = sext i32 %__tmp55 to i64
  %__tmp57 = getelementptr inbounds [25 x i32], [25 x i32]* %c2, i64 0, i64 %__tmp56
  %__tmp58 = load i32, i32* %i, align 4
  %__tmp59 = sext i32 %__tmp58 to i64
  %__tmp60 = getelementptr inbounds [20 x i32], [20 x i32]* %mult2, i64 0, i64 %__tmp59
  %__tmp61 = load i32, i32* %__tmp60, align 4
  store i32 %__tmp61, i32* %__tmp57, align 4
  %__tmp62 = load i32, i32* %i, align 4
  %__tmp63 = add i32 %__tmp62, 1
  store i32 %__tmp63, i32* %i, align 4
  br label %bb3
bb5:
  %__tmp64 = load i32, i32* %len1, align 4
  %__tmp65 = load i32, i32* %len2, align 4
  %__tmp66 = add i32 %__tmp64, %__tmp65
  %__tmp67 = sub i32 %__tmp66, 1
  store i32 %__tmp67, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %bb6
bb6:
  %__tmp68 = load i32, i32* %i, align 4
  %__tmp69 = load i32, i32* %n, align 4
  %__tmp70 = icmp sle i32 %__tmp68, %__tmp69
  br i1 %__tmp70, label %bb7, label %bb8
bb7:
  %__tmp71 = load i32, i32* %i, align 4
  %__tmp72 = sext i32 %__tmp71 to i64
  %__tmp73 = getelementptr inbounds [40 x i32], [40 x i32]* %result, i64 0, i64 %__tmp72
  store i32 0, i32* %__tmp73, align 4
  %__tmp74 = load i32, i32* %i, align 4
  %__tmp75 = add i32 %__tmp74, 1
  store i32 %__tmp75, i32* %i, align 4
  br label %bb6
bb8:
  store i32 0, i32* %temp, align 4
  %__tmp76 = load i32, i32* %len2, align 4
  %__tmp77 = sub i32 %__tmp76, 1
  store i32 %__tmp77, i32* %i, align 4
  br label %bb9
bb9:
  %__tmp78 = load i32, i32* %i, align 4
  %__tmp79 = icmp sgt i32 %__tmp78, -1
  br i1 %__tmp79, label %bb10, label %bb11
bb10:
  %__tmp80 = load i32, i32* %i, align 4
  %__tmp81 = sext i32 %__tmp80 to i64
  %__tmp82 = getelementptr inbounds [25 x i32], [25 x i32]* %c2, i64 0, i64 %__tmp81
  %__tmp83 = load i32, i32* %__tmp82, align 4
  store i32 %__tmp83, i32* %t, align 4
  %__tmp84 = load i32, i32* %len1, align 4
  %__tmp85 = sub i32 %__tmp84, 1
  store i32 %__tmp85, i32* %j, align 4
  br label %bb12
bb12:
  %__tmp86 = load i32, i32* %j, align 4
  %__tmp87 = icmp sgt i32 %__tmp86, -1
  br i1 %__tmp87, label %bb13, label %bb14
bb13:
  %__tmp88 = load i32, i32* %n, align 4
  %__tmp89 = sext i32 %__tmp88 to i64
  %__tmp90 = getelementptr inbounds [40 x i32], [40 x i32]* %result, i64 0, i64 %__tmp89
  %__tmp91 = load i32, i32* %__tmp90, align 4
  %__tmp92 = load i32, i32* %t, align 4
  %__tmp93 = load i32, i32* %j, align 4
  %__tmp94 = sext i32 %__tmp93 to i64
  %__tmp95 = getelementptr inbounds [25 x i32], [25 x i32]* %c1, i64 0, i64 %__tmp94
  %__tmp96 = load i32, i32* %__tmp95, align 4
  %__tmp97 = mul i32 %__tmp92, %__tmp96
  %__tmp98 = add i32 %__tmp91, %__tmp97
  store i32 %__tmp98, i32* %temp, align 4
  %__tmp99 = load i32, i32* %temp, align 4
  %__tmp100 = icmp sge i32 %__tmp99, 10
  br i1 %__tmp100, label %bb15, label %bb16
bb15:
  %__tmp101 = load i32, i32* %n, align 4
  %__tmp102 = sext i32 %__tmp101 to i64
  %__tmp103 = getelementptr inbounds [40 x i32], [40 x i32]* %result, i64 0, i64 %__tmp102
  %__tmp104 = load i32, i32* %temp, align 4
  store i32 %__tmp104, i32* %__tmp103, align 4
  %__tmp105 = load i32, i32* %n, align 4
  %__tmp106 = sub i32 %__tmp105, 1
  %__tmp107 = sext i32 %__tmp106 to i64
  %__tmp108 = getelementptr inbounds [40 x i32], [40 x i32]* %result, i64 0, i64 %__tmp107
  %__tmp109 = load i32, i32* %n, align 4
  %__tmp110 = sub i32 %__tmp109, 1
  %__tmp111 = sext i32 %__tmp110 to i64
  %__tmp112 = getelementptr inbounds [40 x i32], [40 x i32]* %result, i64 0, i64 %__tmp111
  %__tmp113 = load i32, i32* %__tmp112, align 4
  %__tmp114 = load i32, i32* %temp, align 4
  %__tmp115 = sdiv i32 %__tmp114, 10
  %__tmp116 = add i32 %__tmp113, %__tmp115
  store i32 %__tmp116, i32* %__tmp108, align 4
  br label %bb17
bb16:
  %__tmp117 = load i32, i32* %n, align 4
  %__tmp118 = sext i32 %__tmp117 to i64
  %__tmp119 = getelementptr inbounds [40 x i32], [40 x i32]* %result, i64 0, i64 %__tmp118
  %__tmp120 = load i32, i32* %temp, align 4
  store i32 %__tmp120, i32* %__tmp119, align 4
  br label %bb17
bb17:
  %__tmp121 = load i32, i32* %j, align 4
  %__tmp122 = sub i32 %__tmp121, 1
  store i32 %__tmp122, i32* %j, align 4
  %__tmp123 = load i32, i32* %n, align 4
  %__tmp124 = sub i32 %__tmp123, 1
  store i32 %__tmp124, i32* %n, align 4
  br label %bb12
bb14:
  %__tmp125 = load i32, i32* %n, align 4
  %__tmp126 = load i32, i32* %len1, align 4
  %__tmp127 = add i32 %__tmp125, %__tmp126
  %__tmp128 = sub i32 %__tmp127, 1
  store i32 %__tmp128, i32* %n, align 4
  %__tmp129 = load i32, i32* %i, align 4
  %__tmp130 = sub i32 %__tmp129, 1
  store i32 %__tmp130, i32* %i, align 4
  br label %bb9
bb11:
  %__tmp131 = getelementptr inbounds [40 x i32], [40 x i32]* %result, i64 0, i64 0
  %__tmp132 = load i32, i32* %__tmp131, align 4
  %__tmp133 = icmp ne i32 %__tmp132, 0
  br i1 %__tmp133, label %bb18, label %bb19
bb18:
  %__tmp134 = getelementptr inbounds [40 x i32], [40 x i32]* %result, i64 0, i64 0
  %__tmp135 = load i32, i32* %__tmp134, align 4
  call void @putint(i32 %__tmp135)
  br label %bb20
bb19:
  br label %bb20
bb20:
  store i32 1, i32* %i, align 4
  br label %bb21
bb21:
  %__tmp136 = load i32, i32* %i, align 4
  %__tmp137 = load i32, i32* %len1, align 4
  %__tmp138 = load i32, i32* %len2, align 4
  %__tmp139 = add i32 %__tmp137, %__tmp138
  %__tmp140 = sub i32 %__tmp139, 1
  %__tmp141 = icmp sle i32 %__tmp136, %__tmp140
  br i1 %__tmp141, label %bb22, label %bb23
bb22:
  %__tmp142 = load i32, i32* %i, align 4
  %__tmp143 = sext i32 %__tmp142 to i64
  %__tmp144 = getelementptr inbounds [40 x i32], [40 x i32]* %result, i64 0, i64 %__tmp143
  %__tmp145 = load i32, i32* %__tmp144, align 4
  call void @putint(i32 %__tmp145)
  %__tmp146 = load i32, i32* %i, align 4
  %__tmp147 = add i32 %__tmp146, 1
  store i32 %__tmp147, i32* %i, align 4
  br label %bb21
bb23:
  ret i32 0
}

