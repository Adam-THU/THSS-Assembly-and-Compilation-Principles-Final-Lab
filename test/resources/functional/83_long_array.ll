; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@N = global i32 10000, align 4

define i32 @long_array(i32 %k) {
long_arrayEntry:
  %k_arg = alloca i32, align 4
  store i32 %k, i32* %k_arg, align 4
  %a1 = alloca [10000 x i32], align 4
  store [10000 x i32] zeroinitializer, [10000 x i32]* %a1, align 4
  %a2 = alloca [10000 x i32], align 4
  store [10000 x i32] zeroinitializer, [10000 x i32]* %a2, align 4
  %a3 = alloca [10000 x i32], align 4
  store [10000 x i32] zeroinitializer, [10000 x i32]* %a3, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %ans = alloca i32, align 4
  %j = alloca i32, align 4
  %j.1 = alloca i32, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 10000
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = sext i32 %__tmp2 to i64
  %__tmp4 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %__tmp3
  %__tmp5 = load i32, i32* %i, align 4
  %__tmp6 = load i32, i32* %i, align 4
  %__tmp7 = mul i32 %__tmp5, %__tmp6
  %__tmp8 = srem i32 %__tmp7, 10
  store i32 %__tmp8, i32* %__tmp4, align 4
  %__tmp9 = load i32, i32* %i, align 4
  %__tmp10 = add i32 %__tmp9, 1
  store i32 %__tmp10, i32* %i, align 4
  br label %bb0
bb2:
  store i32 0, i32* %i, align 4
  br label %bb3
bb3:
  %__tmp11 = load i32, i32* %i, align 4
  %__tmp12 = icmp slt i32 %__tmp11, 10000
  br i1 %__tmp12, label %bb4, label %bb5
bb4:
  %__tmp13 = load i32, i32* %i, align 4
  %__tmp14 = sext i32 %__tmp13 to i64
  %__tmp15 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a2, i64 0, i64 %__tmp14
  %__tmp16 = load i32, i32* %i, align 4
  %__tmp17 = sext i32 %__tmp16 to i64
  %__tmp18 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %__tmp17
  %__tmp19 = load i32, i32* %__tmp18, align 4
  %__tmp20 = load i32, i32* %i, align 4
  %__tmp21 = sext i32 %__tmp20 to i64
  %__tmp22 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %__tmp21
  %__tmp23 = load i32, i32* %__tmp22, align 4
  %__tmp24 = mul i32 %__tmp19, %__tmp23
  %__tmp25 = srem i32 %__tmp24, 10
  store i32 %__tmp25, i32* %__tmp15, align 4
  %__tmp26 = load i32, i32* %i, align 4
  %__tmp27 = add i32 %__tmp26, 1
  store i32 %__tmp27, i32* %i, align 4
  br label %bb3
bb5:
  store i32 0, i32* %i, align 4
  br label %bb6
bb6:
  %__tmp28 = load i32, i32* %i, align 4
  %__tmp29 = icmp slt i32 %__tmp28, 10000
  br i1 %__tmp29, label %bb7, label %bb8
bb7:
  %__tmp30 = load i32, i32* %i, align 4
  %__tmp31 = sext i32 %__tmp30 to i64
  %__tmp32 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %__tmp31
  %__tmp33 = load i32, i32* %i, align 4
  %__tmp34 = sext i32 %__tmp33 to i64
  %__tmp35 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a2, i64 0, i64 %__tmp34
  %__tmp36 = load i32, i32* %__tmp35, align 4
  %__tmp37 = load i32, i32* %i, align 4
  %__tmp38 = sext i32 %__tmp37 to i64
  %__tmp39 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a2, i64 0, i64 %__tmp38
  %__tmp40 = load i32, i32* %__tmp39, align 4
  %__tmp41 = mul i32 %__tmp36, %__tmp40
  %__tmp42 = srem i32 %__tmp41, 100
  %__tmp43 = load i32, i32* %i, align 4
  %__tmp44 = sext i32 %__tmp43 to i64
  %__tmp45 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %__tmp44
  %__tmp46 = load i32, i32* %__tmp45, align 4
  %__tmp47 = add i32 %__tmp42, %__tmp46
  store i32 %__tmp47, i32* %__tmp32, align 4
  %__tmp48 = load i32, i32* %i, align 4
  %__tmp49 = add i32 %__tmp48, 1
  store i32 %__tmp49, i32* %i, align 4
  br label %bb6
bb8:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  br label %bb9
bb9:
  %__tmp50 = load i32, i32* %i, align 4
  %__tmp51 = icmp slt i32 %__tmp50, 10000
  br i1 %__tmp51, label %bb10, label %bb11
bb10:
  %__tmp52 = load i32, i32* %i, align 4
  %__tmp53 = icmp slt i32 %__tmp52, 10
  br i1 %__tmp53, label %bb12, label %bb13
bb12:
  %__tmp54 = load i32, i32* %ans, align 4
  %__tmp55 = load i32, i32* %i, align 4
  %__tmp56 = sext i32 %__tmp55 to i64
  %__tmp57 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %__tmp56
  %__tmp58 = load i32, i32* %__tmp57, align 4
  %__tmp59 = add i32 %__tmp54, %__tmp58
  %__tmp60 = srem i32 %__tmp59, 1333
  store i32 %__tmp60, i32* %ans, align 4
  %__tmp61 = load i32, i32* %ans, align 4
  call void @putint(i32 %__tmp61)
  br label %bb14
bb13:
  %__tmp62 = load i32, i32* %i, align 4
  %__tmp63 = icmp slt i32 %__tmp62, 20
  br i1 %__tmp63, label %bb15, label %bb16
bb15:
  store i32 5000, i32* %j, align 4
  br label %bb18
bb18:
  %__tmp64 = load i32, i32* %j, align 4
  %__tmp65 = icmp slt i32 %__tmp64, 10000
  br i1 %__tmp65, label %bb19, label %bb20
bb19:
  %__tmp66 = load i32, i32* %ans, align 4
  %__tmp67 = load i32, i32* %i, align 4
  %__tmp68 = sext i32 %__tmp67 to i64
  %__tmp69 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %__tmp68
  %__tmp70 = load i32, i32* %__tmp69, align 4
  %__tmp71 = add i32 %__tmp66, %__tmp70
  %__tmp72 = load i32, i32* %j, align 4
  %__tmp73 = sext i32 %__tmp72 to i64
  %__tmp74 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %__tmp73
  %__tmp75 = load i32, i32* %__tmp74, align 4
  %__tmp76 = sub i32 %__tmp71, %__tmp75
  store i32 %__tmp76, i32* %ans, align 4
  %__tmp77 = load i32, i32* %j, align 4
  %__tmp78 = add i32 %__tmp77, 1
  store i32 %__tmp78, i32* %j, align 4
  br label %bb18
bb20:
  %__tmp79 = load i32, i32* %ans, align 4
  call void @putint(i32 %__tmp79)
  br label %bb17
bb16:
  %__tmp80 = load i32, i32* %i, align 4
  %__tmp81 = icmp slt i32 %__tmp80, 30
  br i1 %__tmp81, label %bb21, label %bb22
bb21:
  store i32 5000, i32* %j.1, align 4
  br label %bb24
bb24:
  %__tmp82 = load i32, i32* %j.1, align 4
  %__tmp83 = icmp slt i32 %__tmp82, 10000
  br i1 %__tmp83, label %bb25, label %bb26
bb25:
  %__tmp84 = load i32, i32* %j.1, align 4
  %__tmp85 = icmp sgt i32 %__tmp84, 2233
  br i1 %__tmp85, label %bb27, label %bb28
bb27:
  %__tmp86 = load i32, i32* %ans, align 4
  %__tmp87 = load i32, i32* %i, align 4
  %__tmp88 = sext i32 %__tmp87 to i64
  %__tmp89 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a2, i64 0, i64 %__tmp88
  %__tmp90 = load i32, i32* %__tmp89, align 4
  %__tmp91 = add i32 %__tmp86, %__tmp90
  %__tmp92 = load i32, i32* %j.1, align 4
  %__tmp93 = sext i32 %__tmp92 to i64
  %__tmp94 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %__tmp93
  %__tmp95 = load i32, i32* %__tmp94, align 4
  %__tmp96 = sub i32 %__tmp91, %__tmp95
  store i32 %__tmp96, i32* %ans, align 4
  %__tmp97 = load i32, i32* %j.1, align 4
  %__tmp98 = add i32 %__tmp97, 1
  store i32 %__tmp98, i32* %j.1, align 4
  br label %bb29
bb28:
  %__tmp99 = load i32, i32* %ans, align 4
  %__tmp100 = load i32, i32* %i, align 4
  %__tmp101 = sext i32 %__tmp100 to i64
  %__tmp102 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %__tmp101
  %__tmp103 = load i32, i32* %__tmp102, align 4
  %__tmp104 = add i32 %__tmp99, %__tmp103
  %__tmp105 = load i32, i32* %j.1, align 4
  %__tmp106 = sext i32 %__tmp105 to i64
  %__tmp107 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %__tmp106
  %__tmp108 = load i32, i32* %__tmp107, align 4
  %__tmp109 = add i32 %__tmp104, %__tmp108
  %__tmp110 = srem i32 %__tmp109, 13333
  store i32 %__tmp110, i32* %ans, align 4
  %__tmp111 = load i32, i32* %j.1, align 4
  %__tmp112 = add i32 %__tmp111, 2
  store i32 %__tmp112, i32* %j.1, align 4
  br label %bb29
bb29:
  br label %bb24
bb26:
  %__tmp113 = load i32, i32* %ans, align 4
  call void @putint(i32 %__tmp113)
  br label %bb23
bb22:
  %__tmp114 = load i32, i32* %ans, align 4
  %__tmp115 = load i32, i32* %i, align 4
  %__tmp116 = sext i32 %__tmp115 to i64
  %__tmp117 = getelementptr inbounds [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %__tmp116
  %__tmp118 = load i32, i32* %__tmp117, align 4
  %__tmp119 = load i32, i32* %k_arg, align 4
  %__tmp120 = mul i32 %__tmp118, %__tmp119
  %__tmp121 = add i32 %__tmp114, %__tmp120
  %__tmp122 = srem i32 %__tmp121, 99988
  store i32 %__tmp122, i32* %ans, align 4
  br label %bb23
bb23:
  br label %bb17
bb17:
  br label %bb14
bb14:
  %__tmp123 = load i32, i32* %i, align 4
  %__tmp124 = add i32 %__tmp123, 1
  store i32 %__tmp124, i32* %i, align 4
  br label %bb9
bb11:
  %__tmp125 = load i32, i32* %ans, align 4
  ret i32 %__tmp125
}

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @long_array(i32 9)
  ret i32 %__tmp0
}

