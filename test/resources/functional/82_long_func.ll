; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@SHIFT_TABLE = global [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768], align 4

define i32 @long_func() {
long_funcEntry:
  %ans = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cur = alloca i32, align 4
  %pl = alloca i32, align 4
  store i32 2, i32* %pl, align 4
  %pr = alloca i32, align 4
  store i32 0, i32* %pr, align 4
  %pres = alloca i32, align 4
  store i32 1, i32* %pres, align 4
  %ml = alloca i32, align 4
  %mr = alloca i32, align 4
  %mres = alloca i32, align 4
  %al = alloca i32, align 4
  %c = alloca i32, align 4
  %sum = alloca i32, align 4
  %al.1 = alloca i32, align 4
  %c.1 = alloca i32, align 4
  %sum.1 = alloca i32, align 4
  %ml.1 = alloca i32, align 4
  %mr.1 = alloca i32, align 4
  %mres.1 = alloca i32, align 4
  %al.2 = alloca i32, align 4
  %c.2 = alloca i32, align 4
  %sum.2 = alloca i32, align 4
  %al.3 = alloca i32, align 4
  %c.3 = alloca i32, align 4
  %sum.3 = alloca i32, align 4
  %pl.1 = alloca i32, align 4
  %pr.1 = alloca i32, align 4
  %pres.1 = alloca i32, align 4
  %ml.2 = alloca i32, align 4
  %mr.2 = alloca i32, align 4
  %mres.2 = alloca i32, align 4
  %al.4 = alloca i32, align 4
  %c.4 = alloca i32, align 4
  %sum.4 = alloca i32, align 4
  %al.5 = alloca i32, align 4
  %c.5 = alloca i32, align 4
  %sum.5 = alloca i32, align 4
  %ml.3 = alloca i32, align 4
  %mr.3 = alloca i32, align 4
  %mres.3 = alloca i32, align 4
  %al.6 = alloca i32, align 4
  %c.6 = alloca i32, align 4
  %sum.6 = alloca i32, align 4
  %al.7 = alloca i32, align 4
  %c.7 = alloca i32, align 4
  %sum.7 = alloca i32, align 4
  %pl.2 = alloca i32, align 4
  %pr.2 = alloca i32, align 4
  %pres.2 = alloca i32, align 4
  %ml.4 = alloca i32, align 4
  %mr.4 = alloca i32, align 4
  %mres.4 = alloca i32, align 4
  %al.8 = alloca i32, align 4
  %c.8 = alloca i32, align 4
  %sum.8 = alloca i32, align 4
  %al.9 = alloca i32, align 4
  %c.9 = alloca i32, align 4
  %sum.9 = alloca i32, align 4
  %ml.5 = alloca i32, align 4
  %mr.5 = alloca i32, align 4
  %mres.5 = alloca i32, align 4
  %al.10 = alloca i32, align 4
  %c.10 = alloca i32, align 4
  %sum.10 = alloca i32, align 4
  %al.11 = alloca i32, align 4
  %c.11 = alloca i32, align 4
  %sum.11 = alloca i32, align 4
  %pl.3 = alloca i32, align 4
  %pr.3 = alloca i32, align 4
  %pres.3 = alloca i32, align 4
  %ml.6 = alloca i32, align 4
  %mr.6 = alloca i32, align 4
  %mres.6 = alloca i32, align 4
  %al.12 = alloca i32, align 4
  %c.12 = alloca i32, align 4
  %sum.12 = alloca i32, align 4
  %al.13 = alloca i32, align 4
  %c.13 = alloca i32, align 4
  %sum.13 = alloca i32, align 4
  %ml.7 = alloca i32, align 4
  %mr.7 = alloca i32, align 4
  %mres.7 = alloca i32, align 4
  %al.14 = alloca i32, align 4
  %c.14 = alloca i32, align 4
  %sum.14 = alloca i32, align 4
  %al.15 = alloca i32, align 4
  %c.15 = alloca i32, align 4
  %sum.15 = alloca i32, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %pr, align 4
  %__tmp1 = icmp sgt i32 %__tmp0, 0
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp2 = load i32, i32* %pr, align 4
  store i32 %__tmp2, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb3
bb3:
  %__tmp3 = load i32, i32* %i, align 4
  %__tmp4 = icmp slt i32 %__tmp3, 16
  br i1 %__tmp4, label %bb4, label %bb5
bb4:
  %__tmp5 = load i32, i32* %x, align 4
  %__tmp6 = srem i32 %__tmp5, 2
  %__tmp7 = icmp ne i32 %__tmp6, 0
  br i1 %__tmp7, label %bb9, label %bb11
bb11:
  br label %bb10
bb9:
  %__tmp8 = load i32, i32* %y, align 4
  %__tmp9 = srem i32 %__tmp8, 2
  %__tmp10 = icmp ne i32 %__tmp9, 0
  br label %bb10
bb10:
  %__tmp11 = phi i1 [ 0, %bb11 ], [ %__tmp10, %bb9 ]
  br i1 %__tmp11, label %bb6, label %bb7
bb6:
  %__tmp12 = load i32, i32* %ans, align 4
  %__tmp13 = load i32, i32* %i, align 4
  %__tmp14 = sext i32 %__tmp13 to i64
  %__tmp15 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp14
  %__tmp16 = load i32, i32* %__tmp15, align 4
  %__tmp17 = mul i32 1, %__tmp16
  %__tmp18 = add i32 %__tmp12, %__tmp17
  store i32 %__tmp18, i32* %ans, align 4
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp19 = load i32, i32* %x, align 4
  %__tmp20 = sdiv i32 %__tmp19, 2
  store i32 %__tmp20, i32* %x, align 4
  %__tmp21 = load i32, i32* %y, align 4
  %__tmp22 = sdiv i32 %__tmp21, 2
  store i32 %__tmp22, i32* %y, align 4
  %__tmp23 = load i32, i32* %i, align 4
  %__tmp24 = add i32 %__tmp23, 1
  store i32 %__tmp24, i32* %i, align 4
  br label %bb3
bb5:
  %__tmp25 = load i32, i32* %ans, align 4
  %__tmp26 = icmp ne i32 %__tmp25, 0
  br i1 %__tmp26, label %bb12, label %bb13
bb12:
  %__tmp27 = load i32, i32* %pres, align 4
  store i32 %__tmp27, i32* %ml, align 4
  %__tmp28 = load i32, i32* %pl, align 4
  store i32 %__tmp28, i32* %mr, align 4
  store i32 0, i32* %mres, align 4
  br label %bb15
bb15:
  %__tmp29 = load i32, i32* %mr, align 4
  %__tmp30 = icmp ne i32 %__tmp29, 0
  br i1 %__tmp30, label %bb16, label %bb17
bb16:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp31 = load i32, i32* %mr, align 4
  store i32 %__tmp31, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb18
bb18:
  %__tmp32 = load i32, i32* %i, align 4
  %__tmp33 = icmp slt i32 %__tmp32, 16
  br i1 %__tmp33, label %bb19, label %bb20
bb19:
  %__tmp34 = load i32, i32* %x, align 4
  %__tmp35 = srem i32 %__tmp34, 2
  %__tmp36 = icmp ne i32 %__tmp35, 0
  br i1 %__tmp36, label %bb24, label %bb26
bb26:
  br label %bb25
bb24:
  %__tmp37 = load i32, i32* %y, align 4
  %__tmp38 = srem i32 %__tmp37, 2
  %__tmp39 = icmp ne i32 %__tmp38, 0
  br label %bb25
bb25:
  %__tmp40 = phi i1 [ 0, %bb26 ], [ %__tmp39, %bb24 ]
  br i1 %__tmp40, label %bb21, label %bb22
bb21:
  %__tmp41 = load i32, i32* %ans, align 4
  %__tmp42 = load i32, i32* %i, align 4
  %__tmp43 = sext i32 %__tmp42 to i64
  %__tmp44 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp43
  %__tmp45 = load i32, i32* %__tmp44, align 4
  %__tmp46 = mul i32 1, %__tmp45
  %__tmp47 = add i32 %__tmp41, %__tmp46
  store i32 %__tmp47, i32* %ans, align 4
  br label %bb23
bb22:
  br label %bb23
bb23:
  %__tmp48 = load i32, i32* %x, align 4
  %__tmp49 = sdiv i32 %__tmp48, 2
  store i32 %__tmp49, i32* %x, align 4
  %__tmp50 = load i32, i32* %y, align 4
  %__tmp51 = sdiv i32 %__tmp50, 2
  store i32 %__tmp51, i32* %y, align 4
  %__tmp52 = load i32, i32* %i, align 4
  %__tmp53 = add i32 %__tmp52, 1
  store i32 %__tmp53, i32* %i, align 4
  br label %bb18
bb20:
  %__tmp54 = load i32, i32* %ans, align 4
  %__tmp55 = icmp ne i32 %__tmp54, 0
  br i1 %__tmp55, label %bb27, label %bb28
bb27:
  %__tmp56 = load i32, i32* %mres, align 4
  store i32 %__tmp56, i32* %al, align 4
  %__tmp57 = load i32, i32* %ml, align 4
  store i32 %__tmp57, i32* %c, align 4
  br label %bb30
bb30:
  %__tmp58 = load i32, i32* %c, align 4
  %__tmp59 = icmp ne i32 %__tmp58, 0
  br i1 %__tmp59, label %bb31, label %bb32
bb31:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp60 = load i32, i32* %al, align 4
  store i32 %__tmp60, i32* %x, align 4
  %__tmp61 = load i32, i32* %c, align 4
  store i32 %__tmp61, i32* %y, align 4
  br label %bb33
bb33:
  %__tmp62 = load i32, i32* %i, align 4
  %__tmp63 = icmp slt i32 %__tmp62, 16
  br i1 %__tmp63, label %bb34, label %bb35
bb34:
  %__tmp64 = load i32, i32* %x, align 4
  %__tmp65 = srem i32 %__tmp64, 2
  %__tmp66 = icmp ne i32 %__tmp65, 0
  br i1 %__tmp66, label %bb36, label %bb37
bb36:
  %__tmp67 = load i32, i32* %y, align 4
  %__tmp68 = srem i32 %__tmp67, 2
  %__tmp69 = icmp eq i32 %__tmp68, 0
  br i1 %__tmp69, label %bb39, label %bb40
bb39:
  %__tmp70 = load i32, i32* %ans, align 4
  %__tmp71 = load i32, i32* %i, align 4
  %__tmp72 = sext i32 %__tmp71 to i64
  %__tmp73 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp72
  %__tmp74 = load i32, i32* %__tmp73, align 4
  %__tmp75 = mul i32 1, %__tmp74
  %__tmp76 = add i32 %__tmp70, %__tmp75
  store i32 %__tmp76, i32* %ans, align 4
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb38
bb37:
  %__tmp77 = load i32, i32* %y, align 4
  %__tmp78 = srem i32 %__tmp77, 2
  %__tmp79 = icmp ne i32 %__tmp78, 0
  br i1 %__tmp79, label %bb42, label %bb43
bb42:
  %__tmp80 = load i32, i32* %ans, align 4
  %__tmp81 = load i32, i32* %i, align 4
  %__tmp82 = sext i32 %__tmp81 to i64
  %__tmp83 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp82
  %__tmp84 = load i32, i32* %__tmp83, align 4
  %__tmp85 = mul i32 1, %__tmp84
  %__tmp86 = add i32 %__tmp80, %__tmp85
  store i32 %__tmp86, i32* %ans, align 4
  br label %bb44
bb43:
  br label %bb44
bb44:
  br label %bb38
bb38:
  %__tmp87 = load i32, i32* %x, align 4
  %__tmp88 = sdiv i32 %__tmp87, 2
  store i32 %__tmp88, i32* %x, align 4
  %__tmp89 = load i32, i32* %y, align 4
  %__tmp90 = sdiv i32 %__tmp89, 2
  store i32 %__tmp90, i32* %y, align 4
  %__tmp91 = load i32, i32* %i, align 4
  %__tmp92 = add i32 %__tmp91, 1
  store i32 %__tmp92, i32* %i, align 4
  br label %bb33
bb35:
  %__tmp93 = load i32, i32* %ans, align 4
  store i32 %__tmp93, i32* %sum, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp94 = load i32, i32* %al, align 4
  store i32 %__tmp94, i32* %x, align 4
  %__tmp95 = load i32, i32* %c, align 4
  store i32 %__tmp95, i32* %y, align 4
  br label %bb45
bb45:
  %__tmp96 = load i32, i32* %i, align 4
  %__tmp97 = icmp slt i32 %__tmp96, 16
  br i1 %__tmp97, label %bb46, label %bb47
bb46:
  %__tmp98 = load i32, i32* %x, align 4
  %__tmp99 = srem i32 %__tmp98, 2
  %__tmp100 = icmp ne i32 %__tmp99, 0
  br i1 %__tmp100, label %bb51, label %bb53
bb53:
  br label %bb52
bb51:
  %__tmp101 = load i32, i32* %y, align 4
  %__tmp102 = srem i32 %__tmp101, 2
  %__tmp103 = icmp ne i32 %__tmp102, 0
  br label %bb52
bb52:
  %__tmp104 = phi i1 [ 0, %bb53 ], [ %__tmp103, %bb51 ]
  br i1 %__tmp104, label %bb48, label %bb49
bb48:
  %__tmp105 = load i32, i32* %ans, align 4
  %__tmp106 = load i32, i32* %i, align 4
  %__tmp107 = sext i32 %__tmp106 to i64
  %__tmp108 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp107
  %__tmp109 = load i32, i32* %__tmp108, align 4
  %__tmp110 = mul i32 1, %__tmp109
  %__tmp111 = add i32 %__tmp105, %__tmp110
  store i32 %__tmp111, i32* %ans, align 4
  br label %bb50
bb49:
  br label %bb50
bb50:
  %__tmp112 = load i32, i32* %x, align 4
  %__tmp113 = sdiv i32 %__tmp112, 2
  store i32 %__tmp113, i32* %x, align 4
  %__tmp114 = load i32, i32* %y, align 4
  %__tmp115 = sdiv i32 %__tmp114, 2
  store i32 %__tmp115, i32* %y, align 4
  %__tmp116 = load i32, i32* %i, align 4
  %__tmp117 = add i32 %__tmp116, 1
  store i32 %__tmp117, i32* %i, align 4
  br label %bb45
bb47:
  %__tmp118 = load i32, i32* %ans, align 4
  store i32 %__tmp118, i32* %c, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp119 = load i32, i32* %c, align 4
  %__tmp120 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp121 = load i32, i32* %__tmp120, align 4
  %__tmp122 = mul i32 %__tmp119, %__tmp121
  store i32 %__tmp122, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb57
bb57:
  %__tmp123 = load i32, i32* %i, align 4
  %__tmp124 = icmp slt i32 %__tmp123, 16
  br i1 %__tmp124, label %bb58, label %bb59
bb58:
  %__tmp125 = load i32, i32* %x, align 4
  %__tmp126 = srem i32 %__tmp125, 2
  %__tmp127 = icmp ne i32 %__tmp126, 0
  br i1 %__tmp127, label %bb63, label %bb65
bb65:
  br label %bb64
bb63:
  %__tmp128 = load i32, i32* %y, align 4
  %__tmp129 = srem i32 %__tmp128, 2
  %__tmp130 = icmp ne i32 %__tmp129, 0
  br label %bb64
bb64:
  %__tmp131 = phi i1 [ 0, %bb65 ], [ %__tmp130, %bb63 ]
  br i1 %__tmp131, label %bb60, label %bb61
bb60:
  %__tmp132 = load i32, i32* %ans, align 4
  %__tmp133 = load i32, i32* %i, align 4
  %__tmp134 = sext i32 %__tmp133 to i64
  %__tmp135 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp134
  %__tmp136 = load i32, i32* %__tmp135, align 4
  %__tmp137 = mul i32 1, %__tmp136
  %__tmp138 = add i32 %__tmp132, %__tmp137
  store i32 %__tmp138, i32* %ans, align 4
  br label %bb62
bb61:
  br label %bb62
bb62:
  %__tmp139 = load i32, i32* %x, align 4
  %__tmp140 = sdiv i32 %__tmp139, 2
  store i32 %__tmp140, i32* %x, align 4
  %__tmp141 = load i32, i32* %y, align 4
  %__tmp142 = sdiv i32 %__tmp141, 2
  store i32 %__tmp142, i32* %y, align 4
  %__tmp143 = load i32, i32* %i, align 4
  %__tmp144 = add i32 %__tmp143, 1
  store i32 %__tmp144, i32* %i, align 4
  br label %bb57
bb59:
  br label %bb56
bb56:
  %__tmp145 = load i32, i32* %ans, align 4
  store i32 %__tmp145, i32* %c, align 4
  %__tmp146 = load i32, i32* %sum, align 4
  store i32 %__tmp146, i32* %al, align 4
  br label %bb30
bb32:
  %__tmp147 = load i32, i32* %al, align 4
  store i32 %__tmp147, i32* %ans, align 4
  %__tmp148 = load i32, i32* %ans, align 4
  store i32 %__tmp148, i32* %mres, align 4
  br label %bb29
bb28:
  br label %bb29
bb29:
  %__tmp149 = load i32, i32* %ml, align 4
  store i32 %__tmp149, i32* %al.1, align 4
  %__tmp150 = load i32, i32* %ml, align 4
  store i32 %__tmp150, i32* %c.1, align 4
  br label %bb66
bb66:
  %__tmp151 = load i32, i32* %c.1, align 4
  %__tmp152 = icmp ne i32 %__tmp151, 0
  br i1 %__tmp152, label %bb67, label %bb68
bb67:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp153 = load i32, i32* %al.1, align 4
  store i32 %__tmp153, i32* %x, align 4
  %__tmp154 = load i32, i32* %c.1, align 4
  store i32 %__tmp154, i32* %y, align 4
  br label %bb69
bb69:
  %__tmp155 = load i32, i32* %i, align 4
  %__tmp156 = icmp slt i32 %__tmp155, 16
  br i1 %__tmp156, label %bb70, label %bb71
bb70:
  %__tmp157 = load i32, i32* %x, align 4
  %__tmp158 = srem i32 %__tmp157, 2
  %__tmp159 = icmp ne i32 %__tmp158, 0
  br i1 %__tmp159, label %bb72, label %bb73
bb72:
  %__tmp160 = load i32, i32* %y, align 4
  %__tmp161 = srem i32 %__tmp160, 2
  %__tmp162 = icmp eq i32 %__tmp161, 0
  br i1 %__tmp162, label %bb75, label %bb76
bb75:
  %__tmp163 = load i32, i32* %ans, align 4
  %__tmp164 = load i32, i32* %i, align 4
  %__tmp165 = sext i32 %__tmp164 to i64
  %__tmp166 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp165
  %__tmp167 = load i32, i32* %__tmp166, align 4
  %__tmp168 = mul i32 1, %__tmp167
  %__tmp169 = add i32 %__tmp163, %__tmp168
  store i32 %__tmp169, i32* %ans, align 4
  br label %bb77
bb76:
  br label %bb77
bb77:
  br label %bb74
bb73:
  %__tmp170 = load i32, i32* %y, align 4
  %__tmp171 = srem i32 %__tmp170, 2
  %__tmp172 = icmp ne i32 %__tmp171, 0
  br i1 %__tmp172, label %bb78, label %bb79
bb78:
  %__tmp173 = load i32, i32* %ans, align 4
  %__tmp174 = load i32, i32* %i, align 4
  %__tmp175 = sext i32 %__tmp174 to i64
  %__tmp176 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp175
  %__tmp177 = load i32, i32* %__tmp176, align 4
  %__tmp178 = mul i32 1, %__tmp177
  %__tmp179 = add i32 %__tmp173, %__tmp178
  store i32 %__tmp179, i32* %ans, align 4
  br label %bb80
bb79:
  br label %bb80
bb80:
  br label %bb74
bb74:
  %__tmp180 = load i32, i32* %x, align 4
  %__tmp181 = sdiv i32 %__tmp180, 2
  store i32 %__tmp181, i32* %x, align 4
  %__tmp182 = load i32, i32* %y, align 4
  %__tmp183 = sdiv i32 %__tmp182, 2
  store i32 %__tmp183, i32* %y, align 4
  %__tmp184 = load i32, i32* %i, align 4
  %__tmp185 = add i32 %__tmp184, 1
  store i32 %__tmp185, i32* %i, align 4
  br label %bb69
bb71:
  %__tmp186 = load i32, i32* %ans, align 4
  store i32 %__tmp186, i32* %sum.1, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp187 = load i32, i32* %al.1, align 4
  store i32 %__tmp187, i32* %x, align 4
  %__tmp188 = load i32, i32* %c.1, align 4
  store i32 %__tmp188, i32* %y, align 4
  br label %bb81
bb81:
  %__tmp189 = load i32, i32* %i, align 4
  %__tmp190 = icmp slt i32 %__tmp189, 16
  br i1 %__tmp190, label %bb82, label %bb83
bb82:
  %__tmp191 = load i32, i32* %x, align 4
  %__tmp192 = srem i32 %__tmp191, 2
  %__tmp193 = icmp ne i32 %__tmp192, 0
  br i1 %__tmp193, label %bb87, label %bb89
bb89:
  br label %bb88
bb87:
  %__tmp194 = load i32, i32* %y, align 4
  %__tmp195 = srem i32 %__tmp194, 2
  %__tmp196 = icmp ne i32 %__tmp195, 0
  br label %bb88
bb88:
  %__tmp197 = phi i1 [ 0, %bb89 ], [ %__tmp196, %bb87 ]
  br i1 %__tmp197, label %bb84, label %bb85
bb84:
  %__tmp198 = load i32, i32* %ans, align 4
  %__tmp199 = load i32, i32* %i, align 4
  %__tmp200 = sext i32 %__tmp199 to i64
  %__tmp201 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp200
  %__tmp202 = load i32, i32* %__tmp201, align 4
  %__tmp203 = mul i32 1, %__tmp202
  %__tmp204 = add i32 %__tmp198, %__tmp203
  store i32 %__tmp204, i32* %ans, align 4
  br label %bb86
bb85:
  br label %bb86
bb86:
  %__tmp205 = load i32, i32* %x, align 4
  %__tmp206 = sdiv i32 %__tmp205, 2
  store i32 %__tmp206, i32* %x, align 4
  %__tmp207 = load i32, i32* %y, align 4
  %__tmp208 = sdiv i32 %__tmp207, 2
  store i32 %__tmp208, i32* %y, align 4
  %__tmp209 = load i32, i32* %i, align 4
  %__tmp210 = add i32 %__tmp209, 1
  store i32 %__tmp210, i32* %i, align 4
  br label %bb81
bb83:
  %__tmp211 = load i32, i32* %ans, align 4
  store i32 %__tmp211, i32* %c.1, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp212 = load i32, i32* %c.1, align 4
  %__tmp213 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp214 = load i32, i32* %__tmp213, align 4
  %__tmp215 = mul i32 %__tmp212, %__tmp214
  store i32 %__tmp215, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb93
bb93:
  %__tmp216 = load i32, i32* %i, align 4
  %__tmp217 = icmp slt i32 %__tmp216, 16
  br i1 %__tmp217, label %bb94, label %bb95
bb94:
  %__tmp218 = load i32, i32* %x, align 4
  %__tmp219 = srem i32 %__tmp218, 2
  %__tmp220 = icmp ne i32 %__tmp219, 0
  br i1 %__tmp220, label %bb99, label %bb101
bb101:
  br label %bb100
bb99:
  %__tmp221 = load i32, i32* %y, align 4
  %__tmp222 = srem i32 %__tmp221, 2
  %__tmp223 = icmp ne i32 %__tmp222, 0
  br label %bb100
bb100:
  %__tmp224 = phi i1 [ 0, %bb101 ], [ %__tmp223, %bb99 ]
  br i1 %__tmp224, label %bb96, label %bb97
bb96:
  %__tmp225 = load i32, i32* %ans, align 4
  %__tmp226 = load i32, i32* %i, align 4
  %__tmp227 = sext i32 %__tmp226 to i64
  %__tmp228 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp227
  %__tmp229 = load i32, i32* %__tmp228, align 4
  %__tmp230 = mul i32 1, %__tmp229
  %__tmp231 = add i32 %__tmp225, %__tmp230
  store i32 %__tmp231, i32* %ans, align 4
  br label %bb98
bb97:
  br label %bb98
bb98:
  %__tmp232 = load i32, i32* %x, align 4
  %__tmp233 = sdiv i32 %__tmp232, 2
  store i32 %__tmp233, i32* %x, align 4
  %__tmp234 = load i32, i32* %y, align 4
  %__tmp235 = sdiv i32 %__tmp234, 2
  store i32 %__tmp235, i32* %y, align 4
  %__tmp236 = load i32, i32* %i, align 4
  %__tmp237 = add i32 %__tmp236, 1
  store i32 %__tmp237, i32* %i, align 4
  br label %bb93
bb95:
  br label %bb92
bb92:
  %__tmp238 = load i32, i32* %ans, align 4
  store i32 %__tmp238, i32* %c.1, align 4
  %__tmp239 = load i32, i32* %sum.1, align 4
  store i32 %__tmp239, i32* %al.1, align 4
  br label %bb66
bb68:
  %__tmp240 = load i32, i32* %al.1, align 4
  store i32 %__tmp240, i32* %ans, align 4
  %__tmp241 = load i32, i32* %ans, align 4
  store i32 %__tmp241, i32* %ml, align 4
  %__tmp242 = load i32, i32* %mr, align 4
  store i32 %__tmp242, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp243 = load i32, i32* %y, align 4
  %__tmp244 = icmp sge i32 %__tmp243, 15
  br i1 %__tmp244, label %bb102, label %bb103
bb102:
  %__tmp245 = load i32, i32* %x, align 4
  %__tmp246 = icmp slt i32 %__tmp245, 0
  br i1 %__tmp246, label %bb105, label %bb106
bb105:
  store i32 65535, i32* %ans, align 4
  br label %bb107
bb106:
  store i32 0, i32* %ans, align 4
  br label %bb107
bb107:
  br label %bb104
bb103:
  %__tmp247 = load i32, i32* %y, align 4
  %__tmp248 = icmp sgt i32 %__tmp247, 0
  br i1 %__tmp248, label %bb108, label %bb109
bb108:
  %__tmp249 = load i32, i32* %x, align 4
  %__tmp250 = icmp sgt i32 %__tmp249, 32767
  br i1 %__tmp250, label %bb111, label %bb112
bb111:
  %__tmp251 = load i32, i32* %x, align 4
  %__tmp252 = load i32, i32* %y, align 4
  %__tmp253 = sext i32 %__tmp252 to i64
  %__tmp254 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp253
  %__tmp255 = load i32, i32* %__tmp254, align 4
  %__tmp256 = sdiv i32 %__tmp251, %__tmp255
  store i32 %__tmp256, i32* %x, align 4
  %__tmp257 = load i32, i32* %x, align 4
  %__tmp258 = add i32 %__tmp257, 65536
  %__tmp259 = load i32, i32* %y, align 4
  %__tmp260 = sub i32 15, %__tmp259
  %__tmp261 = add i32 %__tmp260, 1
  %__tmp262 = sext i32 %__tmp261 to i64
  %__tmp263 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp262
  %__tmp264 = load i32, i32* %__tmp263, align 4
  %__tmp265 = sub i32 %__tmp258, %__tmp264
  store i32 %__tmp265, i32* %ans, align 4
  br label %bb113
bb112:
  %__tmp266 = load i32, i32* %x, align 4
  %__tmp267 = load i32, i32* %y, align 4
  %__tmp268 = sext i32 %__tmp267 to i64
  %__tmp269 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp268
  %__tmp270 = load i32, i32* %__tmp269, align 4
  %__tmp271 = sdiv i32 %__tmp266, %__tmp270
  store i32 %__tmp271, i32* %ans, align 4
  br label %bb113
bb113:
  br label %bb110
bb109:
  %__tmp272 = load i32, i32* %x, align 4
  store i32 %__tmp272, i32* %ans, align 4
  br label %bb110
bb110:
  br label %bb104
bb104:
  %__tmp273 = load i32, i32* %ans, align 4
  store i32 %__tmp273, i32* %mr, align 4
  br label %bb15
bb17:
  %__tmp274 = load i32, i32* %mres, align 4
  store i32 %__tmp274, i32* %ans, align 4
  %__tmp275 = load i32, i32* %ans, align 4
  store i32 %__tmp275, i32* %pres, align 4
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp276 = load i32, i32* %pl, align 4
  store i32 %__tmp276, i32* %ml.1, align 4
  %__tmp277 = load i32, i32* %pl, align 4
  store i32 %__tmp277, i32* %mr.1, align 4
  store i32 0, i32* %mres.1, align 4
  br label %bb114
bb114:
  %__tmp278 = load i32, i32* %mr.1, align 4
  %__tmp279 = icmp ne i32 %__tmp278, 0
  br i1 %__tmp279, label %bb115, label %bb116
bb115:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp280 = load i32, i32* %mr.1, align 4
  store i32 %__tmp280, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb117
bb117:
  %__tmp281 = load i32, i32* %i, align 4
  %__tmp282 = icmp slt i32 %__tmp281, 16
  br i1 %__tmp282, label %bb118, label %bb119
bb118:
  %__tmp283 = load i32, i32* %x, align 4
  %__tmp284 = srem i32 %__tmp283, 2
  %__tmp285 = icmp ne i32 %__tmp284, 0
  br i1 %__tmp285, label %bb123, label %bb125
bb125:
  br label %bb124
bb123:
  %__tmp286 = load i32, i32* %y, align 4
  %__tmp287 = srem i32 %__tmp286, 2
  %__tmp288 = icmp ne i32 %__tmp287, 0
  br label %bb124
bb124:
  %__tmp289 = phi i1 [ 0, %bb125 ], [ %__tmp288, %bb123 ]
  br i1 %__tmp289, label %bb120, label %bb121
bb120:
  %__tmp290 = load i32, i32* %ans, align 4
  %__tmp291 = load i32, i32* %i, align 4
  %__tmp292 = sext i32 %__tmp291 to i64
  %__tmp293 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp292
  %__tmp294 = load i32, i32* %__tmp293, align 4
  %__tmp295 = mul i32 1, %__tmp294
  %__tmp296 = add i32 %__tmp290, %__tmp295
  store i32 %__tmp296, i32* %ans, align 4
  br label %bb122
bb121:
  br label %bb122
bb122:
  %__tmp297 = load i32, i32* %x, align 4
  %__tmp298 = sdiv i32 %__tmp297, 2
  store i32 %__tmp298, i32* %x, align 4
  %__tmp299 = load i32, i32* %y, align 4
  %__tmp300 = sdiv i32 %__tmp299, 2
  store i32 %__tmp300, i32* %y, align 4
  %__tmp301 = load i32, i32* %i, align 4
  %__tmp302 = add i32 %__tmp301, 1
  store i32 %__tmp302, i32* %i, align 4
  br label %bb117
bb119:
  %__tmp303 = load i32, i32* %ans, align 4
  %__tmp304 = icmp ne i32 %__tmp303, 0
  br i1 %__tmp304, label %bb126, label %bb127
bb126:
  %__tmp305 = load i32, i32* %mres.1, align 4
  store i32 %__tmp305, i32* %al.2, align 4
  %__tmp306 = load i32, i32* %ml.1, align 4
  store i32 %__tmp306, i32* %c.2, align 4
  br label %bb129
bb129:
  %__tmp307 = load i32, i32* %c.2, align 4
  %__tmp308 = icmp ne i32 %__tmp307, 0
  br i1 %__tmp308, label %bb130, label %bb131
bb130:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp309 = load i32, i32* %al.2, align 4
  store i32 %__tmp309, i32* %x, align 4
  %__tmp310 = load i32, i32* %c.2, align 4
  store i32 %__tmp310, i32* %y, align 4
  br label %bb132
bb132:
  %__tmp311 = load i32, i32* %i, align 4
  %__tmp312 = icmp slt i32 %__tmp311, 16
  br i1 %__tmp312, label %bb133, label %bb134
bb133:
  %__tmp313 = load i32, i32* %x, align 4
  %__tmp314 = srem i32 %__tmp313, 2
  %__tmp315 = icmp ne i32 %__tmp314, 0
  br i1 %__tmp315, label %bb135, label %bb136
bb135:
  %__tmp316 = load i32, i32* %y, align 4
  %__tmp317 = srem i32 %__tmp316, 2
  %__tmp318 = icmp eq i32 %__tmp317, 0
  br i1 %__tmp318, label %bb138, label %bb139
bb138:
  %__tmp319 = load i32, i32* %ans, align 4
  %__tmp320 = load i32, i32* %i, align 4
  %__tmp321 = sext i32 %__tmp320 to i64
  %__tmp322 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp321
  %__tmp323 = load i32, i32* %__tmp322, align 4
  %__tmp324 = mul i32 1, %__tmp323
  %__tmp325 = add i32 %__tmp319, %__tmp324
  store i32 %__tmp325, i32* %ans, align 4
  br label %bb140
bb139:
  br label %bb140
bb140:
  br label %bb137
bb136:
  %__tmp326 = load i32, i32* %y, align 4
  %__tmp327 = srem i32 %__tmp326, 2
  %__tmp328 = icmp ne i32 %__tmp327, 0
  br i1 %__tmp328, label %bb141, label %bb142
bb141:
  %__tmp329 = load i32, i32* %ans, align 4
  %__tmp330 = load i32, i32* %i, align 4
  %__tmp331 = sext i32 %__tmp330 to i64
  %__tmp332 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp331
  %__tmp333 = load i32, i32* %__tmp332, align 4
  %__tmp334 = mul i32 1, %__tmp333
  %__tmp335 = add i32 %__tmp329, %__tmp334
  store i32 %__tmp335, i32* %ans, align 4
  br label %bb143
bb142:
  br label %bb143
bb143:
  br label %bb137
bb137:
  %__tmp336 = load i32, i32* %x, align 4
  %__tmp337 = sdiv i32 %__tmp336, 2
  store i32 %__tmp337, i32* %x, align 4
  %__tmp338 = load i32, i32* %y, align 4
  %__tmp339 = sdiv i32 %__tmp338, 2
  store i32 %__tmp339, i32* %y, align 4
  %__tmp340 = load i32, i32* %i, align 4
  %__tmp341 = add i32 %__tmp340, 1
  store i32 %__tmp341, i32* %i, align 4
  br label %bb132
bb134:
  %__tmp342 = load i32, i32* %ans, align 4
  store i32 %__tmp342, i32* %sum.2, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp343 = load i32, i32* %al.2, align 4
  store i32 %__tmp343, i32* %x, align 4
  %__tmp344 = load i32, i32* %c.2, align 4
  store i32 %__tmp344, i32* %y, align 4
  br label %bb144
bb144:
  %__tmp345 = load i32, i32* %i, align 4
  %__tmp346 = icmp slt i32 %__tmp345, 16
  br i1 %__tmp346, label %bb145, label %bb146
bb145:
  %__tmp347 = load i32, i32* %x, align 4
  %__tmp348 = srem i32 %__tmp347, 2
  %__tmp349 = icmp ne i32 %__tmp348, 0
  br i1 %__tmp349, label %bb150, label %bb152
bb152:
  br label %bb151
bb150:
  %__tmp350 = load i32, i32* %y, align 4
  %__tmp351 = srem i32 %__tmp350, 2
  %__tmp352 = icmp ne i32 %__tmp351, 0
  br label %bb151
bb151:
  %__tmp353 = phi i1 [ 0, %bb152 ], [ %__tmp352, %bb150 ]
  br i1 %__tmp353, label %bb147, label %bb148
bb147:
  %__tmp354 = load i32, i32* %ans, align 4
  %__tmp355 = load i32, i32* %i, align 4
  %__tmp356 = sext i32 %__tmp355 to i64
  %__tmp357 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp356
  %__tmp358 = load i32, i32* %__tmp357, align 4
  %__tmp359 = mul i32 1, %__tmp358
  %__tmp360 = add i32 %__tmp354, %__tmp359
  store i32 %__tmp360, i32* %ans, align 4
  br label %bb149
bb148:
  br label %bb149
bb149:
  %__tmp361 = load i32, i32* %x, align 4
  %__tmp362 = sdiv i32 %__tmp361, 2
  store i32 %__tmp362, i32* %x, align 4
  %__tmp363 = load i32, i32* %y, align 4
  %__tmp364 = sdiv i32 %__tmp363, 2
  store i32 %__tmp364, i32* %y, align 4
  %__tmp365 = load i32, i32* %i, align 4
  %__tmp366 = add i32 %__tmp365, 1
  store i32 %__tmp366, i32* %i, align 4
  br label %bb144
bb146:
  %__tmp367 = load i32, i32* %ans, align 4
  store i32 %__tmp367, i32* %c.2, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp368 = load i32, i32* %c.2, align 4
  %__tmp369 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp370 = load i32, i32* %__tmp369, align 4
  %__tmp371 = mul i32 %__tmp368, %__tmp370
  store i32 %__tmp371, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb156
bb156:
  %__tmp372 = load i32, i32* %i, align 4
  %__tmp373 = icmp slt i32 %__tmp372, 16
  br i1 %__tmp373, label %bb157, label %bb158
bb157:
  %__tmp374 = load i32, i32* %x, align 4
  %__tmp375 = srem i32 %__tmp374, 2
  %__tmp376 = icmp ne i32 %__tmp375, 0
  br i1 %__tmp376, label %bb162, label %bb164
bb164:
  br label %bb163
bb162:
  %__tmp377 = load i32, i32* %y, align 4
  %__tmp378 = srem i32 %__tmp377, 2
  %__tmp379 = icmp ne i32 %__tmp378, 0
  br label %bb163
bb163:
  %__tmp380 = phi i1 [ 0, %bb164 ], [ %__tmp379, %bb162 ]
  br i1 %__tmp380, label %bb159, label %bb160
bb159:
  %__tmp381 = load i32, i32* %ans, align 4
  %__tmp382 = load i32, i32* %i, align 4
  %__tmp383 = sext i32 %__tmp382 to i64
  %__tmp384 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp383
  %__tmp385 = load i32, i32* %__tmp384, align 4
  %__tmp386 = mul i32 1, %__tmp385
  %__tmp387 = add i32 %__tmp381, %__tmp386
  store i32 %__tmp387, i32* %ans, align 4
  br label %bb161
bb160:
  br label %bb161
bb161:
  %__tmp388 = load i32, i32* %x, align 4
  %__tmp389 = sdiv i32 %__tmp388, 2
  store i32 %__tmp389, i32* %x, align 4
  %__tmp390 = load i32, i32* %y, align 4
  %__tmp391 = sdiv i32 %__tmp390, 2
  store i32 %__tmp391, i32* %y, align 4
  %__tmp392 = load i32, i32* %i, align 4
  %__tmp393 = add i32 %__tmp392, 1
  store i32 %__tmp393, i32* %i, align 4
  br label %bb156
bb158:
  br label %bb155
bb155:
  %__tmp394 = load i32, i32* %ans, align 4
  store i32 %__tmp394, i32* %c.2, align 4
  %__tmp395 = load i32, i32* %sum.2, align 4
  store i32 %__tmp395, i32* %al.2, align 4
  br label %bb129
bb131:
  %__tmp396 = load i32, i32* %al.2, align 4
  store i32 %__tmp396, i32* %ans, align 4
  %__tmp397 = load i32, i32* %ans, align 4
  store i32 %__tmp397, i32* %mres.1, align 4
  br label %bb128
bb127:
  br label %bb128
bb128:
  %__tmp398 = load i32, i32* %ml.1, align 4
  store i32 %__tmp398, i32* %al.3, align 4
  %__tmp399 = load i32, i32* %ml.1, align 4
  store i32 %__tmp399, i32* %c.3, align 4
  br label %bb165
bb165:
  %__tmp400 = load i32, i32* %c.3, align 4
  %__tmp401 = icmp ne i32 %__tmp400, 0
  br i1 %__tmp401, label %bb166, label %bb167
bb166:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp402 = load i32, i32* %al.3, align 4
  store i32 %__tmp402, i32* %x, align 4
  %__tmp403 = load i32, i32* %c.3, align 4
  store i32 %__tmp403, i32* %y, align 4
  br label %bb168
bb168:
  %__tmp404 = load i32, i32* %i, align 4
  %__tmp405 = icmp slt i32 %__tmp404, 16
  br i1 %__tmp405, label %bb169, label %bb170
bb169:
  %__tmp406 = load i32, i32* %x, align 4
  %__tmp407 = srem i32 %__tmp406, 2
  %__tmp408 = icmp ne i32 %__tmp407, 0
  br i1 %__tmp408, label %bb171, label %bb172
bb171:
  %__tmp409 = load i32, i32* %y, align 4
  %__tmp410 = srem i32 %__tmp409, 2
  %__tmp411 = icmp eq i32 %__tmp410, 0
  br i1 %__tmp411, label %bb174, label %bb175
bb174:
  %__tmp412 = load i32, i32* %ans, align 4
  %__tmp413 = load i32, i32* %i, align 4
  %__tmp414 = sext i32 %__tmp413 to i64
  %__tmp415 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp414
  %__tmp416 = load i32, i32* %__tmp415, align 4
  %__tmp417 = mul i32 1, %__tmp416
  %__tmp418 = add i32 %__tmp412, %__tmp417
  store i32 %__tmp418, i32* %ans, align 4
  br label %bb176
bb175:
  br label %bb176
bb176:
  br label %bb173
bb172:
  %__tmp419 = load i32, i32* %y, align 4
  %__tmp420 = srem i32 %__tmp419, 2
  %__tmp421 = icmp ne i32 %__tmp420, 0
  br i1 %__tmp421, label %bb177, label %bb178
bb177:
  %__tmp422 = load i32, i32* %ans, align 4
  %__tmp423 = load i32, i32* %i, align 4
  %__tmp424 = sext i32 %__tmp423 to i64
  %__tmp425 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp424
  %__tmp426 = load i32, i32* %__tmp425, align 4
  %__tmp427 = mul i32 1, %__tmp426
  %__tmp428 = add i32 %__tmp422, %__tmp427
  store i32 %__tmp428, i32* %ans, align 4
  br label %bb179
bb178:
  br label %bb179
bb179:
  br label %bb173
bb173:
  %__tmp429 = load i32, i32* %x, align 4
  %__tmp430 = sdiv i32 %__tmp429, 2
  store i32 %__tmp430, i32* %x, align 4
  %__tmp431 = load i32, i32* %y, align 4
  %__tmp432 = sdiv i32 %__tmp431, 2
  store i32 %__tmp432, i32* %y, align 4
  %__tmp433 = load i32, i32* %i, align 4
  %__tmp434 = add i32 %__tmp433, 1
  store i32 %__tmp434, i32* %i, align 4
  br label %bb168
bb170:
  %__tmp435 = load i32, i32* %ans, align 4
  store i32 %__tmp435, i32* %sum.3, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp436 = load i32, i32* %al.3, align 4
  store i32 %__tmp436, i32* %x, align 4
  %__tmp437 = load i32, i32* %c.3, align 4
  store i32 %__tmp437, i32* %y, align 4
  br label %bb180
bb180:
  %__tmp438 = load i32, i32* %i, align 4
  %__tmp439 = icmp slt i32 %__tmp438, 16
  br i1 %__tmp439, label %bb181, label %bb182
bb181:
  %__tmp440 = load i32, i32* %x, align 4
  %__tmp441 = srem i32 %__tmp440, 2
  %__tmp442 = icmp ne i32 %__tmp441, 0
  br i1 %__tmp442, label %bb186, label %bb188
bb188:
  br label %bb187
bb186:
  %__tmp443 = load i32, i32* %y, align 4
  %__tmp444 = srem i32 %__tmp443, 2
  %__tmp445 = icmp ne i32 %__tmp444, 0
  br label %bb187
bb187:
  %__tmp446 = phi i1 [ 0, %bb188 ], [ %__tmp445, %bb186 ]
  br i1 %__tmp446, label %bb183, label %bb184
bb183:
  %__tmp447 = load i32, i32* %ans, align 4
  %__tmp448 = load i32, i32* %i, align 4
  %__tmp449 = sext i32 %__tmp448 to i64
  %__tmp450 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp449
  %__tmp451 = load i32, i32* %__tmp450, align 4
  %__tmp452 = mul i32 1, %__tmp451
  %__tmp453 = add i32 %__tmp447, %__tmp452
  store i32 %__tmp453, i32* %ans, align 4
  br label %bb185
bb184:
  br label %bb185
bb185:
  %__tmp454 = load i32, i32* %x, align 4
  %__tmp455 = sdiv i32 %__tmp454, 2
  store i32 %__tmp455, i32* %x, align 4
  %__tmp456 = load i32, i32* %y, align 4
  %__tmp457 = sdiv i32 %__tmp456, 2
  store i32 %__tmp457, i32* %y, align 4
  %__tmp458 = load i32, i32* %i, align 4
  %__tmp459 = add i32 %__tmp458, 1
  store i32 %__tmp459, i32* %i, align 4
  br label %bb180
bb182:
  %__tmp460 = load i32, i32* %ans, align 4
  store i32 %__tmp460, i32* %c.3, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp461 = load i32, i32* %c.3, align 4
  %__tmp462 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp463 = load i32, i32* %__tmp462, align 4
  %__tmp464 = mul i32 %__tmp461, %__tmp463
  store i32 %__tmp464, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb192
bb192:
  %__tmp465 = load i32, i32* %i, align 4
  %__tmp466 = icmp slt i32 %__tmp465, 16
  br i1 %__tmp466, label %bb193, label %bb194
bb193:
  %__tmp467 = load i32, i32* %x, align 4
  %__tmp468 = srem i32 %__tmp467, 2
  %__tmp469 = icmp ne i32 %__tmp468, 0
  br i1 %__tmp469, label %bb198, label %bb200
bb200:
  br label %bb199
bb198:
  %__tmp470 = load i32, i32* %y, align 4
  %__tmp471 = srem i32 %__tmp470, 2
  %__tmp472 = icmp ne i32 %__tmp471, 0
  br label %bb199
bb199:
  %__tmp473 = phi i1 [ 0, %bb200 ], [ %__tmp472, %bb198 ]
  br i1 %__tmp473, label %bb195, label %bb196
bb195:
  %__tmp474 = load i32, i32* %ans, align 4
  %__tmp475 = load i32, i32* %i, align 4
  %__tmp476 = sext i32 %__tmp475 to i64
  %__tmp477 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp476
  %__tmp478 = load i32, i32* %__tmp477, align 4
  %__tmp479 = mul i32 1, %__tmp478
  %__tmp480 = add i32 %__tmp474, %__tmp479
  store i32 %__tmp480, i32* %ans, align 4
  br label %bb197
bb196:
  br label %bb197
bb197:
  %__tmp481 = load i32, i32* %x, align 4
  %__tmp482 = sdiv i32 %__tmp481, 2
  store i32 %__tmp482, i32* %x, align 4
  %__tmp483 = load i32, i32* %y, align 4
  %__tmp484 = sdiv i32 %__tmp483, 2
  store i32 %__tmp484, i32* %y, align 4
  %__tmp485 = load i32, i32* %i, align 4
  %__tmp486 = add i32 %__tmp485, 1
  store i32 %__tmp486, i32* %i, align 4
  br label %bb192
bb194:
  br label %bb191
bb191:
  %__tmp487 = load i32, i32* %ans, align 4
  store i32 %__tmp487, i32* %c.3, align 4
  %__tmp488 = load i32, i32* %sum.3, align 4
  store i32 %__tmp488, i32* %al.3, align 4
  br label %bb165
bb167:
  %__tmp489 = load i32, i32* %al.3, align 4
  store i32 %__tmp489, i32* %ans, align 4
  %__tmp490 = load i32, i32* %ans, align 4
  store i32 %__tmp490, i32* %ml.1, align 4
  %__tmp491 = load i32, i32* %mr.1, align 4
  store i32 %__tmp491, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp492 = load i32, i32* %y, align 4
  %__tmp493 = icmp sge i32 %__tmp492, 15
  br i1 %__tmp493, label %bb201, label %bb202
bb201:
  %__tmp494 = load i32, i32* %x, align 4
  %__tmp495 = icmp slt i32 %__tmp494, 0
  br i1 %__tmp495, label %bb204, label %bb205
bb204:
  store i32 65535, i32* %ans, align 4
  br label %bb206
bb205:
  store i32 0, i32* %ans, align 4
  br label %bb206
bb206:
  br label %bb203
bb202:
  %__tmp496 = load i32, i32* %y, align 4
  %__tmp497 = icmp sgt i32 %__tmp496, 0
  br i1 %__tmp497, label %bb207, label %bb208
bb207:
  %__tmp498 = load i32, i32* %x, align 4
  %__tmp499 = icmp sgt i32 %__tmp498, 32767
  br i1 %__tmp499, label %bb210, label %bb211
bb210:
  %__tmp500 = load i32, i32* %x, align 4
  %__tmp501 = load i32, i32* %y, align 4
  %__tmp502 = sext i32 %__tmp501 to i64
  %__tmp503 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp502
  %__tmp504 = load i32, i32* %__tmp503, align 4
  %__tmp505 = sdiv i32 %__tmp500, %__tmp504
  store i32 %__tmp505, i32* %x, align 4
  %__tmp506 = load i32, i32* %x, align 4
  %__tmp507 = add i32 %__tmp506, 65536
  %__tmp508 = load i32, i32* %y, align 4
  %__tmp509 = sub i32 15, %__tmp508
  %__tmp510 = add i32 %__tmp509, 1
  %__tmp511 = sext i32 %__tmp510 to i64
  %__tmp512 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp511
  %__tmp513 = load i32, i32* %__tmp512, align 4
  %__tmp514 = sub i32 %__tmp507, %__tmp513
  store i32 %__tmp514, i32* %ans, align 4
  br label %bb212
bb211:
  %__tmp515 = load i32, i32* %x, align 4
  %__tmp516 = load i32, i32* %y, align 4
  %__tmp517 = sext i32 %__tmp516 to i64
  %__tmp518 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp517
  %__tmp519 = load i32, i32* %__tmp518, align 4
  %__tmp520 = sdiv i32 %__tmp515, %__tmp519
  store i32 %__tmp520, i32* %ans, align 4
  br label %bb212
bb212:
  br label %bb209
bb208:
  %__tmp521 = load i32, i32* %x, align 4
  store i32 %__tmp521, i32* %ans, align 4
  br label %bb209
bb209:
  br label %bb203
bb203:
  %__tmp522 = load i32, i32* %ans, align 4
  store i32 %__tmp522, i32* %mr.1, align 4
  br label %bb114
bb116:
  %__tmp523 = load i32, i32* %mres.1, align 4
  store i32 %__tmp523, i32* %ans, align 4
  %__tmp524 = load i32, i32* %ans, align 4
  store i32 %__tmp524, i32* %pl, align 4
  %__tmp525 = load i32, i32* %pr, align 4
  store i32 %__tmp525, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp526 = load i32, i32* %y, align 4
  %__tmp527 = icmp sge i32 %__tmp526, 15
  br i1 %__tmp527, label %bb213, label %bb214
bb213:
  %__tmp528 = load i32, i32* %x, align 4
  %__tmp529 = icmp slt i32 %__tmp528, 0
  br i1 %__tmp529, label %bb216, label %bb217
bb216:
  store i32 65535, i32* %ans, align 4
  br label %bb218
bb217:
  store i32 0, i32* %ans, align 4
  br label %bb218
bb218:
  br label %bb215
bb214:
  %__tmp530 = load i32, i32* %y, align 4
  %__tmp531 = icmp sgt i32 %__tmp530, 0
  br i1 %__tmp531, label %bb219, label %bb220
bb219:
  %__tmp532 = load i32, i32* %x, align 4
  %__tmp533 = icmp sgt i32 %__tmp532, 32767
  br i1 %__tmp533, label %bb222, label %bb223
bb222:
  %__tmp534 = load i32, i32* %x, align 4
  %__tmp535 = load i32, i32* %y, align 4
  %__tmp536 = sext i32 %__tmp535 to i64
  %__tmp537 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp536
  %__tmp538 = load i32, i32* %__tmp537, align 4
  %__tmp539 = sdiv i32 %__tmp534, %__tmp538
  store i32 %__tmp539, i32* %x, align 4
  %__tmp540 = load i32, i32* %x, align 4
  %__tmp541 = add i32 %__tmp540, 65536
  %__tmp542 = load i32, i32* %y, align 4
  %__tmp543 = sub i32 15, %__tmp542
  %__tmp544 = add i32 %__tmp543, 1
  %__tmp545 = sext i32 %__tmp544 to i64
  %__tmp546 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp545
  %__tmp547 = load i32, i32* %__tmp546, align 4
  %__tmp548 = sub i32 %__tmp541, %__tmp547
  store i32 %__tmp548, i32* %ans, align 4
  br label %bb224
bb223:
  %__tmp549 = load i32, i32* %x, align 4
  %__tmp550 = load i32, i32* %y, align 4
  %__tmp551 = sext i32 %__tmp550 to i64
  %__tmp552 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp551
  %__tmp553 = load i32, i32* %__tmp552, align 4
  %__tmp554 = sdiv i32 %__tmp549, %__tmp553
  store i32 %__tmp554, i32* %ans, align 4
  br label %bb224
bb224:
  br label %bb221
bb220:
  %__tmp555 = load i32, i32* %x, align 4
  store i32 %__tmp555, i32* %ans, align 4
  br label %bb221
bb221:
  br label %bb215
bb215:
  %__tmp556 = load i32, i32* %ans, align 4
  store i32 %__tmp556, i32* %pr, align 4
  br label %bb0
bb2:
  %__tmp557 = load i32, i32* %pres, align 4
  store i32 %__tmp557, i32* %ans, align 4
  %__tmp558 = load i32, i32* %ans, align 4
  call void @putint(i32 %__tmp558)
  call void @putch(i32 10)
  store i32 2, i32* %pl.1, align 4
  store i32 1, i32* %pr.1, align 4
  store i32 1, i32* %pres.1, align 4
  br label %bb225
bb225:
  %__tmp559 = load i32, i32* %pr.1, align 4
  %__tmp560 = icmp sgt i32 %__tmp559, 0
  br i1 %__tmp560, label %bb226, label %bb227
bb226:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp561 = load i32, i32* %pr.1, align 4
  store i32 %__tmp561, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb228
bb228:
  %__tmp562 = load i32, i32* %i, align 4
  %__tmp563 = icmp slt i32 %__tmp562, 16
  br i1 %__tmp563, label %bb229, label %bb230
bb229:
  %__tmp564 = load i32, i32* %x, align 4
  %__tmp565 = srem i32 %__tmp564, 2
  %__tmp566 = icmp ne i32 %__tmp565, 0
  br i1 %__tmp566, label %bb234, label %bb236
bb236:
  br label %bb235
bb234:
  %__tmp567 = load i32, i32* %y, align 4
  %__tmp568 = srem i32 %__tmp567, 2
  %__tmp569 = icmp ne i32 %__tmp568, 0
  br label %bb235
bb235:
  %__tmp570 = phi i1 [ 0, %bb236 ], [ %__tmp569, %bb234 ]
  br i1 %__tmp570, label %bb231, label %bb232
bb231:
  %__tmp571 = load i32, i32* %ans, align 4
  %__tmp572 = load i32, i32* %i, align 4
  %__tmp573 = sext i32 %__tmp572 to i64
  %__tmp574 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp573
  %__tmp575 = load i32, i32* %__tmp574, align 4
  %__tmp576 = mul i32 1, %__tmp575
  %__tmp577 = add i32 %__tmp571, %__tmp576
  store i32 %__tmp577, i32* %ans, align 4
  br label %bb233
bb232:
  br label %bb233
bb233:
  %__tmp578 = load i32, i32* %x, align 4
  %__tmp579 = sdiv i32 %__tmp578, 2
  store i32 %__tmp579, i32* %x, align 4
  %__tmp580 = load i32, i32* %y, align 4
  %__tmp581 = sdiv i32 %__tmp580, 2
  store i32 %__tmp581, i32* %y, align 4
  %__tmp582 = load i32, i32* %i, align 4
  %__tmp583 = add i32 %__tmp582, 1
  store i32 %__tmp583, i32* %i, align 4
  br label %bb228
bb230:
  %__tmp584 = load i32, i32* %ans, align 4
  %__tmp585 = icmp ne i32 %__tmp584, 0
  br i1 %__tmp585, label %bb237, label %bb238
bb237:
  %__tmp586 = load i32, i32* %pres.1, align 4
  store i32 %__tmp586, i32* %ml.2, align 4
  %__tmp587 = load i32, i32* %pl.1, align 4
  store i32 %__tmp587, i32* %mr.2, align 4
  store i32 0, i32* %mres.2, align 4
  br label %bb240
bb240:
  %__tmp588 = load i32, i32* %mr.2, align 4
  %__tmp589 = icmp ne i32 %__tmp588, 0
  br i1 %__tmp589, label %bb241, label %bb242
bb241:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp590 = load i32, i32* %mr.2, align 4
  store i32 %__tmp590, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb243
bb243:
  %__tmp591 = load i32, i32* %i, align 4
  %__tmp592 = icmp slt i32 %__tmp591, 16
  br i1 %__tmp592, label %bb244, label %bb245
bb244:
  %__tmp593 = load i32, i32* %x, align 4
  %__tmp594 = srem i32 %__tmp593, 2
  %__tmp595 = icmp ne i32 %__tmp594, 0
  br i1 %__tmp595, label %bb249, label %bb251
bb251:
  br label %bb250
bb249:
  %__tmp596 = load i32, i32* %y, align 4
  %__tmp597 = srem i32 %__tmp596, 2
  %__tmp598 = icmp ne i32 %__tmp597, 0
  br label %bb250
bb250:
  %__tmp599 = phi i1 [ 0, %bb251 ], [ %__tmp598, %bb249 ]
  br i1 %__tmp599, label %bb246, label %bb247
bb246:
  %__tmp600 = load i32, i32* %ans, align 4
  %__tmp601 = load i32, i32* %i, align 4
  %__tmp602 = sext i32 %__tmp601 to i64
  %__tmp603 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp602
  %__tmp604 = load i32, i32* %__tmp603, align 4
  %__tmp605 = mul i32 1, %__tmp604
  %__tmp606 = add i32 %__tmp600, %__tmp605
  store i32 %__tmp606, i32* %ans, align 4
  br label %bb248
bb247:
  br label %bb248
bb248:
  %__tmp607 = load i32, i32* %x, align 4
  %__tmp608 = sdiv i32 %__tmp607, 2
  store i32 %__tmp608, i32* %x, align 4
  %__tmp609 = load i32, i32* %y, align 4
  %__tmp610 = sdiv i32 %__tmp609, 2
  store i32 %__tmp610, i32* %y, align 4
  %__tmp611 = load i32, i32* %i, align 4
  %__tmp612 = add i32 %__tmp611, 1
  store i32 %__tmp612, i32* %i, align 4
  br label %bb243
bb245:
  %__tmp613 = load i32, i32* %ans, align 4
  %__tmp614 = icmp ne i32 %__tmp613, 0
  br i1 %__tmp614, label %bb252, label %bb253
bb252:
  %__tmp615 = load i32, i32* %mres.2, align 4
  store i32 %__tmp615, i32* %al.4, align 4
  %__tmp616 = load i32, i32* %ml.2, align 4
  store i32 %__tmp616, i32* %c.4, align 4
  br label %bb255
bb255:
  %__tmp617 = load i32, i32* %c.4, align 4
  %__tmp618 = icmp ne i32 %__tmp617, 0
  br i1 %__tmp618, label %bb256, label %bb257
bb256:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp619 = load i32, i32* %al.4, align 4
  store i32 %__tmp619, i32* %x, align 4
  %__tmp620 = load i32, i32* %c.4, align 4
  store i32 %__tmp620, i32* %y, align 4
  br label %bb258
bb258:
  %__tmp621 = load i32, i32* %i, align 4
  %__tmp622 = icmp slt i32 %__tmp621, 16
  br i1 %__tmp622, label %bb259, label %bb260
bb259:
  %__tmp623 = load i32, i32* %x, align 4
  %__tmp624 = srem i32 %__tmp623, 2
  %__tmp625 = icmp ne i32 %__tmp624, 0
  br i1 %__tmp625, label %bb261, label %bb262
bb261:
  %__tmp626 = load i32, i32* %y, align 4
  %__tmp627 = srem i32 %__tmp626, 2
  %__tmp628 = icmp eq i32 %__tmp627, 0
  br i1 %__tmp628, label %bb264, label %bb265
bb264:
  %__tmp629 = load i32, i32* %ans, align 4
  %__tmp630 = load i32, i32* %i, align 4
  %__tmp631 = sext i32 %__tmp630 to i64
  %__tmp632 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp631
  %__tmp633 = load i32, i32* %__tmp632, align 4
  %__tmp634 = mul i32 1, %__tmp633
  %__tmp635 = add i32 %__tmp629, %__tmp634
  store i32 %__tmp635, i32* %ans, align 4
  br label %bb266
bb265:
  br label %bb266
bb266:
  br label %bb263
bb262:
  %__tmp636 = load i32, i32* %y, align 4
  %__tmp637 = srem i32 %__tmp636, 2
  %__tmp638 = icmp ne i32 %__tmp637, 0
  br i1 %__tmp638, label %bb267, label %bb268
bb267:
  %__tmp639 = load i32, i32* %ans, align 4
  %__tmp640 = load i32, i32* %i, align 4
  %__tmp641 = sext i32 %__tmp640 to i64
  %__tmp642 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp641
  %__tmp643 = load i32, i32* %__tmp642, align 4
  %__tmp644 = mul i32 1, %__tmp643
  %__tmp645 = add i32 %__tmp639, %__tmp644
  store i32 %__tmp645, i32* %ans, align 4
  br label %bb269
bb268:
  br label %bb269
bb269:
  br label %bb263
bb263:
  %__tmp646 = load i32, i32* %x, align 4
  %__tmp647 = sdiv i32 %__tmp646, 2
  store i32 %__tmp647, i32* %x, align 4
  %__tmp648 = load i32, i32* %y, align 4
  %__tmp649 = sdiv i32 %__tmp648, 2
  store i32 %__tmp649, i32* %y, align 4
  %__tmp650 = load i32, i32* %i, align 4
  %__tmp651 = add i32 %__tmp650, 1
  store i32 %__tmp651, i32* %i, align 4
  br label %bb258
bb260:
  %__tmp652 = load i32, i32* %ans, align 4
  store i32 %__tmp652, i32* %sum.4, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp653 = load i32, i32* %al.4, align 4
  store i32 %__tmp653, i32* %x, align 4
  %__tmp654 = load i32, i32* %c.4, align 4
  store i32 %__tmp654, i32* %y, align 4
  br label %bb270
bb270:
  %__tmp655 = load i32, i32* %i, align 4
  %__tmp656 = icmp slt i32 %__tmp655, 16
  br i1 %__tmp656, label %bb271, label %bb272
bb271:
  %__tmp657 = load i32, i32* %x, align 4
  %__tmp658 = srem i32 %__tmp657, 2
  %__tmp659 = icmp ne i32 %__tmp658, 0
  br i1 %__tmp659, label %bb276, label %bb278
bb278:
  br label %bb277
bb276:
  %__tmp660 = load i32, i32* %y, align 4
  %__tmp661 = srem i32 %__tmp660, 2
  %__tmp662 = icmp ne i32 %__tmp661, 0
  br label %bb277
bb277:
  %__tmp663 = phi i1 [ 0, %bb278 ], [ %__tmp662, %bb276 ]
  br i1 %__tmp663, label %bb273, label %bb274
bb273:
  %__tmp664 = load i32, i32* %ans, align 4
  %__tmp665 = load i32, i32* %i, align 4
  %__tmp666 = sext i32 %__tmp665 to i64
  %__tmp667 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp666
  %__tmp668 = load i32, i32* %__tmp667, align 4
  %__tmp669 = mul i32 1, %__tmp668
  %__tmp670 = add i32 %__tmp664, %__tmp669
  store i32 %__tmp670, i32* %ans, align 4
  br label %bb275
bb274:
  br label %bb275
bb275:
  %__tmp671 = load i32, i32* %x, align 4
  %__tmp672 = sdiv i32 %__tmp671, 2
  store i32 %__tmp672, i32* %x, align 4
  %__tmp673 = load i32, i32* %y, align 4
  %__tmp674 = sdiv i32 %__tmp673, 2
  store i32 %__tmp674, i32* %y, align 4
  %__tmp675 = load i32, i32* %i, align 4
  %__tmp676 = add i32 %__tmp675, 1
  store i32 %__tmp676, i32* %i, align 4
  br label %bb270
bb272:
  %__tmp677 = load i32, i32* %ans, align 4
  store i32 %__tmp677, i32* %c.4, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp678 = load i32, i32* %c.4, align 4
  %__tmp679 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp680 = load i32, i32* %__tmp679, align 4
  %__tmp681 = mul i32 %__tmp678, %__tmp680
  store i32 %__tmp681, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb282
bb282:
  %__tmp682 = load i32, i32* %i, align 4
  %__tmp683 = icmp slt i32 %__tmp682, 16
  br i1 %__tmp683, label %bb283, label %bb284
bb283:
  %__tmp684 = load i32, i32* %x, align 4
  %__tmp685 = srem i32 %__tmp684, 2
  %__tmp686 = icmp ne i32 %__tmp685, 0
  br i1 %__tmp686, label %bb288, label %bb290
bb290:
  br label %bb289
bb288:
  %__tmp687 = load i32, i32* %y, align 4
  %__tmp688 = srem i32 %__tmp687, 2
  %__tmp689 = icmp ne i32 %__tmp688, 0
  br label %bb289
bb289:
  %__tmp690 = phi i1 [ 0, %bb290 ], [ %__tmp689, %bb288 ]
  br i1 %__tmp690, label %bb285, label %bb286
bb285:
  %__tmp691 = load i32, i32* %ans, align 4
  %__tmp692 = load i32, i32* %i, align 4
  %__tmp693 = sext i32 %__tmp692 to i64
  %__tmp694 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp693
  %__tmp695 = load i32, i32* %__tmp694, align 4
  %__tmp696 = mul i32 1, %__tmp695
  %__tmp697 = add i32 %__tmp691, %__tmp696
  store i32 %__tmp697, i32* %ans, align 4
  br label %bb287
bb286:
  br label %bb287
bb287:
  %__tmp698 = load i32, i32* %x, align 4
  %__tmp699 = sdiv i32 %__tmp698, 2
  store i32 %__tmp699, i32* %x, align 4
  %__tmp700 = load i32, i32* %y, align 4
  %__tmp701 = sdiv i32 %__tmp700, 2
  store i32 %__tmp701, i32* %y, align 4
  %__tmp702 = load i32, i32* %i, align 4
  %__tmp703 = add i32 %__tmp702, 1
  store i32 %__tmp703, i32* %i, align 4
  br label %bb282
bb284:
  br label %bb281
bb281:
  %__tmp704 = load i32, i32* %ans, align 4
  store i32 %__tmp704, i32* %c.4, align 4
  %__tmp705 = load i32, i32* %sum.4, align 4
  store i32 %__tmp705, i32* %al.4, align 4
  br label %bb255
bb257:
  %__tmp706 = load i32, i32* %al.4, align 4
  store i32 %__tmp706, i32* %ans, align 4
  %__tmp707 = load i32, i32* %ans, align 4
  store i32 %__tmp707, i32* %mres.2, align 4
  br label %bb254
bb253:
  br label %bb254
bb254:
  %__tmp708 = load i32, i32* %ml.2, align 4
  store i32 %__tmp708, i32* %al.5, align 4
  %__tmp709 = load i32, i32* %ml.2, align 4
  store i32 %__tmp709, i32* %c.5, align 4
  br label %bb291
bb291:
  %__tmp710 = load i32, i32* %c.5, align 4
  %__tmp711 = icmp ne i32 %__tmp710, 0
  br i1 %__tmp711, label %bb292, label %bb293
bb292:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp712 = load i32, i32* %al.5, align 4
  store i32 %__tmp712, i32* %x, align 4
  %__tmp713 = load i32, i32* %c.5, align 4
  store i32 %__tmp713, i32* %y, align 4
  br label %bb294
bb294:
  %__tmp714 = load i32, i32* %i, align 4
  %__tmp715 = icmp slt i32 %__tmp714, 16
  br i1 %__tmp715, label %bb295, label %bb296
bb295:
  %__tmp716 = load i32, i32* %x, align 4
  %__tmp717 = srem i32 %__tmp716, 2
  %__tmp718 = icmp ne i32 %__tmp717, 0
  br i1 %__tmp718, label %bb297, label %bb298
bb297:
  %__tmp719 = load i32, i32* %y, align 4
  %__tmp720 = srem i32 %__tmp719, 2
  %__tmp721 = icmp eq i32 %__tmp720, 0
  br i1 %__tmp721, label %bb300, label %bb301
bb300:
  %__tmp722 = load i32, i32* %ans, align 4
  %__tmp723 = load i32, i32* %i, align 4
  %__tmp724 = sext i32 %__tmp723 to i64
  %__tmp725 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp724
  %__tmp726 = load i32, i32* %__tmp725, align 4
  %__tmp727 = mul i32 1, %__tmp726
  %__tmp728 = add i32 %__tmp722, %__tmp727
  store i32 %__tmp728, i32* %ans, align 4
  br label %bb302
bb301:
  br label %bb302
bb302:
  br label %bb299
bb298:
  %__tmp729 = load i32, i32* %y, align 4
  %__tmp730 = srem i32 %__tmp729, 2
  %__tmp731 = icmp ne i32 %__tmp730, 0
  br i1 %__tmp731, label %bb303, label %bb304
bb303:
  %__tmp732 = load i32, i32* %ans, align 4
  %__tmp733 = load i32, i32* %i, align 4
  %__tmp734 = sext i32 %__tmp733 to i64
  %__tmp735 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp734
  %__tmp736 = load i32, i32* %__tmp735, align 4
  %__tmp737 = mul i32 1, %__tmp736
  %__tmp738 = add i32 %__tmp732, %__tmp737
  store i32 %__tmp738, i32* %ans, align 4
  br label %bb305
bb304:
  br label %bb305
bb305:
  br label %bb299
bb299:
  %__tmp739 = load i32, i32* %x, align 4
  %__tmp740 = sdiv i32 %__tmp739, 2
  store i32 %__tmp740, i32* %x, align 4
  %__tmp741 = load i32, i32* %y, align 4
  %__tmp742 = sdiv i32 %__tmp741, 2
  store i32 %__tmp742, i32* %y, align 4
  %__tmp743 = load i32, i32* %i, align 4
  %__tmp744 = add i32 %__tmp743, 1
  store i32 %__tmp744, i32* %i, align 4
  br label %bb294
bb296:
  %__tmp745 = load i32, i32* %ans, align 4
  store i32 %__tmp745, i32* %sum.5, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp746 = load i32, i32* %al.5, align 4
  store i32 %__tmp746, i32* %x, align 4
  %__tmp747 = load i32, i32* %c.5, align 4
  store i32 %__tmp747, i32* %y, align 4
  br label %bb306
bb306:
  %__tmp748 = load i32, i32* %i, align 4
  %__tmp749 = icmp slt i32 %__tmp748, 16
  br i1 %__tmp749, label %bb307, label %bb308
bb307:
  %__tmp750 = load i32, i32* %x, align 4
  %__tmp751 = srem i32 %__tmp750, 2
  %__tmp752 = icmp ne i32 %__tmp751, 0
  br i1 %__tmp752, label %bb312, label %bb314
bb314:
  br label %bb313
bb312:
  %__tmp753 = load i32, i32* %y, align 4
  %__tmp754 = srem i32 %__tmp753, 2
  %__tmp755 = icmp ne i32 %__tmp754, 0
  br label %bb313
bb313:
  %__tmp756 = phi i1 [ 0, %bb314 ], [ %__tmp755, %bb312 ]
  br i1 %__tmp756, label %bb309, label %bb310
bb309:
  %__tmp757 = load i32, i32* %ans, align 4
  %__tmp758 = load i32, i32* %i, align 4
  %__tmp759 = sext i32 %__tmp758 to i64
  %__tmp760 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp759
  %__tmp761 = load i32, i32* %__tmp760, align 4
  %__tmp762 = mul i32 1, %__tmp761
  %__tmp763 = add i32 %__tmp757, %__tmp762
  store i32 %__tmp763, i32* %ans, align 4
  br label %bb311
bb310:
  br label %bb311
bb311:
  %__tmp764 = load i32, i32* %x, align 4
  %__tmp765 = sdiv i32 %__tmp764, 2
  store i32 %__tmp765, i32* %x, align 4
  %__tmp766 = load i32, i32* %y, align 4
  %__tmp767 = sdiv i32 %__tmp766, 2
  store i32 %__tmp767, i32* %y, align 4
  %__tmp768 = load i32, i32* %i, align 4
  %__tmp769 = add i32 %__tmp768, 1
  store i32 %__tmp769, i32* %i, align 4
  br label %bb306
bb308:
  %__tmp770 = load i32, i32* %ans, align 4
  store i32 %__tmp770, i32* %c.5, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp771 = load i32, i32* %c.5, align 4
  %__tmp772 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp773 = load i32, i32* %__tmp772, align 4
  %__tmp774 = mul i32 %__tmp771, %__tmp773
  store i32 %__tmp774, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb318
bb318:
  %__tmp775 = load i32, i32* %i, align 4
  %__tmp776 = icmp slt i32 %__tmp775, 16
  br i1 %__tmp776, label %bb319, label %bb320
bb319:
  %__tmp777 = load i32, i32* %x, align 4
  %__tmp778 = srem i32 %__tmp777, 2
  %__tmp779 = icmp ne i32 %__tmp778, 0
  br i1 %__tmp779, label %bb324, label %bb326
bb326:
  br label %bb325
bb324:
  %__tmp780 = load i32, i32* %y, align 4
  %__tmp781 = srem i32 %__tmp780, 2
  %__tmp782 = icmp ne i32 %__tmp781, 0
  br label %bb325
bb325:
  %__tmp783 = phi i1 [ 0, %bb326 ], [ %__tmp782, %bb324 ]
  br i1 %__tmp783, label %bb321, label %bb322
bb321:
  %__tmp784 = load i32, i32* %ans, align 4
  %__tmp785 = load i32, i32* %i, align 4
  %__tmp786 = sext i32 %__tmp785 to i64
  %__tmp787 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp786
  %__tmp788 = load i32, i32* %__tmp787, align 4
  %__tmp789 = mul i32 1, %__tmp788
  %__tmp790 = add i32 %__tmp784, %__tmp789
  store i32 %__tmp790, i32* %ans, align 4
  br label %bb323
bb322:
  br label %bb323
bb323:
  %__tmp791 = load i32, i32* %x, align 4
  %__tmp792 = sdiv i32 %__tmp791, 2
  store i32 %__tmp792, i32* %x, align 4
  %__tmp793 = load i32, i32* %y, align 4
  %__tmp794 = sdiv i32 %__tmp793, 2
  store i32 %__tmp794, i32* %y, align 4
  %__tmp795 = load i32, i32* %i, align 4
  %__tmp796 = add i32 %__tmp795, 1
  store i32 %__tmp796, i32* %i, align 4
  br label %bb318
bb320:
  br label %bb317
bb317:
  %__tmp797 = load i32, i32* %ans, align 4
  store i32 %__tmp797, i32* %c.5, align 4
  %__tmp798 = load i32, i32* %sum.5, align 4
  store i32 %__tmp798, i32* %al.5, align 4
  br label %bb291
bb293:
  %__tmp799 = load i32, i32* %al.5, align 4
  store i32 %__tmp799, i32* %ans, align 4
  %__tmp800 = load i32, i32* %ans, align 4
  store i32 %__tmp800, i32* %ml.2, align 4
  %__tmp801 = load i32, i32* %mr.2, align 4
  store i32 %__tmp801, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp802 = load i32, i32* %y, align 4
  %__tmp803 = icmp sge i32 %__tmp802, 15
  br i1 %__tmp803, label %bb327, label %bb328
bb327:
  %__tmp804 = load i32, i32* %x, align 4
  %__tmp805 = icmp slt i32 %__tmp804, 0
  br i1 %__tmp805, label %bb330, label %bb331
bb330:
  store i32 65535, i32* %ans, align 4
  br label %bb332
bb331:
  store i32 0, i32* %ans, align 4
  br label %bb332
bb332:
  br label %bb329
bb328:
  %__tmp806 = load i32, i32* %y, align 4
  %__tmp807 = icmp sgt i32 %__tmp806, 0
  br i1 %__tmp807, label %bb333, label %bb334
bb333:
  %__tmp808 = load i32, i32* %x, align 4
  %__tmp809 = icmp sgt i32 %__tmp808, 32767
  br i1 %__tmp809, label %bb336, label %bb337
bb336:
  %__tmp810 = load i32, i32* %x, align 4
  %__tmp811 = load i32, i32* %y, align 4
  %__tmp812 = sext i32 %__tmp811 to i64
  %__tmp813 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp812
  %__tmp814 = load i32, i32* %__tmp813, align 4
  %__tmp815 = sdiv i32 %__tmp810, %__tmp814
  store i32 %__tmp815, i32* %x, align 4
  %__tmp816 = load i32, i32* %x, align 4
  %__tmp817 = add i32 %__tmp816, 65536
  %__tmp818 = load i32, i32* %y, align 4
  %__tmp819 = sub i32 15, %__tmp818
  %__tmp820 = add i32 %__tmp819, 1
  %__tmp821 = sext i32 %__tmp820 to i64
  %__tmp822 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp821
  %__tmp823 = load i32, i32* %__tmp822, align 4
  %__tmp824 = sub i32 %__tmp817, %__tmp823
  store i32 %__tmp824, i32* %ans, align 4
  br label %bb338
bb337:
  %__tmp825 = load i32, i32* %x, align 4
  %__tmp826 = load i32, i32* %y, align 4
  %__tmp827 = sext i32 %__tmp826 to i64
  %__tmp828 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp827
  %__tmp829 = load i32, i32* %__tmp828, align 4
  %__tmp830 = sdiv i32 %__tmp825, %__tmp829
  store i32 %__tmp830, i32* %ans, align 4
  br label %bb338
bb338:
  br label %bb335
bb334:
  %__tmp831 = load i32, i32* %x, align 4
  store i32 %__tmp831, i32* %ans, align 4
  br label %bb335
bb335:
  br label %bb329
bb329:
  %__tmp832 = load i32, i32* %ans, align 4
  store i32 %__tmp832, i32* %mr.2, align 4
  br label %bb240
bb242:
  %__tmp833 = load i32, i32* %mres.2, align 4
  store i32 %__tmp833, i32* %ans, align 4
  %__tmp834 = load i32, i32* %ans, align 4
  store i32 %__tmp834, i32* %pres.1, align 4
  br label %bb239
bb238:
  br label %bb239
bb239:
  %__tmp835 = load i32, i32* %pl.1, align 4
  store i32 %__tmp835, i32* %ml.3, align 4
  %__tmp836 = load i32, i32* %pl.1, align 4
  store i32 %__tmp836, i32* %mr.3, align 4
  store i32 0, i32* %mres.3, align 4
  br label %bb339
bb339:
  %__tmp837 = load i32, i32* %mr.3, align 4
  %__tmp838 = icmp ne i32 %__tmp837, 0
  br i1 %__tmp838, label %bb340, label %bb341
bb340:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp839 = load i32, i32* %mr.3, align 4
  store i32 %__tmp839, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb342
bb342:
  %__tmp840 = load i32, i32* %i, align 4
  %__tmp841 = icmp slt i32 %__tmp840, 16
  br i1 %__tmp841, label %bb343, label %bb344
bb343:
  %__tmp842 = load i32, i32* %x, align 4
  %__tmp843 = srem i32 %__tmp842, 2
  %__tmp844 = icmp ne i32 %__tmp843, 0
  br i1 %__tmp844, label %bb348, label %bb350
bb350:
  br label %bb349
bb348:
  %__tmp845 = load i32, i32* %y, align 4
  %__tmp846 = srem i32 %__tmp845, 2
  %__tmp847 = icmp ne i32 %__tmp846, 0
  br label %bb349
bb349:
  %__tmp848 = phi i1 [ 0, %bb350 ], [ %__tmp847, %bb348 ]
  br i1 %__tmp848, label %bb345, label %bb346
bb345:
  %__tmp849 = load i32, i32* %ans, align 4
  %__tmp850 = load i32, i32* %i, align 4
  %__tmp851 = sext i32 %__tmp850 to i64
  %__tmp852 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp851
  %__tmp853 = load i32, i32* %__tmp852, align 4
  %__tmp854 = mul i32 1, %__tmp853
  %__tmp855 = add i32 %__tmp849, %__tmp854
  store i32 %__tmp855, i32* %ans, align 4
  br label %bb347
bb346:
  br label %bb347
bb347:
  %__tmp856 = load i32, i32* %x, align 4
  %__tmp857 = sdiv i32 %__tmp856, 2
  store i32 %__tmp857, i32* %x, align 4
  %__tmp858 = load i32, i32* %y, align 4
  %__tmp859 = sdiv i32 %__tmp858, 2
  store i32 %__tmp859, i32* %y, align 4
  %__tmp860 = load i32, i32* %i, align 4
  %__tmp861 = add i32 %__tmp860, 1
  store i32 %__tmp861, i32* %i, align 4
  br label %bb342
bb344:
  %__tmp862 = load i32, i32* %ans, align 4
  %__tmp863 = icmp ne i32 %__tmp862, 0
  br i1 %__tmp863, label %bb351, label %bb352
bb351:
  %__tmp864 = load i32, i32* %mres.3, align 4
  store i32 %__tmp864, i32* %al.6, align 4
  %__tmp865 = load i32, i32* %ml.3, align 4
  store i32 %__tmp865, i32* %c.6, align 4
  br label %bb354
bb354:
  %__tmp866 = load i32, i32* %c.6, align 4
  %__tmp867 = icmp ne i32 %__tmp866, 0
  br i1 %__tmp867, label %bb355, label %bb356
bb355:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp868 = load i32, i32* %al.6, align 4
  store i32 %__tmp868, i32* %x, align 4
  %__tmp869 = load i32, i32* %c.6, align 4
  store i32 %__tmp869, i32* %y, align 4
  br label %bb357
bb357:
  %__tmp870 = load i32, i32* %i, align 4
  %__tmp871 = icmp slt i32 %__tmp870, 16
  br i1 %__tmp871, label %bb358, label %bb359
bb358:
  %__tmp872 = load i32, i32* %x, align 4
  %__tmp873 = srem i32 %__tmp872, 2
  %__tmp874 = icmp ne i32 %__tmp873, 0
  br i1 %__tmp874, label %bb360, label %bb361
bb360:
  %__tmp875 = load i32, i32* %y, align 4
  %__tmp876 = srem i32 %__tmp875, 2
  %__tmp877 = icmp eq i32 %__tmp876, 0
  br i1 %__tmp877, label %bb363, label %bb364
bb363:
  %__tmp878 = load i32, i32* %ans, align 4
  %__tmp879 = load i32, i32* %i, align 4
  %__tmp880 = sext i32 %__tmp879 to i64
  %__tmp881 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp880
  %__tmp882 = load i32, i32* %__tmp881, align 4
  %__tmp883 = mul i32 1, %__tmp882
  %__tmp884 = add i32 %__tmp878, %__tmp883
  store i32 %__tmp884, i32* %ans, align 4
  br label %bb365
bb364:
  br label %bb365
bb365:
  br label %bb362
bb361:
  %__tmp885 = load i32, i32* %y, align 4
  %__tmp886 = srem i32 %__tmp885, 2
  %__tmp887 = icmp ne i32 %__tmp886, 0
  br i1 %__tmp887, label %bb366, label %bb367
bb366:
  %__tmp888 = load i32, i32* %ans, align 4
  %__tmp889 = load i32, i32* %i, align 4
  %__tmp890 = sext i32 %__tmp889 to i64
  %__tmp891 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp890
  %__tmp892 = load i32, i32* %__tmp891, align 4
  %__tmp893 = mul i32 1, %__tmp892
  %__tmp894 = add i32 %__tmp888, %__tmp893
  store i32 %__tmp894, i32* %ans, align 4
  br label %bb368
bb367:
  br label %bb368
bb368:
  br label %bb362
bb362:
  %__tmp895 = load i32, i32* %x, align 4
  %__tmp896 = sdiv i32 %__tmp895, 2
  store i32 %__tmp896, i32* %x, align 4
  %__tmp897 = load i32, i32* %y, align 4
  %__tmp898 = sdiv i32 %__tmp897, 2
  store i32 %__tmp898, i32* %y, align 4
  %__tmp899 = load i32, i32* %i, align 4
  %__tmp900 = add i32 %__tmp899, 1
  store i32 %__tmp900, i32* %i, align 4
  br label %bb357
bb359:
  %__tmp901 = load i32, i32* %ans, align 4
  store i32 %__tmp901, i32* %sum.6, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp902 = load i32, i32* %al.6, align 4
  store i32 %__tmp902, i32* %x, align 4
  %__tmp903 = load i32, i32* %c.6, align 4
  store i32 %__tmp903, i32* %y, align 4
  br label %bb369
bb369:
  %__tmp904 = load i32, i32* %i, align 4
  %__tmp905 = icmp slt i32 %__tmp904, 16
  br i1 %__tmp905, label %bb370, label %bb371
bb370:
  %__tmp906 = load i32, i32* %x, align 4
  %__tmp907 = srem i32 %__tmp906, 2
  %__tmp908 = icmp ne i32 %__tmp907, 0
  br i1 %__tmp908, label %bb375, label %bb377
bb377:
  br label %bb376
bb375:
  %__tmp909 = load i32, i32* %y, align 4
  %__tmp910 = srem i32 %__tmp909, 2
  %__tmp911 = icmp ne i32 %__tmp910, 0
  br label %bb376
bb376:
  %__tmp912 = phi i1 [ 0, %bb377 ], [ %__tmp911, %bb375 ]
  br i1 %__tmp912, label %bb372, label %bb373
bb372:
  %__tmp913 = load i32, i32* %ans, align 4
  %__tmp914 = load i32, i32* %i, align 4
  %__tmp915 = sext i32 %__tmp914 to i64
  %__tmp916 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp915
  %__tmp917 = load i32, i32* %__tmp916, align 4
  %__tmp918 = mul i32 1, %__tmp917
  %__tmp919 = add i32 %__tmp913, %__tmp918
  store i32 %__tmp919, i32* %ans, align 4
  br label %bb374
bb373:
  br label %bb374
bb374:
  %__tmp920 = load i32, i32* %x, align 4
  %__tmp921 = sdiv i32 %__tmp920, 2
  store i32 %__tmp921, i32* %x, align 4
  %__tmp922 = load i32, i32* %y, align 4
  %__tmp923 = sdiv i32 %__tmp922, 2
  store i32 %__tmp923, i32* %y, align 4
  %__tmp924 = load i32, i32* %i, align 4
  %__tmp925 = add i32 %__tmp924, 1
  store i32 %__tmp925, i32* %i, align 4
  br label %bb369
bb371:
  %__tmp926 = load i32, i32* %ans, align 4
  store i32 %__tmp926, i32* %c.6, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp927 = load i32, i32* %c.6, align 4
  %__tmp928 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp929 = load i32, i32* %__tmp928, align 4
  %__tmp930 = mul i32 %__tmp927, %__tmp929
  store i32 %__tmp930, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb381
bb381:
  %__tmp931 = load i32, i32* %i, align 4
  %__tmp932 = icmp slt i32 %__tmp931, 16
  br i1 %__tmp932, label %bb382, label %bb383
bb382:
  %__tmp933 = load i32, i32* %x, align 4
  %__tmp934 = srem i32 %__tmp933, 2
  %__tmp935 = icmp ne i32 %__tmp934, 0
  br i1 %__tmp935, label %bb387, label %bb389
bb389:
  br label %bb388
bb387:
  %__tmp936 = load i32, i32* %y, align 4
  %__tmp937 = srem i32 %__tmp936, 2
  %__tmp938 = icmp ne i32 %__tmp937, 0
  br label %bb388
bb388:
  %__tmp939 = phi i1 [ 0, %bb389 ], [ %__tmp938, %bb387 ]
  br i1 %__tmp939, label %bb384, label %bb385
bb384:
  %__tmp940 = load i32, i32* %ans, align 4
  %__tmp941 = load i32, i32* %i, align 4
  %__tmp942 = sext i32 %__tmp941 to i64
  %__tmp943 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp942
  %__tmp944 = load i32, i32* %__tmp943, align 4
  %__tmp945 = mul i32 1, %__tmp944
  %__tmp946 = add i32 %__tmp940, %__tmp945
  store i32 %__tmp946, i32* %ans, align 4
  br label %bb386
bb385:
  br label %bb386
bb386:
  %__tmp947 = load i32, i32* %x, align 4
  %__tmp948 = sdiv i32 %__tmp947, 2
  store i32 %__tmp948, i32* %x, align 4
  %__tmp949 = load i32, i32* %y, align 4
  %__tmp950 = sdiv i32 %__tmp949, 2
  store i32 %__tmp950, i32* %y, align 4
  %__tmp951 = load i32, i32* %i, align 4
  %__tmp952 = add i32 %__tmp951, 1
  store i32 %__tmp952, i32* %i, align 4
  br label %bb381
bb383:
  br label %bb380
bb380:
  %__tmp953 = load i32, i32* %ans, align 4
  store i32 %__tmp953, i32* %c.6, align 4
  %__tmp954 = load i32, i32* %sum.6, align 4
  store i32 %__tmp954, i32* %al.6, align 4
  br label %bb354
bb356:
  %__tmp955 = load i32, i32* %al.6, align 4
  store i32 %__tmp955, i32* %ans, align 4
  %__tmp956 = load i32, i32* %ans, align 4
  store i32 %__tmp956, i32* %mres.3, align 4
  br label %bb353
bb352:
  br label %bb353
bb353:
  %__tmp957 = load i32, i32* %ml.3, align 4
  store i32 %__tmp957, i32* %al.7, align 4
  %__tmp958 = load i32, i32* %ml.3, align 4
  store i32 %__tmp958, i32* %c.7, align 4
  br label %bb390
bb390:
  %__tmp959 = load i32, i32* %c.7, align 4
  %__tmp960 = icmp ne i32 %__tmp959, 0
  br i1 %__tmp960, label %bb391, label %bb392
bb391:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp961 = load i32, i32* %al.7, align 4
  store i32 %__tmp961, i32* %x, align 4
  %__tmp962 = load i32, i32* %c.7, align 4
  store i32 %__tmp962, i32* %y, align 4
  br label %bb393
bb393:
  %__tmp963 = load i32, i32* %i, align 4
  %__tmp964 = icmp slt i32 %__tmp963, 16
  br i1 %__tmp964, label %bb394, label %bb395
bb394:
  %__tmp965 = load i32, i32* %x, align 4
  %__tmp966 = srem i32 %__tmp965, 2
  %__tmp967 = icmp ne i32 %__tmp966, 0
  br i1 %__tmp967, label %bb396, label %bb397
bb396:
  %__tmp968 = load i32, i32* %y, align 4
  %__tmp969 = srem i32 %__tmp968, 2
  %__tmp970 = icmp eq i32 %__tmp969, 0
  br i1 %__tmp970, label %bb399, label %bb400
bb399:
  %__tmp971 = load i32, i32* %ans, align 4
  %__tmp972 = load i32, i32* %i, align 4
  %__tmp973 = sext i32 %__tmp972 to i64
  %__tmp974 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp973
  %__tmp975 = load i32, i32* %__tmp974, align 4
  %__tmp976 = mul i32 1, %__tmp975
  %__tmp977 = add i32 %__tmp971, %__tmp976
  store i32 %__tmp977, i32* %ans, align 4
  br label %bb401
bb400:
  br label %bb401
bb401:
  br label %bb398
bb397:
  %__tmp978 = load i32, i32* %y, align 4
  %__tmp979 = srem i32 %__tmp978, 2
  %__tmp980 = icmp ne i32 %__tmp979, 0
  br i1 %__tmp980, label %bb402, label %bb403
bb402:
  %__tmp981 = load i32, i32* %ans, align 4
  %__tmp982 = load i32, i32* %i, align 4
  %__tmp983 = sext i32 %__tmp982 to i64
  %__tmp984 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp983
  %__tmp985 = load i32, i32* %__tmp984, align 4
  %__tmp986 = mul i32 1, %__tmp985
  %__tmp987 = add i32 %__tmp981, %__tmp986
  store i32 %__tmp987, i32* %ans, align 4
  br label %bb404
bb403:
  br label %bb404
bb404:
  br label %bb398
bb398:
  %__tmp988 = load i32, i32* %x, align 4
  %__tmp989 = sdiv i32 %__tmp988, 2
  store i32 %__tmp989, i32* %x, align 4
  %__tmp990 = load i32, i32* %y, align 4
  %__tmp991 = sdiv i32 %__tmp990, 2
  store i32 %__tmp991, i32* %y, align 4
  %__tmp992 = load i32, i32* %i, align 4
  %__tmp993 = add i32 %__tmp992, 1
  store i32 %__tmp993, i32* %i, align 4
  br label %bb393
bb395:
  %__tmp994 = load i32, i32* %ans, align 4
  store i32 %__tmp994, i32* %sum.7, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp995 = load i32, i32* %al.7, align 4
  store i32 %__tmp995, i32* %x, align 4
  %__tmp996 = load i32, i32* %c.7, align 4
  store i32 %__tmp996, i32* %y, align 4
  br label %bb405
bb405:
  %__tmp997 = load i32, i32* %i, align 4
  %__tmp998 = icmp slt i32 %__tmp997, 16
  br i1 %__tmp998, label %bb406, label %bb407
bb406:
  %__tmp999 = load i32, i32* %x, align 4
  %__tmp1000 = srem i32 %__tmp999, 2
  %__tmp1001 = icmp ne i32 %__tmp1000, 0
  br i1 %__tmp1001, label %bb411, label %bb413
bb413:
  br label %bb412
bb411:
  %__tmp1002 = load i32, i32* %y, align 4
  %__tmp1003 = srem i32 %__tmp1002, 2
  %__tmp1004 = icmp ne i32 %__tmp1003, 0
  br label %bb412
bb412:
  %__tmp1005 = phi i1 [ 0, %bb413 ], [ %__tmp1004, %bb411 ]
  br i1 %__tmp1005, label %bb408, label %bb409
bb408:
  %__tmp1006 = load i32, i32* %ans, align 4
  %__tmp1007 = load i32, i32* %i, align 4
  %__tmp1008 = sext i32 %__tmp1007 to i64
  %__tmp1009 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1008
  %__tmp1010 = load i32, i32* %__tmp1009, align 4
  %__tmp1011 = mul i32 1, %__tmp1010
  %__tmp1012 = add i32 %__tmp1006, %__tmp1011
  store i32 %__tmp1012, i32* %ans, align 4
  br label %bb410
bb409:
  br label %bb410
bb410:
  %__tmp1013 = load i32, i32* %x, align 4
  %__tmp1014 = sdiv i32 %__tmp1013, 2
  store i32 %__tmp1014, i32* %x, align 4
  %__tmp1015 = load i32, i32* %y, align 4
  %__tmp1016 = sdiv i32 %__tmp1015, 2
  store i32 %__tmp1016, i32* %y, align 4
  %__tmp1017 = load i32, i32* %i, align 4
  %__tmp1018 = add i32 %__tmp1017, 1
  store i32 %__tmp1018, i32* %i, align 4
  br label %bb405
bb407:
  %__tmp1019 = load i32, i32* %ans, align 4
  store i32 %__tmp1019, i32* %c.7, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1020 = load i32, i32* %c.7, align 4
  %__tmp1021 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp1022 = load i32, i32* %__tmp1021, align 4
  %__tmp1023 = mul i32 %__tmp1020, %__tmp1022
  store i32 %__tmp1023, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb417
bb417:
  %__tmp1024 = load i32, i32* %i, align 4
  %__tmp1025 = icmp slt i32 %__tmp1024, 16
  br i1 %__tmp1025, label %bb418, label %bb419
bb418:
  %__tmp1026 = load i32, i32* %x, align 4
  %__tmp1027 = srem i32 %__tmp1026, 2
  %__tmp1028 = icmp ne i32 %__tmp1027, 0
  br i1 %__tmp1028, label %bb423, label %bb425
bb425:
  br label %bb424
bb423:
  %__tmp1029 = load i32, i32* %y, align 4
  %__tmp1030 = srem i32 %__tmp1029, 2
  %__tmp1031 = icmp ne i32 %__tmp1030, 0
  br label %bb424
bb424:
  %__tmp1032 = phi i1 [ 0, %bb425 ], [ %__tmp1031, %bb423 ]
  br i1 %__tmp1032, label %bb420, label %bb421
bb420:
  %__tmp1033 = load i32, i32* %ans, align 4
  %__tmp1034 = load i32, i32* %i, align 4
  %__tmp1035 = sext i32 %__tmp1034 to i64
  %__tmp1036 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1035
  %__tmp1037 = load i32, i32* %__tmp1036, align 4
  %__tmp1038 = mul i32 1, %__tmp1037
  %__tmp1039 = add i32 %__tmp1033, %__tmp1038
  store i32 %__tmp1039, i32* %ans, align 4
  br label %bb422
bb421:
  br label %bb422
bb422:
  %__tmp1040 = load i32, i32* %x, align 4
  %__tmp1041 = sdiv i32 %__tmp1040, 2
  store i32 %__tmp1041, i32* %x, align 4
  %__tmp1042 = load i32, i32* %y, align 4
  %__tmp1043 = sdiv i32 %__tmp1042, 2
  store i32 %__tmp1043, i32* %y, align 4
  %__tmp1044 = load i32, i32* %i, align 4
  %__tmp1045 = add i32 %__tmp1044, 1
  store i32 %__tmp1045, i32* %i, align 4
  br label %bb417
bb419:
  br label %bb416
bb416:
  %__tmp1046 = load i32, i32* %ans, align 4
  store i32 %__tmp1046, i32* %c.7, align 4
  %__tmp1047 = load i32, i32* %sum.7, align 4
  store i32 %__tmp1047, i32* %al.7, align 4
  br label %bb390
bb392:
  %__tmp1048 = load i32, i32* %al.7, align 4
  store i32 %__tmp1048, i32* %ans, align 4
  %__tmp1049 = load i32, i32* %ans, align 4
  store i32 %__tmp1049, i32* %ml.3, align 4
  %__tmp1050 = load i32, i32* %mr.3, align 4
  store i32 %__tmp1050, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp1051 = load i32, i32* %y, align 4
  %__tmp1052 = icmp sge i32 %__tmp1051, 15
  br i1 %__tmp1052, label %bb426, label %bb427
bb426:
  %__tmp1053 = load i32, i32* %x, align 4
  %__tmp1054 = icmp slt i32 %__tmp1053, 0
  br i1 %__tmp1054, label %bb429, label %bb430
bb429:
  store i32 65535, i32* %ans, align 4
  br label %bb431
bb430:
  store i32 0, i32* %ans, align 4
  br label %bb431
bb431:
  br label %bb428
bb427:
  %__tmp1055 = load i32, i32* %y, align 4
  %__tmp1056 = icmp sgt i32 %__tmp1055, 0
  br i1 %__tmp1056, label %bb432, label %bb433
bb432:
  %__tmp1057 = load i32, i32* %x, align 4
  %__tmp1058 = icmp sgt i32 %__tmp1057, 32767
  br i1 %__tmp1058, label %bb435, label %bb436
bb435:
  %__tmp1059 = load i32, i32* %x, align 4
  %__tmp1060 = load i32, i32* %y, align 4
  %__tmp1061 = sext i32 %__tmp1060 to i64
  %__tmp1062 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1061
  %__tmp1063 = load i32, i32* %__tmp1062, align 4
  %__tmp1064 = sdiv i32 %__tmp1059, %__tmp1063
  store i32 %__tmp1064, i32* %x, align 4
  %__tmp1065 = load i32, i32* %x, align 4
  %__tmp1066 = add i32 %__tmp1065, 65536
  %__tmp1067 = load i32, i32* %y, align 4
  %__tmp1068 = sub i32 15, %__tmp1067
  %__tmp1069 = add i32 %__tmp1068, 1
  %__tmp1070 = sext i32 %__tmp1069 to i64
  %__tmp1071 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1070
  %__tmp1072 = load i32, i32* %__tmp1071, align 4
  %__tmp1073 = sub i32 %__tmp1066, %__tmp1072
  store i32 %__tmp1073, i32* %ans, align 4
  br label %bb437
bb436:
  %__tmp1074 = load i32, i32* %x, align 4
  %__tmp1075 = load i32, i32* %y, align 4
  %__tmp1076 = sext i32 %__tmp1075 to i64
  %__tmp1077 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1076
  %__tmp1078 = load i32, i32* %__tmp1077, align 4
  %__tmp1079 = sdiv i32 %__tmp1074, %__tmp1078
  store i32 %__tmp1079, i32* %ans, align 4
  br label %bb437
bb437:
  br label %bb434
bb433:
  %__tmp1080 = load i32, i32* %x, align 4
  store i32 %__tmp1080, i32* %ans, align 4
  br label %bb434
bb434:
  br label %bb428
bb428:
  %__tmp1081 = load i32, i32* %ans, align 4
  store i32 %__tmp1081, i32* %mr.3, align 4
  br label %bb339
bb341:
  %__tmp1082 = load i32, i32* %mres.3, align 4
  store i32 %__tmp1082, i32* %ans, align 4
  %__tmp1083 = load i32, i32* %ans, align 4
  store i32 %__tmp1083, i32* %pl.1, align 4
  %__tmp1084 = load i32, i32* %pr.1, align 4
  store i32 %__tmp1084, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp1085 = load i32, i32* %y, align 4
  %__tmp1086 = icmp sge i32 %__tmp1085, 15
  br i1 %__tmp1086, label %bb438, label %bb439
bb438:
  %__tmp1087 = load i32, i32* %x, align 4
  %__tmp1088 = icmp slt i32 %__tmp1087, 0
  br i1 %__tmp1088, label %bb441, label %bb442
bb441:
  store i32 65535, i32* %ans, align 4
  br label %bb443
bb442:
  store i32 0, i32* %ans, align 4
  br label %bb443
bb443:
  br label %bb440
bb439:
  %__tmp1089 = load i32, i32* %y, align 4
  %__tmp1090 = icmp sgt i32 %__tmp1089, 0
  br i1 %__tmp1090, label %bb444, label %bb445
bb444:
  %__tmp1091 = load i32, i32* %x, align 4
  %__tmp1092 = icmp sgt i32 %__tmp1091, 32767
  br i1 %__tmp1092, label %bb447, label %bb448
bb447:
  %__tmp1093 = load i32, i32* %x, align 4
  %__tmp1094 = load i32, i32* %y, align 4
  %__tmp1095 = sext i32 %__tmp1094 to i64
  %__tmp1096 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1095
  %__tmp1097 = load i32, i32* %__tmp1096, align 4
  %__tmp1098 = sdiv i32 %__tmp1093, %__tmp1097
  store i32 %__tmp1098, i32* %x, align 4
  %__tmp1099 = load i32, i32* %x, align 4
  %__tmp1100 = add i32 %__tmp1099, 65536
  %__tmp1101 = load i32, i32* %y, align 4
  %__tmp1102 = sub i32 15, %__tmp1101
  %__tmp1103 = add i32 %__tmp1102, 1
  %__tmp1104 = sext i32 %__tmp1103 to i64
  %__tmp1105 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1104
  %__tmp1106 = load i32, i32* %__tmp1105, align 4
  %__tmp1107 = sub i32 %__tmp1100, %__tmp1106
  store i32 %__tmp1107, i32* %ans, align 4
  br label %bb449
bb448:
  %__tmp1108 = load i32, i32* %x, align 4
  %__tmp1109 = load i32, i32* %y, align 4
  %__tmp1110 = sext i32 %__tmp1109 to i64
  %__tmp1111 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1110
  %__tmp1112 = load i32, i32* %__tmp1111, align 4
  %__tmp1113 = sdiv i32 %__tmp1108, %__tmp1112
  store i32 %__tmp1113, i32* %ans, align 4
  br label %bb449
bb449:
  br label %bb446
bb445:
  %__tmp1114 = load i32, i32* %x, align 4
  store i32 %__tmp1114, i32* %ans, align 4
  br label %bb446
bb446:
  br label %bb440
bb440:
  %__tmp1115 = load i32, i32* %ans, align 4
  store i32 %__tmp1115, i32* %pr.1, align 4
  br label %bb225
bb227:
  %__tmp1116 = load i32, i32* %pres.1, align 4
  store i32 %__tmp1116, i32* %ans, align 4
  %__tmp1117 = load i32, i32* %ans, align 4
  call void @putint(i32 %__tmp1117)
  call void @putch(i32 10)
  store i32 2, i32* %cur, align 4
  br label %bb450
bb450:
  %__tmp1118 = load i32, i32* %cur, align 4
  %__tmp1119 = icmp slt i32 %__tmp1118, 16
  br i1 %__tmp1119, label %bb451, label %bb452
bb451:
  store i32 2, i32* %pl.2, align 4
  %__tmp1120 = load i32, i32* %cur, align 4
  store i32 %__tmp1120, i32* %pr.2, align 4
  store i32 1, i32* %pres.2, align 4
  br label %bb453
bb453:
  %__tmp1121 = load i32, i32* %pr.2, align 4
  %__tmp1122 = icmp sgt i32 %__tmp1121, 0
  br i1 %__tmp1122, label %bb454, label %bb455
bb454:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1123 = load i32, i32* %pr.2, align 4
  store i32 %__tmp1123, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb456
bb456:
  %__tmp1124 = load i32, i32* %i, align 4
  %__tmp1125 = icmp slt i32 %__tmp1124, 16
  br i1 %__tmp1125, label %bb457, label %bb458
bb457:
  %__tmp1126 = load i32, i32* %x, align 4
  %__tmp1127 = srem i32 %__tmp1126, 2
  %__tmp1128 = icmp ne i32 %__tmp1127, 0
  br i1 %__tmp1128, label %bb462, label %bb464
bb464:
  br label %bb463
bb462:
  %__tmp1129 = load i32, i32* %y, align 4
  %__tmp1130 = srem i32 %__tmp1129, 2
  %__tmp1131 = icmp ne i32 %__tmp1130, 0
  br label %bb463
bb463:
  %__tmp1132 = phi i1 [ 0, %bb464 ], [ %__tmp1131, %bb462 ]
  br i1 %__tmp1132, label %bb459, label %bb460
bb459:
  %__tmp1133 = load i32, i32* %ans, align 4
  %__tmp1134 = load i32, i32* %i, align 4
  %__tmp1135 = sext i32 %__tmp1134 to i64
  %__tmp1136 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1135
  %__tmp1137 = load i32, i32* %__tmp1136, align 4
  %__tmp1138 = mul i32 1, %__tmp1137
  %__tmp1139 = add i32 %__tmp1133, %__tmp1138
  store i32 %__tmp1139, i32* %ans, align 4
  br label %bb461
bb460:
  br label %bb461
bb461:
  %__tmp1140 = load i32, i32* %x, align 4
  %__tmp1141 = sdiv i32 %__tmp1140, 2
  store i32 %__tmp1141, i32* %x, align 4
  %__tmp1142 = load i32, i32* %y, align 4
  %__tmp1143 = sdiv i32 %__tmp1142, 2
  store i32 %__tmp1143, i32* %y, align 4
  %__tmp1144 = load i32, i32* %i, align 4
  %__tmp1145 = add i32 %__tmp1144, 1
  store i32 %__tmp1145, i32* %i, align 4
  br label %bb456
bb458:
  %__tmp1146 = load i32, i32* %ans, align 4
  %__tmp1147 = icmp ne i32 %__tmp1146, 0
  br i1 %__tmp1147, label %bb465, label %bb466
bb465:
  %__tmp1148 = load i32, i32* %pres.2, align 4
  store i32 %__tmp1148, i32* %ml.4, align 4
  %__tmp1149 = load i32, i32* %pl.2, align 4
  store i32 %__tmp1149, i32* %mr.4, align 4
  store i32 0, i32* %mres.4, align 4
  br label %bb468
bb468:
  %__tmp1150 = load i32, i32* %mr.4, align 4
  %__tmp1151 = icmp ne i32 %__tmp1150, 0
  br i1 %__tmp1151, label %bb469, label %bb470
bb469:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1152 = load i32, i32* %mr.4, align 4
  store i32 %__tmp1152, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb471
bb471:
  %__tmp1153 = load i32, i32* %i, align 4
  %__tmp1154 = icmp slt i32 %__tmp1153, 16
  br i1 %__tmp1154, label %bb472, label %bb473
bb472:
  %__tmp1155 = load i32, i32* %x, align 4
  %__tmp1156 = srem i32 %__tmp1155, 2
  %__tmp1157 = icmp ne i32 %__tmp1156, 0
  br i1 %__tmp1157, label %bb477, label %bb479
bb479:
  br label %bb478
bb477:
  %__tmp1158 = load i32, i32* %y, align 4
  %__tmp1159 = srem i32 %__tmp1158, 2
  %__tmp1160 = icmp ne i32 %__tmp1159, 0
  br label %bb478
bb478:
  %__tmp1161 = phi i1 [ 0, %bb479 ], [ %__tmp1160, %bb477 ]
  br i1 %__tmp1161, label %bb474, label %bb475
bb474:
  %__tmp1162 = load i32, i32* %ans, align 4
  %__tmp1163 = load i32, i32* %i, align 4
  %__tmp1164 = sext i32 %__tmp1163 to i64
  %__tmp1165 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1164
  %__tmp1166 = load i32, i32* %__tmp1165, align 4
  %__tmp1167 = mul i32 1, %__tmp1166
  %__tmp1168 = add i32 %__tmp1162, %__tmp1167
  store i32 %__tmp1168, i32* %ans, align 4
  br label %bb476
bb475:
  br label %bb476
bb476:
  %__tmp1169 = load i32, i32* %x, align 4
  %__tmp1170 = sdiv i32 %__tmp1169, 2
  store i32 %__tmp1170, i32* %x, align 4
  %__tmp1171 = load i32, i32* %y, align 4
  %__tmp1172 = sdiv i32 %__tmp1171, 2
  store i32 %__tmp1172, i32* %y, align 4
  %__tmp1173 = load i32, i32* %i, align 4
  %__tmp1174 = add i32 %__tmp1173, 1
  store i32 %__tmp1174, i32* %i, align 4
  br label %bb471
bb473:
  %__tmp1175 = load i32, i32* %ans, align 4
  %__tmp1176 = icmp ne i32 %__tmp1175, 0
  br i1 %__tmp1176, label %bb480, label %bb481
bb480:
  %__tmp1177 = load i32, i32* %mres.4, align 4
  store i32 %__tmp1177, i32* %al.8, align 4
  %__tmp1178 = load i32, i32* %ml.4, align 4
  store i32 %__tmp1178, i32* %c.8, align 4
  br label %bb483
bb483:
  %__tmp1179 = load i32, i32* %c.8, align 4
  %__tmp1180 = icmp ne i32 %__tmp1179, 0
  br i1 %__tmp1180, label %bb484, label %bb485
bb484:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1181 = load i32, i32* %al.8, align 4
  store i32 %__tmp1181, i32* %x, align 4
  %__tmp1182 = load i32, i32* %c.8, align 4
  store i32 %__tmp1182, i32* %y, align 4
  br label %bb486
bb486:
  %__tmp1183 = load i32, i32* %i, align 4
  %__tmp1184 = icmp slt i32 %__tmp1183, 16
  br i1 %__tmp1184, label %bb487, label %bb488
bb487:
  %__tmp1185 = load i32, i32* %x, align 4
  %__tmp1186 = srem i32 %__tmp1185, 2
  %__tmp1187 = icmp ne i32 %__tmp1186, 0
  br i1 %__tmp1187, label %bb489, label %bb490
bb489:
  %__tmp1188 = load i32, i32* %y, align 4
  %__tmp1189 = srem i32 %__tmp1188, 2
  %__tmp1190 = icmp eq i32 %__tmp1189, 0
  br i1 %__tmp1190, label %bb492, label %bb493
bb492:
  %__tmp1191 = load i32, i32* %ans, align 4
  %__tmp1192 = load i32, i32* %i, align 4
  %__tmp1193 = sext i32 %__tmp1192 to i64
  %__tmp1194 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1193
  %__tmp1195 = load i32, i32* %__tmp1194, align 4
  %__tmp1196 = mul i32 1, %__tmp1195
  %__tmp1197 = add i32 %__tmp1191, %__tmp1196
  store i32 %__tmp1197, i32* %ans, align 4
  br label %bb494
bb493:
  br label %bb494
bb494:
  br label %bb491
bb490:
  %__tmp1198 = load i32, i32* %y, align 4
  %__tmp1199 = srem i32 %__tmp1198, 2
  %__tmp1200 = icmp ne i32 %__tmp1199, 0
  br i1 %__tmp1200, label %bb495, label %bb496
bb495:
  %__tmp1201 = load i32, i32* %ans, align 4
  %__tmp1202 = load i32, i32* %i, align 4
  %__tmp1203 = sext i32 %__tmp1202 to i64
  %__tmp1204 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1203
  %__tmp1205 = load i32, i32* %__tmp1204, align 4
  %__tmp1206 = mul i32 1, %__tmp1205
  %__tmp1207 = add i32 %__tmp1201, %__tmp1206
  store i32 %__tmp1207, i32* %ans, align 4
  br label %bb497
bb496:
  br label %bb497
bb497:
  br label %bb491
bb491:
  %__tmp1208 = load i32, i32* %x, align 4
  %__tmp1209 = sdiv i32 %__tmp1208, 2
  store i32 %__tmp1209, i32* %x, align 4
  %__tmp1210 = load i32, i32* %y, align 4
  %__tmp1211 = sdiv i32 %__tmp1210, 2
  store i32 %__tmp1211, i32* %y, align 4
  %__tmp1212 = load i32, i32* %i, align 4
  %__tmp1213 = add i32 %__tmp1212, 1
  store i32 %__tmp1213, i32* %i, align 4
  br label %bb486
bb488:
  %__tmp1214 = load i32, i32* %ans, align 4
  store i32 %__tmp1214, i32* %sum.8, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1215 = load i32, i32* %al.8, align 4
  store i32 %__tmp1215, i32* %x, align 4
  %__tmp1216 = load i32, i32* %c.8, align 4
  store i32 %__tmp1216, i32* %y, align 4
  br label %bb498
bb498:
  %__tmp1217 = load i32, i32* %i, align 4
  %__tmp1218 = icmp slt i32 %__tmp1217, 16
  br i1 %__tmp1218, label %bb499, label %bb500
bb499:
  %__tmp1219 = load i32, i32* %x, align 4
  %__tmp1220 = srem i32 %__tmp1219, 2
  %__tmp1221 = icmp ne i32 %__tmp1220, 0
  br i1 %__tmp1221, label %bb504, label %bb506
bb506:
  br label %bb505
bb504:
  %__tmp1222 = load i32, i32* %y, align 4
  %__tmp1223 = srem i32 %__tmp1222, 2
  %__tmp1224 = icmp ne i32 %__tmp1223, 0
  br label %bb505
bb505:
  %__tmp1225 = phi i1 [ 0, %bb506 ], [ %__tmp1224, %bb504 ]
  br i1 %__tmp1225, label %bb501, label %bb502
bb501:
  %__tmp1226 = load i32, i32* %ans, align 4
  %__tmp1227 = load i32, i32* %i, align 4
  %__tmp1228 = sext i32 %__tmp1227 to i64
  %__tmp1229 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1228
  %__tmp1230 = load i32, i32* %__tmp1229, align 4
  %__tmp1231 = mul i32 1, %__tmp1230
  %__tmp1232 = add i32 %__tmp1226, %__tmp1231
  store i32 %__tmp1232, i32* %ans, align 4
  br label %bb503
bb502:
  br label %bb503
bb503:
  %__tmp1233 = load i32, i32* %x, align 4
  %__tmp1234 = sdiv i32 %__tmp1233, 2
  store i32 %__tmp1234, i32* %x, align 4
  %__tmp1235 = load i32, i32* %y, align 4
  %__tmp1236 = sdiv i32 %__tmp1235, 2
  store i32 %__tmp1236, i32* %y, align 4
  %__tmp1237 = load i32, i32* %i, align 4
  %__tmp1238 = add i32 %__tmp1237, 1
  store i32 %__tmp1238, i32* %i, align 4
  br label %bb498
bb500:
  %__tmp1239 = load i32, i32* %ans, align 4
  store i32 %__tmp1239, i32* %c.8, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1240 = load i32, i32* %c.8, align 4
  %__tmp1241 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp1242 = load i32, i32* %__tmp1241, align 4
  %__tmp1243 = mul i32 %__tmp1240, %__tmp1242
  store i32 %__tmp1243, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb510
bb510:
  %__tmp1244 = load i32, i32* %i, align 4
  %__tmp1245 = icmp slt i32 %__tmp1244, 16
  br i1 %__tmp1245, label %bb511, label %bb512
bb511:
  %__tmp1246 = load i32, i32* %x, align 4
  %__tmp1247 = srem i32 %__tmp1246, 2
  %__tmp1248 = icmp ne i32 %__tmp1247, 0
  br i1 %__tmp1248, label %bb516, label %bb518
bb518:
  br label %bb517
bb516:
  %__tmp1249 = load i32, i32* %y, align 4
  %__tmp1250 = srem i32 %__tmp1249, 2
  %__tmp1251 = icmp ne i32 %__tmp1250, 0
  br label %bb517
bb517:
  %__tmp1252 = phi i1 [ 0, %bb518 ], [ %__tmp1251, %bb516 ]
  br i1 %__tmp1252, label %bb513, label %bb514
bb513:
  %__tmp1253 = load i32, i32* %ans, align 4
  %__tmp1254 = load i32, i32* %i, align 4
  %__tmp1255 = sext i32 %__tmp1254 to i64
  %__tmp1256 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1255
  %__tmp1257 = load i32, i32* %__tmp1256, align 4
  %__tmp1258 = mul i32 1, %__tmp1257
  %__tmp1259 = add i32 %__tmp1253, %__tmp1258
  store i32 %__tmp1259, i32* %ans, align 4
  br label %bb515
bb514:
  br label %bb515
bb515:
  %__tmp1260 = load i32, i32* %x, align 4
  %__tmp1261 = sdiv i32 %__tmp1260, 2
  store i32 %__tmp1261, i32* %x, align 4
  %__tmp1262 = load i32, i32* %y, align 4
  %__tmp1263 = sdiv i32 %__tmp1262, 2
  store i32 %__tmp1263, i32* %y, align 4
  %__tmp1264 = load i32, i32* %i, align 4
  %__tmp1265 = add i32 %__tmp1264, 1
  store i32 %__tmp1265, i32* %i, align 4
  br label %bb510
bb512:
  br label %bb509
bb509:
  %__tmp1266 = load i32, i32* %ans, align 4
  store i32 %__tmp1266, i32* %c.8, align 4
  %__tmp1267 = load i32, i32* %sum.8, align 4
  store i32 %__tmp1267, i32* %al.8, align 4
  br label %bb483
bb485:
  %__tmp1268 = load i32, i32* %al.8, align 4
  store i32 %__tmp1268, i32* %ans, align 4
  %__tmp1269 = load i32, i32* %ans, align 4
  store i32 %__tmp1269, i32* %mres.4, align 4
  br label %bb482
bb481:
  br label %bb482
bb482:
  %__tmp1270 = load i32, i32* %ml.4, align 4
  store i32 %__tmp1270, i32* %al.9, align 4
  %__tmp1271 = load i32, i32* %ml.4, align 4
  store i32 %__tmp1271, i32* %c.9, align 4
  br label %bb519
bb519:
  %__tmp1272 = load i32, i32* %c.9, align 4
  %__tmp1273 = icmp ne i32 %__tmp1272, 0
  br i1 %__tmp1273, label %bb520, label %bb521
bb520:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1274 = load i32, i32* %al.9, align 4
  store i32 %__tmp1274, i32* %x, align 4
  %__tmp1275 = load i32, i32* %c.9, align 4
  store i32 %__tmp1275, i32* %y, align 4
  br label %bb522
bb522:
  %__tmp1276 = load i32, i32* %i, align 4
  %__tmp1277 = icmp slt i32 %__tmp1276, 16
  br i1 %__tmp1277, label %bb523, label %bb524
bb523:
  %__tmp1278 = load i32, i32* %x, align 4
  %__tmp1279 = srem i32 %__tmp1278, 2
  %__tmp1280 = icmp ne i32 %__tmp1279, 0
  br i1 %__tmp1280, label %bb525, label %bb526
bb525:
  %__tmp1281 = load i32, i32* %y, align 4
  %__tmp1282 = srem i32 %__tmp1281, 2
  %__tmp1283 = icmp eq i32 %__tmp1282, 0
  br i1 %__tmp1283, label %bb528, label %bb529
bb528:
  %__tmp1284 = load i32, i32* %ans, align 4
  %__tmp1285 = load i32, i32* %i, align 4
  %__tmp1286 = sext i32 %__tmp1285 to i64
  %__tmp1287 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1286
  %__tmp1288 = load i32, i32* %__tmp1287, align 4
  %__tmp1289 = mul i32 1, %__tmp1288
  %__tmp1290 = add i32 %__tmp1284, %__tmp1289
  store i32 %__tmp1290, i32* %ans, align 4
  br label %bb530
bb529:
  br label %bb530
bb530:
  br label %bb527
bb526:
  %__tmp1291 = load i32, i32* %y, align 4
  %__tmp1292 = srem i32 %__tmp1291, 2
  %__tmp1293 = icmp ne i32 %__tmp1292, 0
  br i1 %__tmp1293, label %bb531, label %bb532
bb531:
  %__tmp1294 = load i32, i32* %ans, align 4
  %__tmp1295 = load i32, i32* %i, align 4
  %__tmp1296 = sext i32 %__tmp1295 to i64
  %__tmp1297 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1296
  %__tmp1298 = load i32, i32* %__tmp1297, align 4
  %__tmp1299 = mul i32 1, %__tmp1298
  %__tmp1300 = add i32 %__tmp1294, %__tmp1299
  store i32 %__tmp1300, i32* %ans, align 4
  br label %bb533
bb532:
  br label %bb533
bb533:
  br label %bb527
bb527:
  %__tmp1301 = load i32, i32* %x, align 4
  %__tmp1302 = sdiv i32 %__tmp1301, 2
  store i32 %__tmp1302, i32* %x, align 4
  %__tmp1303 = load i32, i32* %y, align 4
  %__tmp1304 = sdiv i32 %__tmp1303, 2
  store i32 %__tmp1304, i32* %y, align 4
  %__tmp1305 = load i32, i32* %i, align 4
  %__tmp1306 = add i32 %__tmp1305, 1
  store i32 %__tmp1306, i32* %i, align 4
  br label %bb522
bb524:
  %__tmp1307 = load i32, i32* %ans, align 4
  store i32 %__tmp1307, i32* %sum.9, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1308 = load i32, i32* %al.9, align 4
  store i32 %__tmp1308, i32* %x, align 4
  %__tmp1309 = load i32, i32* %c.9, align 4
  store i32 %__tmp1309, i32* %y, align 4
  br label %bb534
bb534:
  %__tmp1310 = load i32, i32* %i, align 4
  %__tmp1311 = icmp slt i32 %__tmp1310, 16
  br i1 %__tmp1311, label %bb535, label %bb536
bb535:
  %__tmp1312 = load i32, i32* %x, align 4
  %__tmp1313 = srem i32 %__tmp1312, 2
  %__tmp1314 = icmp ne i32 %__tmp1313, 0
  br i1 %__tmp1314, label %bb540, label %bb542
bb542:
  br label %bb541
bb540:
  %__tmp1315 = load i32, i32* %y, align 4
  %__tmp1316 = srem i32 %__tmp1315, 2
  %__tmp1317 = icmp ne i32 %__tmp1316, 0
  br label %bb541
bb541:
  %__tmp1318 = phi i1 [ 0, %bb542 ], [ %__tmp1317, %bb540 ]
  br i1 %__tmp1318, label %bb537, label %bb538
bb537:
  %__tmp1319 = load i32, i32* %ans, align 4
  %__tmp1320 = load i32, i32* %i, align 4
  %__tmp1321 = sext i32 %__tmp1320 to i64
  %__tmp1322 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1321
  %__tmp1323 = load i32, i32* %__tmp1322, align 4
  %__tmp1324 = mul i32 1, %__tmp1323
  %__tmp1325 = add i32 %__tmp1319, %__tmp1324
  store i32 %__tmp1325, i32* %ans, align 4
  br label %bb539
bb538:
  br label %bb539
bb539:
  %__tmp1326 = load i32, i32* %x, align 4
  %__tmp1327 = sdiv i32 %__tmp1326, 2
  store i32 %__tmp1327, i32* %x, align 4
  %__tmp1328 = load i32, i32* %y, align 4
  %__tmp1329 = sdiv i32 %__tmp1328, 2
  store i32 %__tmp1329, i32* %y, align 4
  %__tmp1330 = load i32, i32* %i, align 4
  %__tmp1331 = add i32 %__tmp1330, 1
  store i32 %__tmp1331, i32* %i, align 4
  br label %bb534
bb536:
  %__tmp1332 = load i32, i32* %ans, align 4
  store i32 %__tmp1332, i32* %c.9, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1333 = load i32, i32* %c.9, align 4
  %__tmp1334 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp1335 = load i32, i32* %__tmp1334, align 4
  %__tmp1336 = mul i32 %__tmp1333, %__tmp1335
  store i32 %__tmp1336, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb546
bb546:
  %__tmp1337 = load i32, i32* %i, align 4
  %__tmp1338 = icmp slt i32 %__tmp1337, 16
  br i1 %__tmp1338, label %bb547, label %bb548
bb547:
  %__tmp1339 = load i32, i32* %x, align 4
  %__tmp1340 = srem i32 %__tmp1339, 2
  %__tmp1341 = icmp ne i32 %__tmp1340, 0
  br i1 %__tmp1341, label %bb552, label %bb554
bb554:
  br label %bb553
bb552:
  %__tmp1342 = load i32, i32* %y, align 4
  %__tmp1343 = srem i32 %__tmp1342, 2
  %__tmp1344 = icmp ne i32 %__tmp1343, 0
  br label %bb553
bb553:
  %__tmp1345 = phi i1 [ 0, %bb554 ], [ %__tmp1344, %bb552 ]
  br i1 %__tmp1345, label %bb549, label %bb550
bb549:
  %__tmp1346 = load i32, i32* %ans, align 4
  %__tmp1347 = load i32, i32* %i, align 4
  %__tmp1348 = sext i32 %__tmp1347 to i64
  %__tmp1349 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1348
  %__tmp1350 = load i32, i32* %__tmp1349, align 4
  %__tmp1351 = mul i32 1, %__tmp1350
  %__tmp1352 = add i32 %__tmp1346, %__tmp1351
  store i32 %__tmp1352, i32* %ans, align 4
  br label %bb551
bb550:
  br label %bb551
bb551:
  %__tmp1353 = load i32, i32* %x, align 4
  %__tmp1354 = sdiv i32 %__tmp1353, 2
  store i32 %__tmp1354, i32* %x, align 4
  %__tmp1355 = load i32, i32* %y, align 4
  %__tmp1356 = sdiv i32 %__tmp1355, 2
  store i32 %__tmp1356, i32* %y, align 4
  %__tmp1357 = load i32, i32* %i, align 4
  %__tmp1358 = add i32 %__tmp1357, 1
  store i32 %__tmp1358, i32* %i, align 4
  br label %bb546
bb548:
  br label %bb545
bb545:
  %__tmp1359 = load i32, i32* %ans, align 4
  store i32 %__tmp1359, i32* %c.9, align 4
  %__tmp1360 = load i32, i32* %sum.9, align 4
  store i32 %__tmp1360, i32* %al.9, align 4
  br label %bb519
bb521:
  %__tmp1361 = load i32, i32* %al.9, align 4
  store i32 %__tmp1361, i32* %ans, align 4
  %__tmp1362 = load i32, i32* %ans, align 4
  store i32 %__tmp1362, i32* %ml.4, align 4
  %__tmp1363 = load i32, i32* %mr.4, align 4
  store i32 %__tmp1363, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp1364 = load i32, i32* %y, align 4
  %__tmp1365 = icmp sge i32 %__tmp1364, 15
  br i1 %__tmp1365, label %bb555, label %bb556
bb555:
  %__tmp1366 = load i32, i32* %x, align 4
  %__tmp1367 = icmp slt i32 %__tmp1366, 0
  br i1 %__tmp1367, label %bb558, label %bb559
bb558:
  store i32 65535, i32* %ans, align 4
  br label %bb560
bb559:
  store i32 0, i32* %ans, align 4
  br label %bb560
bb560:
  br label %bb557
bb556:
  %__tmp1368 = load i32, i32* %y, align 4
  %__tmp1369 = icmp sgt i32 %__tmp1368, 0
  br i1 %__tmp1369, label %bb561, label %bb562
bb561:
  %__tmp1370 = load i32, i32* %x, align 4
  %__tmp1371 = icmp sgt i32 %__tmp1370, 32767
  br i1 %__tmp1371, label %bb564, label %bb565
bb564:
  %__tmp1372 = load i32, i32* %x, align 4
  %__tmp1373 = load i32, i32* %y, align 4
  %__tmp1374 = sext i32 %__tmp1373 to i64
  %__tmp1375 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1374
  %__tmp1376 = load i32, i32* %__tmp1375, align 4
  %__tmp1377 = sdiv i32 %__tmp1372, %__tmp1376
  store i32 %__tmp1377, i32* %x, align 4
  %__tmp1378 = load i32, i32* %x, align 4
  %__tmp1379 = add i32 %__tmp1378, 65536
  %__tmp1380 = load i32, i32* %y, align 4
  %__tmp1381 = sub i32 15, %__tmp1380
  %__tmp1382 = add i32 %__tmp1381, 1
  %__tmp1383 = sext i32 %__tmp1382 to i64
  %__tmp1384 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1383
  %__tmp1385 = load i32, i32* %__tmp1384, align 4
  %__tmp1386 = sub i32 %__tmp1379, %__tmp1385
  store i32 %__tmp1386, i32* %ans, align 4
  br label %bb566
bb565:
  %__tmp1387 = load i32, i32* %x, align 4
  %__tmp1388 = load i32, i32* %y, align 4
  %__tmp1389 = sext i32 %__tmp1388 to i64
  %__tmp1390 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1389
  %__tmp1391 = load i32, i32* %__tmp1390, align 4
  %__tmp1392 = sdiv i32 %__tmp1387, %__tmp1391
  store i32 %__tmp1392, i32* %ans, align 4
  br label %bb566
bb566:
  br label %bb563
bb562:
  %__tmp1393 = load i32, i32* %x, align 4
  store i32 %__tmp1393, i32* %ans, align 4
  br label %bb563
bb563:
  br label %bb557
bb557:
  %__tmp1394 = load i32, i32* %ans, align 4
  store i32 %__tmp1394, i32* %mr.4, align 4
  br label %bb468
bb470:
  %__tmp1395 = load i32, i32* %mres.4, align 4
  store i32 %__tmp1395, i32* %ans, align 4
  %__tmp1396 = load i32, i32* %ans, align 4
  store i32 %__tmp1396, i32* %pres.2, align 4
  br label %bb467
bb466:
  br label %bb467
bb467:
  %__tmp1397 = load i32, i32* %pl.2, align 4
  store i32 %__tmp1397, i32* %ml.5, align 4
  %__tmp1398 = load i32, i32* %pl.2, align 4
  store i32 %__tmp1398, i32* %mr.5, align 4
  store i32 0, i32* %mres.5, align 4
  br label %bb567
bb567:
  %__tmp1399 = load i32, i32* %mr.5, align 4
  %__tmp1400 = icmp ne i32 %__tmp1399, 0
  br i1 %__tmp1400, label %bb568, label %bb569
bb568:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1401 = load i32, i32* %mr.5, align 4
  store i32 %__tmp1401, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb570
bb570:
  %__tmp1402 = load i32, i32* %i, align 4
  %__tmp1403 = icmp slt i32 %__tmp1402, 16
  br i1 %__tmp1403, label %bb571, label %bb572
bb571:
  %__tmp1404 = load i32, i32* %x, align 4
  %__tmp1405 = srem i32 %__tmp1404, 2
  %__tmp1406 = icmp ne i32 %__tmp1405, 0
  br i1 %__tmp1406, label %bb576, label %bb578
bb578:
  br label %bb577
bb576:
  %__tmp1407 = load i32, i32* %y, align 4
  %__tmp1408 = srem i32 %__tmp1407, 2
  %__tmp1409 = icmp ne i32 %__tmp1408, 0
  br label %bb577
bb577:
  %__tmp1410 = phi i1 [ 0, %bb578 ], [ %__tmp1409, %bb576 ]
  br i1 %__tmp1410, label %bb573, label %bb574
bb573:
  %__tmp1411 = load i32, i32* %ans, align 4
  %__tmp1412 = load i32, i32* %i, align 4
  %__tmp1413 = sext i32 %__tmp1412 to i64
  %__tmp1414 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1413
  %__tmp1415 = load i32, i32* %__tmp1414, align 4
  %__tmp1416 = mul i32 1, %__tmp1415
  %__tmp1417 = add i32 %__tmp1411, %__tmp1416
  store i32 %__tmp1417, i32* %ans, align 4
  br label %bb575
bb574:
  br label %bb575
bb575:
  %__tmp1418 = load i32, i32* %x, align 4
  %__tmp1419 = sdiv i32 %__tmp1418, 2
  store i32 %__tmp1419, i32* %x, align 4
  %__tmp1420 = load i32, i32* %y, align 4
  %__tmp1421 = sdiv i32 %__tmp1420, 2
  store i32 %__tmp1421, i32* %y, align 4
  %__tmp1422 = load i32, i32* %i, align 4
  %__tmp1423 = add i32 %__tmp1422, 1
  store i32 %__tmp1423, i32* %i, align 4
  br label %bb570
bb572:
  %__tmp1424 = load i32, i32* %ans, align 4
  %__tmp1425 = icmp ne i32 %__tmp1424, 0
  br i1 %__tmp1425, label %bb579, label %bb580
bb579:
  %__tmp1426 = load i32, i32* %mres.5, align 4
  store i32 %__tmp1426, i32* %al.10, align 4
  %__tmp1427 = load i32, i32* %ml.5, align 4
  store i32 %__tmp1427, i32* %c.10, align 4
  br label %bb582
bb582:
  %__tmp1428 = load i32, i32* %c.10, align 4
  %__tmp1429 = icmp ne i32 %__tmp1428, 0
  br i1 %__tmp1429, label %bb583, label %bb584
bb583:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1430 = load i32, i32* %al.10, align 4
  store i32 %__tmp1430, i32* %x, align 4
  %__tmp1431 = load i32, i32* %c.10, align 4
  store i32 %__tmp1431, i32* %y, align 4
  br label %bb585
bb585:
  %__tmp1432 = load i32, i32* %i, align 4
  %__tmp1433 = icmp slt i32 %__tmp1432, 16
  br i1 %__tmp1433, label %bb586, label %bb587
bb586:
  %__tmp1434 = load i32, i32* %x, align 4
  %__tmp1435 = srem i32 %__tmp1434, 2
  %__tmp1436 = icmp ne i32 %__tmp1435, 0
  br i1 %__tmp1436, label %bb588, label %bb589
bb588:
  %__tmp1437 = load i32, i32* %y, align 4
  %__tmp1438 = srem i32 %__tmp1437, 2
  %__tmp1439 = icmp eq i32 %__tmp1438, 0
  br i1 %__tmp1439, label %bb591, label %bb592
bb591:
  %__tmp1440 = load i32, i32* %ans, align 4
  %__tmp1441 = load i32, i32* %i, align 4
  %__tmp1442 = sext i32 %__tmp1441 to i64
  %__tmp1443 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1442
  %__tmp1444 = load i32, i32* %__tmp1443, align 4
  %__tmp1445 = mul i32 1, %__tmp1444
  %__tmp1446 = add i32 %__tmp1440, %__tmp1445
  store i32 %__tmp1446, i32* %ans, align 4
  br label %bb593
bb592:
  br label %bb593
bb593:
  br label %bb590
bb589:
  %__tmp1447 = load i32, i32* %y, align 4
  %__tmp1448 = srem i32 %__tmp1447, 2
  %__tmp1449 = icmp ne i32 %__tmp1448, 0
  br i1 %__tmp1449, label %bb594, label %bb595
bb594:
  %__tmp1450 = load i32, i32* %ans, align 4
  %__tmp1451 = load i32, i32* %i, align 4
  %__tmp1452 = sext i32 %__tmp1451 to i64
  %__tmp1453 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1452
  %__tmp1454 = load i32, i32* %__tmp1453, align 4
  %__tmp1455 = mul i32 1, %__tmp1454
  %__tmp1456 = add i32 %__tmp1450, %__tmp1455
  store i32 %__tmp1456, i32* %ans, align 4
  br label %bb596
bb595:
  br label %bb596
bb596:
  br label %bb590
bb590:
  %__tmp1457 = load i32, i32* %x, align 4
  %__tmp1458 = sdiv i32 %__tmp1457, 2
  store i32 %__tmp1458, i32* %x, align 4
  %__tmp1459 = load i32, i32* %y, align 4
  %__tmp1460 = sdiv i32 %__tmp1459, 2
  store i32 %__tmp1460, i32* %y, align 4
  %__tmp1461 = load i32, i32* %i, align 4
  %__tmp1462 = add i32 %__tmp1461, 1
  store i32 %__tmp1462, i32* %i, align 4
  br label %bb585
bb587:
  %__tmp1463 = load i32, i32* %ans, align 4
  store i32 %__tmp1463, i32* %sum.10, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1464 = load i32, i32* %al.10, align 4
  store i32 %__tmp1464, i32* %x, align 4
  %__tmp1465 = load i32, i32* %c.10, align 4
  store i32 %__tmp1465, i32* %y, align 4
  br label %bb597
bb597:
  %__tmp1466 = load i32, i32* %i, align 4
  %__tmp1467 = icmp slt i32 %__tmp1466, 16
  br i1 %__tmp1467, label %bb598, label %bb599
bb598:
  %__tmp1468 = load i32, i32* %x, align 4
  %__tmp1469 = srem i32 %__tmp1468, 2
  %__tmp1470 = icmp ne i32 %__tmp1469, 0
  br i1 %__tmp1470, label %bb603, label %bb605
bb605:
  br label %bb604
bb603:
  %__tmp1471 = load i32, i32* %y, align 4
  %__tmp1472 = srem i32 %__tmp1471, 2
  %__tmp1473 = icmp ne i32 %__tmp1472, 0
  br label %bb604
bb604:
  %__tmp1474 = phi i1 [ 0, %bb605 ], [ %__tmp1473, %bb603 ]
  br i1 %__tmp1474, label %bb600, label %bb601
bb600:
  %__tmp1475 = load i32, i32* %ans, align 4
  %__tmp1476 = load i32, i32* %i, align 4
  %__tmp1477 = sext i32 %__tmp1476 to i64
  %__tmp1478 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1477
  %__tmp1479 = load i32, i32* %__tmp1478, align 4
  %__tmp1480 = mul i32 1, %__tmp1479
  %__tmp1481 = add i32 %__tmp1475, %__tmp1480
  store i32 %__tmp1481, i32* %ans, align 4
  br label %bb602
bb601:
  br label %bb602
bb602:
  %__tmp1482 = load i32, i32* %x, align 4
  %__tmp1483 = sdiv i32 %__tmp1482, 2
  store i32 %__tmp1483, i32* %x, align 4
  %__tmp1484 = load i32, i32* %y, align 4
  %__tmp1485 = sdiv i32 %__tmp1484, 2
  store i32 %__tmp1485, i32* %y, align 4
  %__tmp1486 = load i32, i32* %i, align 4
  %__tmp1487 = add i32 %__tmp1486, 1
  store i32 %__tmp1487, i32* %i, align 4
  br label %bb597
bb599:
  %__tmp1488 = load i32, i32* %ans, align 4
  store i32 %__tmp1488, i32* %c.10, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1489 = load i32, i32* %c.10, align 4
  %__tmp1490 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp1491 = load i32, i32* %__tmp1490, align 4
  %__tmp1492 = mul i32 %__tmp1489, %__tmp1491
  store i32 %__tmp1492, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb609
bb609:
  %__tmp1493 = load i32, i32* %i, align 4
  %__tmp1494 = icmp slt i32 %__tmp1493, 16
  br i1 %__tmp1494, label %bb610, label %bb611
bb610:
  %__tmp1495 = load i32, i32* %x, align 4
  %__tmp1496 = srem i32 %__tmp1495, 2
  %__tmp1497 = icmp ne i32 %__tmp1496, 0
  br i1 %__tmp1497, label %bb615, label %bb617
bb617:
  br label %bb616
bb615:
  %__tmp1498 = load i32, i32* %y, align 4
  %__tmp1499 = srem i32 %__tmp1498, 2
  %__tmp1500 = icmp ne i32 %__tmp1499, 0
  br label %bb616
bb616:
  %__tmp1501 = phi i1 [ 0, %bb617 ], [ %__tmp1500, %bb615 ]
  br i1 %__tmp1501, label %bb612, label %bb613
bb612:
  %__tmp1502 = load i32, i32* %ans, align 4
  %__tmp1503 = load i32, i32* %i, align 4
  %__tmp1504 = sext i32 %__tmp1503 to i64
  %__tmp1505 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1504
  %__tmp1506 = load i32, i32* %__tmp1505, align 4
  %__tmp1507 = mul i32 1, %__tmp1506
  %__tmp1508 = add i32 %__tmp1502, %__tmp1507
  store i32 %__tmp1508, i32* %ans, align 4
  br label %bb614
bb613:
  br label %bb614
bb614:
  %__tmp1509 = load i32, i32* %x, align 4
  %__tmp1510 = sdiv i32 %__tmp1509, 2
  store i32 %__tmp1510, i32* %x, align 4
  %__tmp1511 = load i32, i32* %y, align 4
  %__tmp1512 = sdiv i32 %__tmp1511, 2
  store i32 %__tmp1512, i32* %y, align 4
  %__tmp1513 = load i32, i32* %i, align 4
  %__tmp1514 = add i32 %__tmp1513, 1
  store i32 %__tmp1514, i32* %i, align 4
  br label %bb609
bb611:
  br label %bb608
bb608:
  %__tmp1515 = load i32, i32* %ans, align 4
  store i32 %__tmp1515, i32* %c.10, align 4
  %__tmp1516 = load i32, i32* %sum.10, align 4
  store i32 %__tmp1516, i32* %al.10, align 4
  br label %bb582
bb584:
  %__tmp1517 = load i32, i32* %al.10, align 4
  store i32 %__tmp1517, i32* %ans, align 4
  %__tmp1518 = load i32, i32* %ans, align 4
  store i32 %__tmp1518, i32* %mres.5, align 4
  br label %bb581
bb580:
  br label %bb581
bb581:
  %__tmp1519 = load i32, i32* %ml.5, align 4
  store i32 %__tmp1519, i32* %al.11, align 4
  %__tmp1520 = load i32, i32* %ml.5, align 4
  store i32 %__tmp1520, i32* %c.11, align 4
  br label %bb618
bb618:
  %__tmp1521 = load i32, i32* %c.11, align 4
  %__tmp1522 = icmp ne i32 %__tmp1521, 0
  br i1 %__tmp1522, label %bb619, label %bb620
bb619:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1523 = load i32, i32* %al.11, align 4
  store i32 %__tmp1523, i32* %x, align 4
  %__tmp1524 = load i32, i32* %c.11, align 4
  store i32 %__tmp1524, i32* %y, align 4
  br label %bb621
bb621:
  %__tmp1525 = load i32, i32* %i, align 4
  %__tmp1526 = icmp slt i32 %__tmp1525, 16
  br i1 %__tmp1526, label %bb622, label %bb623
bb622:
  %__tmp1527 = load i32, i32* %x, align 4
  %__tmp1528 = srem i32 %__tmp1527, 2
  %__tmp1529 = icmp ne i32 %__tmp1528, 0
  br i1 %__tmp1529, label %bb624, label %bb625
bb624:
  %__tmp1530 = load i32, i32* %y, align 4
  %__tmp1531 = srem i32 %__tmp1530, 2
  %__tmp1532 = icmp eq i32 %__tmp1531, 0
  br i1 %__tmp1532, label %bb627, label %bb628
bb627:
  %__tmp1533 = load i32, i32* %ans, align 4
  %__tmp1534 = load i32, i32* %i, align 4
  %__tmp1535 = sext i32 %__tmp1534 to i64
  %__tmp1536 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1535
  %__tmp1537 = load i32, i32* %__tmp1536, align 4
  %__tmp1538 = mul i32 1, %__tmp1537
  %__tmp1539 = add i32 %__tmp1533, %__tmp1538
  store i32 %__tmp1539, i32* %ans, align 4
  br label %bb629
bb628:
  br label %bb629
bb629:
  br label %bb626
bb625:
  %__tmp1540 = load i32, i32* %y, align 4
  %__tmp1541 = srem i32 %__tmp1540, 2
  %__tmp1542 = icmp ne i32 %__tmp1541, 0
  br i1 %__tmp1542, label %bb630, label %bb631
bb630:
  %__tmp1543 = load i32, i32* %ans, align 4
  %__tmp1544 = load i32, i32* %i, align 4
  %__tmp1545 = sext i32 %__tmp1544 to i64
  %__tmp1546 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1545
  %__tmp1547 = load i32, i32* %__tmp1546, align 4
  %__tmp1548 = mul i32 1, %__tmp1547
  %__tmp1549 = add i32 %__tmp1543, %__tmp1548
  store i32 %__tmp1549, i32* %ans, align 4
  br label %bb632
bb631:
  br label %bb632
bb632:
  br label %bb626
bb626:
  %__tmp1550 = load i32, i32* %x, align 4
  %__tmp1551 = sdiv i32 %__tmp1550, 2
  store i32 %__tmp1551, i32* %x, align 4
  %__tmp1552 = load i32, i32* %y, align 4
  %__tmp1553 = sdiv i32 %__tmp1552, 2
  store i32 %__tmp1553, i32* %y, align 4
  %__tmp1554 = load i32, i32* %i, align 4
  %__tmp1555 = add i32 %__tmp1554, 1
  store i32 %__tmp1555, i32* %i, align 4
  br label %bb621
bb623:
  %__tmp1556 = load i32, i32* %ans, align 4
  store i32 %__tmp1556, i32* %sum.11, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1557 = load i32, i32* %al.11, align 4
  store i32 %__tmp1557, i32* %x, align 4
  %__tmp1558 = load i32, i32* %c.11, align 4
  store i32 %__tmp1558, i32* %y, align 4
  br label %bb633
bb633:
  %__tmp1559 = load i32, i32* %i, align 4
  %__tmp1560 = icmp slt i32 %__tmp1559, 16
  br i1 %__tmp1560, label %bb634, label %bb635
bb634:
  %__tmp1561 = load i32, i32* %x, align 4
  %__tmp1562 = srem i32 %__tmp1561, 2
  %__tmp1563 = icmp ne i32 %__tmp1562, 0
  br i1 %__tmp1563, label %bb639, label %bb641
bb641:
  br label %bb640
bb639:
  %__tmp1564 = load i32, i32* %y, align 4
  %__tmp1565 = srem i32 %__tmp1564, 2
  %__tmp1566 = icmp ne i32 %__tmp1565, 0
  br label %bb640
bb640:
  %__tmp1567 = phi i1 [ 0, %bb641 ], [ %__tmp1566, %bb639 ]
  br i1 %__tmp1567, label %bb636, label %bb637
bb636:
  %__tmp1568 = load i32, i32* %ans, align 4
  %__tmp1569 = load i32, i32* %i, align 4
  %__tmp1570 = sext i32 %__tmp1569 to i64
  %__tmp1571 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1570
  %__tmp1572 = load i32, i32* %__tmp1571, align 4
  %__tmp1573 = mul i32 1, %__tmp1572
  %__tmp1574 = add i32 %__tmp1568, %__tmp1573
  store i32 %__tmp1574, i32* %ans, align 4
  br label %bb638
bb637:
  br label %bb638
bb638:
  %__tmp1575 = load i32, i32* %x, align 4
  %__tmp1576 = sdiv i32 %__tmp1575, 2
  store i32 %__tmp1576, i32* %x, align 4
  %__tmp1577 = load i32, i32* %y, align 4
  %__tmp1578 = sdiv i32 %__tmp1577, 2
  store i32 %__tmp1578, i32* %y, align 4
  %__tmp1579 = load i32, i32* %i, align 4
  %__tmp1580 = add i32 %__tmp1579, 1
  store i32 %__tmp1580, i32* %i, align 4
  br label %bb633
bb635:
  %__tmp1581 = load i32, i32* %ans, align 4
  store i32 %__tmp1581, i32* %c.11, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1582 = load i32, i32* %c.11, align 4
  %__tmp1583 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp1584 = load i32, i32* %__tmp1583, align 4
  %__tmp1585 = mul i32 %__tmp1582, %__tmp1584
  store i32 %__tmp1585, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb645
bb645:
  %__tmp1586 = load i32, i32* %i, align 4
  %__tmp1587 = icmp slt i32 %__tmp1586, 16
  br i1 %__tmp1587, label %bb646, label %bb647
bb646:
  %__tmp1588 = load i32, i32* %x, align 4
  %__tmp1589 = srem i32 %__tmp1588, 2
  %__tmp1590 = icmp ne i32 %__tmp1589, 0
  br i1 %__tmp1590, label %bb651, label %bb653
bb653:
  br label %bb652
bb651:
  %__tmp1591 = load i32, i32* %y, align 4
  %__tmp1592 = srem i32 %__tmp1591, 2
  %__tmp1593 = icmp ne i32 %__tmp1592, 0
  br label %bb652
bb652:
  %__tmp1594 = phi i1 [ 0, %bb653 ], [ %__tmp1593, %bb651 ]
  br i1 %__tmp1594, label %bb648, label %bb649
bb648:
  %__tmp1595 = load i32, i32* %ans, align 4
  %__tmp1596 = load i32, i32* %i, align 4
  %__tmp1597 = sext i32 %__tmp1596 to i64
  %__tmp1598 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1597
  %__tmp1599 = load i32, i32* %__tmp1598, align 4
  %__tmp1600 = mul i32 1, %__tmp1599
  %__tmp1601 = add i32 %__tmp1595, %__tmp1600
  store i32 %__tmp1601, i32* %ans, align 4
  br label %bb650
bb649:
  br label %bb650
bb650:
  %__tmp1602 = load i32, i32* %x, align 4
  %__tmp1603 = sdiv i32 %__tmp1602, 2
  store i32 %__tmp1603, i32* %x, align 4
  %__tmp1604 = load i32, i32* %y, align 4
  %__tmp1605 = sdiv i32 %__tmp1604, 2
  store i32 %__tmp1605, i32* %y, align 4
  %__tmp1606 = load i32, i32* %i, align 4
  %__tmp1607 = add i32 %__tmp1606, 1
  store i32 %__tmp1607, i32* %i, align 4
  br label %bb645
bb647:
  br label %bb644
bb644:
  %__tmp1608 = load i32, i32* %ans, align 4
  store i32 %__tmp1608, i32* %c.11, align 4
  %__tmp1609 = load i32, i32* %sum.11, align 4
  store i32 %__tmp1609, i32* %al.11, align 4
  br label %bb618
bb620:
  %__tmp1610 = load i32, i32* %al.11, align 4
  store i32 %__tmp1610, i32* %ans, align 4
  %__tmp1611 = load i32, i32* %ans, align 4
  store i32 %__tmp1611, i32* %ml.5, align 4
  %__tmp1612 = load i32, i32* %mr.5, align 4
  store i32 %__tmp1612, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp1613 = load i32, i32* %y, align 4
  %__tmp1614 = icmp sge i32 %__tmp1613, 15
  br i1 %__tmp1614, label %bb654, label %bb655
bb654:
  %__tmp1615 = load i32, i32* %x, align 4
  %__tmp1616 = icmp slt i32 %__tmp1615, 0
  br i1 %__tmp1616, label %bb657, label %bb658
bb657:
  store i32 65535, i32* %ans, align 4
  br label %bb659
bb658:
  store i32 0, i32* %ans, align 4
  br label %bb659
bb659:
  br label %bb656
bb655:
  %__tmp1617 = load i32, i32* %y, align 4
  %__tmp1618 = icmp sgt i32 %__tmp1617, 0
  br i1 %__tmp1618, label %bb660, label %bb661
bb660:
  %__tmp1619 = load i32, i32* %x, align 4
  %__tmp1620 = icmp sgt i32 %__tmp1619, 32767
  br i1 %__tmp1620, label %bb663, label %bb664
bb663:
  %__tmp1621 = load i32, i32* %x, align 4
  %__tmp1622 = load i32, i32* %y, align 4
  %__tmp1623 = sext i32 %__tmp1622 to i64
  %__tmp1624 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1623
  %__tmp1625 = load i32, i32* %__tmp1624, align 4
  %__tmp1626 = sdiv i32 %__tmp1621, %__tmp1625
  store i32 %__tmp1626, i32* %x, align 4
  %__tmp1627 = load i32, i32* %x, align 4
  %__tmp1628 = add i32 %__tmp1627, 65536
  %__tmp1629 = load i32, i32* %y, align 4
  %__tmp1630 = sub i32 15, %__tmp1629
  %__tmp1631 = add i32 %__tmp1630, 1
  %__tmp1632 = sext i32 %__tmp1631 to i64
  %__tmp1633 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1632
  %__tmp1634 = load i32, i32* %__tmp1633, align 4
  %__tmp1635 = sub i32 %__tmp1628, %__tmp1634
  store i32 %__tmp1635, i32* %ans, align 4
  br label %bb665
bb664:
  %__tmp1636 = load i32, i32* %x, align 4
  %__tmp1637 = load i32, i32* %y, align 4
  %__tmp1638 = sext i32 %__tmp1637 to i64
  %__tmp1639 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1638
  %__tmp1640 = load i32, i32* %__tmp1639, align 4
  %__tmp1641 = sdiv i32 %__tmp1636, %__tmp1640
  store i32 %__tmp1641, i32* %ans, align 4
  br label %bb665
bb665:
  br label %bb662
bb661:
  %__tmp1642 = load i32, i32* %x, align 4
  store i32 %__tmp1642, i32* %ans, align 4
  br label %bb662
bb662:
  br label %bb656
bb656:
  %__tmp1643 = load i32, i32* %ans, align 4
  store i32 %__tmp1643, i32* %mr.5, align 4
  br label %bb567
bb569:
  %__tmp1644 = load i32, i32* %mres.5, align 4
  store i32 %__tmp1644, i32* %ans, align 4
  %__tmp1645 = load i32, i32* %ans, align 4
  store i32 %__tmp1645, i32* %pl.2, align 4
  %__tmp1646 = load i32, i32* %pr.2, align 4
  store i32 %__tmp1646, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp1647 = load i32, i32* %y, align 4
  %__tmp1648 = icmp sge i32 %__tmp1647, 15
  br i1 %__tmp1648, label %bb666, label %bb667
bb666:
  %__tmp1649 = load i32, i32* %x, align 4
  %__tmp1650 = icmp slt i32 %__tmp1649, 0
  br i1 %__tmp1650, label %bb669, label %bb670
bb669:
  store i32 65535, i32* %ans, align 4
  br label %bb671
bb670:
  store i32 0, i32* %ans, align 4
  br label %bb671
bb671:
  br label %bb668
bb667:
  %__tmp1651 = load i32, i32* %y, align 4
  %__tmp1652 = icmp sgt i32 %__tmp1651, 0
  br i1 %__tmp1652, label %bb672, label %bb673
bb672:
  %__tmp1653 = load i32, i32* %x, align 4
  %__tmp1654 = icmp sgt i32 %__tmp1653, 32767
  br i1 %__tmp1654, label %bb675, label %bb676
bb675:
  %__tmp1655 = load i32, i32* %x, align 4
  %__tmp1656 = load i32, i32* %y, align 4
  %__tmp1657 = sext i32 %__tmp1656 to i64
  %__tmp1658 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1657
  %__tmp1659 = load i32, i32* %__tmp1658, align 4
  %__tmp1660 = sdiv i32 %__tmp1655, %__tmp1659
  store i32 %__tmp1660, i32* %x, align 4
  %__tmp1661 = load i32, i32* %x, align 4
  %__tmp1662 = add i32 %__tmp1661, 65536
  %__tmp1663 = load i32, i32* %y, align 4
  %__tmp1664 = sub i32 15, %__tmp1663
  %__tmp1665 = add i32 %__tmp1664, 1
  %__tmp1666 = sext i32 %__tmp1665 to i64
  %__tmp1667 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1666
  %__tmp1668 = load i32, i32* %__tmp1667, align 4
  %__tmp1669 = sub i32 %__tmp1662, %__tmp1668
  store i32 %__tmp1669, i32* %ans, align 4
  br label %bb677
bb676:
  %__tmp1670 = load i32, i32* %x, align 4
  %__tmp1671 = load i32, i32* %y, align 4
  %__tmp1672 = sext i32 %__tmp1671 to i64
  %__tmp1673 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1672
  %__tmp1674 = load i32, i32* %__tmp1673, align 4
  %__tmp1675 = sdiv i32 %__tmp1670, %__tmp1674
  store i32 %__tmp1675, i32* %ans, align 4
  br label %bb677
bb677:
  br label %bb674
bb673:
  %__tmp1676 = load i32, i32* %x, align 4
  store i32 %__tmp1676, i32* %ans, align 4
  br label %bb674
bb674:
  br label %bb668
bb668:
  %__tmp1677 = load i32, i32* %ans, align 4
  store i32 %__tmp1677, i32* %pr.2, align 4
  br label %bb453
bb455:
  %__tmp1678 = load i32, i32* %pres.2, align 4
  store i32 %__tmp1678, i32* %ans, align 4
  %__tmp1679 = load i32, i32* %ans, align 4
  call void @putint(i32 %__tmp1679)
  call void @putch(i32 10)
  %__tmp1680 = load i32, i32* %cur, align 4
  %__tmp1681 = add i32 %__tmp1680, 1
  store i32 %__tmp1681, i32* %cur, align 4
  br label %bb450
bb452:
  store i32 0, i32* %cur, align 4
  br label %bb678
bb678:
  %__tmp1682 = load i32, i32* %cur, align 4
  %__tmp1683 = icmp slt i32 %__tmp1682, 16
  br i1 %__tmp1683, label %bb679, label %bb680
bb679:
  store i32 2, i32* %pl.3, align 4
  %__tmp1684 = load i32, i32* %cur, align 4
  store i32 %__tmp1684, i32* %pr.3, align 4
  store i32 1, i32* %pres.3, align 4
  br label %bb681
bb681:
  %__tmp1685 = load i32, i32* %pr.3, align 4
  %__tmp1686 = icmp sgt i32 %__tmp1685, 0
  br i1 %__tmp1686, label %bb682, label %bb683
bb682:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1687 = load i32, i32* %pr.3, align 4
  store i32 %__tmp1687, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb684
bb684:
  %__tmp1688 = load i32, i32* %i, align 4
  %__tmp1689 = icmp slt i32 %__tmp1688, 16
  br i1 %__tmp1689, label %bb685, label %bb686
bb685:
  %__tmp1690 = load i32, i32* %x, align 4
  %__tmp1691 = srem i32 %__tmp1690, 2
  %__tmp1692 = icmp ne i32 %__tmp1691, 0
  br i1 %__tmp1692, label %bb690, label %bb692
bb692:
  br label %bb691
bb690:
  %__tmp1693 = load i32, i32* %y, align 4
  %__tmp1694 = srem i32 %__tmp1693, 2
  %__tmp1695 = icmp ne i32 %__tmp1694, 0
  br label %bb691
bb691:
  %__tmp1696 = phi i1 [ 0, %bb692 ], [ %__tmp1695, %bb690 ]
  br i1 %__tmp1696, label %bb687, label %bb688
bb687:
  %__tmp1697 = load i32, i32* %ans, align 4
  %__tmp1698 = load i32, i32* %i, align 4
  %__tmp1699 = sext i32 %__tmp1698 to i64
  %__tmp1700 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1699
  %__tmp1701 = load i32, i32* %__tmp1700, align 4
  %__tmp1702 = mul i32 1, %__tmp1701
  %__tmp1703 = add i32 %__tmp1697, %__tmp1702
  store i32 %__tmp1703, i32* %ans, align 4
  br label %bb689
bb688:
  br label %bb689
bb689:
  %__tmp1704 = load i32, i32* %x, align 4
  %__tmp1705 = sdiv i32 %__tmp1704, 2
  store i32 %__tmp1705, i32* %x, align 4
  %__tmp1706 = load i32, i32* %y, align 4
  %__tmp1707 = sdiv i32 %__tmp1706, 2
  store i32 %__tmp1707, i32* %y, align 4
  %__tmp1708 = load i32, i32* %i, align 4
  %__tmp1709 = add i32 %__tmp1708, 1
  store i32 %__tmp1709, i32* %i, align 4
  br label %bb684
bb686:
  %__tmp1710 = load i32, i32* %ans, align 4
  %__tmp1711 = icmp ne i32 %__tmp1710, 0
  br i1 %__tmp1711, label %bb693, label %bb694
bb693:
  %__tmp1712 = load i32, i32* %pres.3, align 4
  store i32 %__tmp1712, i32* %ml.6, align 4
  %__tmp1713 = load i32, i32* %pl.3, align 4
  store i32 %__tmp1713, i32* %mr.6, align 4
  store i32 0, i32* %mres.6, align 4
  br label %bb696
bb696:
  %__tmp1714 = load i32, i32* %mr.6, align 4
  %__tmp1715 = icmp ne i32 %__tmp1714, 0
  br i1 %__tmp1715, label %bb697, label %bb698
bb697:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1716 = load i32, i32* %mr.6, align 4
  store i32 %__tmp1716, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb699
bb699:
  %__tmp1717 = load i32, i32* %i, align 4
  %__tmp1718 = icmp slt i32 %__tmp1717, 16
  br i1 %__tmp1718, label %bb700, label %bb701
bb700:
  %__tmp1719 = load i32, i32* %x, align 4
  %__tmp1720 = srem i32 %__tmp1719, 2
  %__tmp1721 = icmp ne i32 %__tmp1720, 0
  br i1 %__tmp1721, label %bb705, label %bb707
bb707:
  br label %bb706
bb705:
  %__tmp1722 = load i32, i32* %y, align 4
  %__tmp1723 = srem i32 %__tmp1722, 2
  %__tmp1724 = icmp ne i32 %__tmp1723, 0
  br label %bb706
bb706:
  %__tmp1725 = phi i1 [ 0, %bb707 ], [ %__tmp1724, %bb705 ]
  br i1 %__tmp1725, label %bb702, label %bb703
bb702:
  %__tmp1726 = load i32, i32* %ans, align 4
  %__tmp1727 = load i32, i32* %i, align 4
  %__tmp1728 = sext i32 %__tmp1727 to i64
  %__tmp1729 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1728
  %__tmp1730 = load i32, i32* %__tmp1729, align 4
  %__tmp1731 = mul i32 1, %__tmp1730
  %__tmp1732 = add i32 %__tmp1726, %__tmp1731
  store i32 %__tmp1732, i32* %ans, align 4
  br label %bb704
bb703:
  br label %bb704
bb704:
  %__tmp1733 = load i32, i32* %x, align 4
  %__tmp1734 = sdiv i32 %__tmp1733, 2
  store i32 %__tmp1734, i32* %x, align 4
  %__tmp1735 = load i32, i32* %y, align 4
  %__tmp1736 = sdiv i32 %__tmp1735, 2
  store i32 %__tmp1736, i32* %y, align 4
  %__tmp1737 = load i32, i32* %i, align 4
  %__tmp1738 = add i32 %__tmp1737, 1
  store i32 %__tmp1738, i32* %i, align 4
  br label %bb699
bb701:
  %__tmp1739 = load i32, i32* %ans, align 4
  %__tmp1740 = icmp ne i32 %__tmp1739, 0
  br i1 %__tmp1740, label %bb708, label %bb709
bb708:
  %__tmp1741 = load i32, i32* %mres.6, align 4
  store i32 %__tmp1741, i32* %al.12, align 4
  %__tmp1742 = load i32, i32* %ml.6, align 4
  store i32 %__tmp1742, i32* %c.12, align 4
  br label %bb711
bb711:
  %__tmp1743 = load i32, i32* %c.12, align 4
  %__tmp1744 = icmp ne i32 %__tmp1743, 0
  br i1 %__tmp1744, label %bb712, label %bb713
bb712:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1745 = load i32, i32* %al.12, align 4
  store i32 %__tmp1745, i32* %x, align 4
  %__tmp1746 = load i32, i32* %c.12, align 4
  store i32 %__tmp1746, i32* %y, align 4
  br label %bb714
bb714:
  %__tmp1747 = load i32, i32* %i, align 4
  %__tmp1748 = icmp slt i32 %__tmp1747, 16
  br i1 %__tmp1748, label %bb715, label %bb716
bb715:
  %__tmp1749 = load i32, i32* %x, align 4
  %__tmp1750 = srem i32 %__tmp1749, 2
  %__tmp1751 = icmp ne i32 %__tmp1750, 0
  br i1 %__tmp1751, label %bb717, label %bb718
bb717:
  %__tmp1752 = load i32, i32* %y, align 4
  %__tmp1753 = srem i32 %__tmp1752, 2
  %__tmp1754 = icmp eq i32 %__tmp1753, 0
  br i1 %__tmp1754, label %bb720, label %bb721
bb720:
  %__tmp1755 = load i32, i32* %ans, align 4
  %__tmp1756 = load i32, i32* %i, align 4
  %__tmp1757 = sext i32 %__tmp1756 to i64
  %__tmp1758 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1757
  %__tmp1759 = load i32, i32* %__tmp1758, align 4
  %__tmp1760 = mul i32 1, %__tmp1759
  %__tmp1761 = add i32 %__tmp1755, %__tmp1760
  store i32 %__tmp1761, i32* %ans, align 4
  br label %bb722
bb721:
  br label %bb722
bb722:
  br label %bb719
bb718:
  %__tmp1762 = load i32, i32* %y, align 4
  %__tmp1763 = srem i32 %__tmp1762, 2
  %__tmp1764 = icmp ne i32 %__tmp1763, 0
  br i1 %__tmp1764, label %bb723, label %bb724
bb723:
  %__tmp1765 = load i32, i32* %ans, align 4
  %__tmp1766 = load i32, i32* %i, align 4
  %__tmp1767 = sext i32 %__tmp1766 to i64
  %__tmp1768 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1767
  %__tmp1769 = load i32, i32* %__tmp1768, align 4
  %__tmp1770 = mul i32 1, %__tmp1769
  %__tmp1771 = add i32 %__tmp1765, %__tmp1770
  store i32 %__tmp1771, i32* %ans, align 4
  br label %bb725
bb724:
  br label %bb725
bb725:
  br label %bb719
bb719:
  %__tmp1772 = load i32, i32* %x, align 4
  %__tmp1773 = sdiv i32 %__tmp1772, 2
  store i32 %__tmp1773, i32* %x, align 4
  %__tmp1774 = load i32, i32* %y, align 4
  %__tmp1775 = sdiv i32 %__tmp1774, 2
  store i32 %__tmp1775, i32* %y, align 4
  %__tmp1776 = load i32, i32* %i, align 4
  %__tmp1777 = add i32 %__tmp1776, 1
  store i32 %__tmp1777, i32* %i, align 4
  br label %bb714
bb716:
  %__tmp1778 = load i32, i32* %ans, align 4
  store i32 %__tmp1778, i32* %sum.12, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1779 = load i32, i32* %al.12, align 4
  store i32 %__tmp1779, i32* %x, align 4
  %__tmp1780 = load i32, i32* %c.12, align 4
  store i32 %__tmp1780, i32* %y, align 4
  br label %bb726
bb726:
  %__tmp1781 = load i32, i32* %i, align 4
  %__tmp1782 = icmp slt i32 %__tmp1781, 16
  br i1 %__tmp1782, label %bb727, label %bb728
bb727:
  %__tmp1783 = load i32, i32* %x, align 4
  %__tmp1784 = srem i32 %__tmp1783, 2
  %__tmp1785 = icmp ne i32 %__tmp1784, 0
  br i1 %__tmp1785, label %bb732, label %bb734
bb734:
  br label %bb733
bb732:
  %__tmp1786 = load i32, i32* %y, align 4
  %__tmp1787 = srem i32 %__tmp1786, 2
  %__tmp1788 = icmp ne i32 %__tmp1787, 0
  br label %bb733
bb733:
  %__tmp1789 = phi i1 [ 0, %bb734 ], [ %__tmp1788, %bb732 ]
  br i1 %__tmp1789, label %bb729, label %bb730
bb729:
  %__tmp1790 = load i32, i32* %ans, align 4
  %__tmp1791 = load i32, i32* %i, align 4
  %__tmp1792 = sext i32 %__tmp1791 to i64
  %__tmp1793 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1792
  %__tmp1794 = load i32, i32* %__tmp1793, align 4
  %__tmp1795 = mul i32 1, %__tmp1794
  %__tmp1796 = add i32 %__tmp1790, %__tmp1795
  store i32 %__tmp1796, i32* %ans, align 4
  br label %bb731
bb730:
  br label %bb731
bb731:
  %__tmp1797 = load i32, i32* %x, align 4
  %__tmp1798 = sdiv i32 %__tmp1797, 2
  store i32 %__tmp1798, i32* %x, align 4
  %__tmp1799 = load i32, i32* %y, align 4
  %__tmp1800 = sdiv i32 %__tmp1799, 2
  store i32 %__tmp1800, i32* %y, align 4
  %__tmp1801 = load i32, i32* %i, align 4
  %__tmp1802 = add i32 %__tmp1801, 1
  store i32 %__tmp1802, i32* %i, align 4
  br label %bb726
bb728:
  %__tmp1803 = load i32, i32* %ans, align 4
  store i32 %__tmp1803, i32* %c.12, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1804 = load i32, i32* %c.12, align 4
  %__tmp1805 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp1806 = load i32, i32* %__tmp1805, align 4
  %__tmp1807 = mul i32 %__tmp1804, %__tmp1806
  store i32 %__tmp1807, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb738
bb738:
  %__tmp1808 = load i32, i32* %i, align 4
  %__tmp1809 = icmp slt i32 %__tmp1808, 16
  br i1 %__tmp1809, label %bb739, label %bb740
bb739:
  %__tmp1810 = load i32, i32* %x, align 4
  %__tmp1811 = srem i32 %__tmp1810, 2
  %__tmp1812 = icmp ne i32 %__tmp1811, 0
  br i1 %__tmp1812, label %bb744, label %bb746
bb746:
  br label %bb745
bb744:
  %__tmp1813 = load i32, i32* %y, align 4
  %__tmp1814 = srem i32 %__tmp1813, 2
  %__tmp1815 = icmp ne i32 %__tmp1814, 0
  br label %bb745
bb745:
  %__tmp1816 = phi i1 [ 0, %bb746 ], [ %__tmp1815, %bb744 ]
  br i1 %__tmp1816, label %bb741, label %bb742
bb741:
  %__tmp1817 = load i32, i32* %ans, align 4
  %__tmp1818 = load i32, i32* %i, align 4
  %__tmp1819 = sext i32 %__tmp1818 to i64
  %__tmp1820 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1819
  %__tmp1821 = load i32, i32* %__tmp1820, align 4
  %__tmp1822 = mul i32 1, %__tmp1821
  %__tmp1823 = add i32 %__tmp1817, %__tmp1822
  store i32 %__tmp1823, i32* %ans, align 4
  br label %bb743
bb742:
  br label %bb743
bb743:
  %__tmp1824 = load i32, i32* %x, align 4
  %__tmp1825 = sdiv i32 %__tmp1824, 2
  store i32 %__tmp1825, i32* %x, align 4
  %__tmp1826 = load i32, i32* %y, align 4
  %__tmp1827 = sdiv i32 %__tmp1826, 2
  store i32 %__tmp1827, i32* %y, align 4
  %__tmp1828 = load i32, i32* %i, align 4
  %__tmp1829 = add i32 %__tmp1828, 1
  store i32 %__tmp1829, i32* %i, align 4
  br label %bb738
bb740:
  br label %bb737
bb737:
  %__tmp1830 = load i32, i32* %ans, align 4
  store i32 %__tmp1830, i32* %c.12, align 4
  %__tmp1831 = load i32, i32* %sum.12, align 4
  store i32 %__tmp1831, i32* %al.12, align 4
  br label %bb711
bb713:
  %__tmp1832 = load i32, i32* %al.12, align 4
  store i32 %__tmp1832, i32* %ans, align 4
  %__tmp1833 = load i32, i32* %ans, align 4
  store i32 %__tmp1833, i32* %mres.6, align 4
  br label %bb710
bb709:
  br label %bb710
bb710:
  %__tmp1834 = load i32, i32* %ml.6, align 4
  store i32 %__tmp1834, i32* %al.13, align 4
  %__tmp1835 = load i32, i32* %ml.6, align 4
  store i32 %__tmp1835, i32* %c.13, align 4
  br label %bb747
bb747:
  %__tmp1836 = load i32, i32* %c.13, align 4
  %__tmp1837 = icmp ne i32 %__tmp1836, 0
  br i1 %__tmp1837, label %bb748, label %bb749
bb748:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1838 = load i32, i32* %al.13, align 4
  store i32 %__tmp1838, i32* %x, align 4
  %__tmp1839 = load i32, i32* %c.13, align 4
  store i32 %__tmp1839, i32* %y, align 4
  br label %bb750
bb750:
  %__tmp1840 = load i32, i32* %i, align 4
  %__tmp1841 = icmp slt i32 %__tmp1840, 16
  br i1 %__tmp1841, label %bb751, label %bb752
bb751:
  %__tmp1842 = load i32, i32* %x, align 4
  %__tmp1843 = srem i32 %__tmp1842, 2
  %__tmp1844 = icmp ne i32 %__tmp1843, 0
  br i1 %__tmp1844, label %bb753, label %bb754
bb753:
  %__tmp1845 = load i32, i32* %y, align 4
  %__tmp1846 = srem i32 %__tmp1845, 2
  %__tmp1847 = icmp eq i32 %__tmp1846, 0
  br i1 %__tmp1847, label %bb756, label %bb757
bb756:
  %__tmp1848 = load i32, i32* %ans, align 4
  %__tmp1849 = load i32, i32* %i, align 4
  %__tmp1850 = sext i32 %__tmp1849 to i64
  %__tmp1851 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1850
  %__tmp1852 = load i32, i32* %__tmp1851, align 4
  %__tmp1853 = mul i32 1, %__tmp1852
  %__tmp1854 = add i32 %__tmp1848, %__tmp1853
  store i32 %__tmp1854, i32* %ans, align 4
  br label %bb758
bb757:
  br label %bb758
bb758:
  br label %bb755
bb754:
  %__tmp1855 = load i32, i32* %y, align 4
  %__tmp1856 = srem i32 %__tmp1855, 2
  %__tmp1857 = icmp ne i32 %__tmp1856, 0
  br i1 %__tmp1857, label %bb759, label %bb760
bb759:
  %__tmp1858 = load i32, i32* %ans, align 4
  %__tmp1859 = load i32, i32* %i, align 4
  %__tmp1860 = sext i32 %__tmp1859 to i64
  %__tmp1861 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1860
  %__tmp1862 = load i32, i32* %__tmp1861, align 4
  %__tmp1863 = mul i32 1, %__tmp1862
  %__tmp1864 = add i32 %__tmp1858, %__tmp1863
  store i32 %__tmp1864, i32* %ans, align 4
  br label %bb761
bb760:
  br label %bb761
bb761:
  br label %bb755
bb755:
  %__tmp1865 = load i32, i32* %x, align 4
  %__tmp1866 = sdiv i32 %__tmp1865, 2
  store i32 %__tmp1866, i32* %x, align 4
  %__tmp1867 = load i32, i32* %y, align 4
  %__tmp1868 = sdiv i32 %__tmp1867, 2
  store i32 %__tmp1868, i32* %y, align 4
  %__tmp1869 = load i32, i32* %i, align 4
  %__tmp1870 = add i32 %__tmp1869, 1
  store i32 %__tmp1870, i32* %i, align 4
  br label %bb750
bb752:
  %__tmp1871 = load i32, i32* %ans, align 4
  store i32 %__tmp1871, i32* %sum.13, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1872 = load i32, i32* %al.13, align 4
  store i32 %__tmp1872, i32* %x, align 4
  %__tmp1873 = load i32, i32* %c.13, align 4
  store i32 %__tmp1873, i32* %y, align 4
  br label %bb762
bb762:
  %__tmp1874 = load i32, i32* %i, align 4
  %__tmp1875 = icmp slt i32 %__tmp1874, 16
  br i1 %__tmp1875, label %bb763, label %bb764
bb763:
  %__tmp1876 = load i32, i32* %x, align 4
  %__tmp1877 = srem i32 %__tmp1876, 2
  %__tmp1878 = icmp ne i32 %__tmp1877, 0
  br i1 %__tmp1878, label %bb768, label %bb770
bb770:
  br label %bb769
bb768:
  %__tmp1879 = load i32, i32* %y, align 4
  %__tmp1880 = srem i32 %__tmp1879, 2
  %__tmp1881 = icmp ne i32 %__tmp1880, 0
  br label %bb769
bb769:
  %__tmp1882 = phi i1 [ 0, %bb770 ], [ %__tmp1881, %bb768 ]
  br i1 %__tmp1882, label %bb765, label %bb766
bb765:
  %__tmp1883 = load i32, i32* %ans, align 4
  %__tmp1884 = load i32, i32* %i, align 4
  %__tmp1885 = sext i32 %__tmp1884 to i64
  %__tmp1886 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1885
  %__tmp1887 = load i32, i32* %__tmp1886, align 4
  %__tmp1888 = mul i32 1, %__tmp1887
  %__tmp1889 = add i32 %__tmp1883, %__tmp1888
  store i32 %__tmp1889, i32* %ans, align 4
  br label %bb767
bb766:
  br label %bb767
bb767:
  %__tmp1890 = load i32, i32* %x, align 4
  %__tmp1891 = sdiv i32 %__tmp1890, 2
  store i32 %__tmp1891, i32* %x, align 4
  %__tmp1892 = load i32, i32* %y, align 4
  %__tmp1893 = sdiv i32 %__tmp1892, 2
  store i32 %__tmp1893, i32* %y, align 4
  %__tmp1894 = load i32, i32* %i, align 4
  %__tmp1895 = add i32 %__tmp1894, 1
  store i32 %__tmp1895, i32* %i, align 4
  br label %bb762
bb764:
  %__tmp1896 = load i32, i32* %ans, align 4
  store i32 %__tmp1896, i32* %c.13, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1897 = load i32, i32* %c.13, align 4
  %__tmp1898 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp1899 = load i32, i32* %__tmp1898, align 4
  %__tmp1900 = mul i32 %__tmp1897, %__tmp1899
  store i32 %__tmp1900, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb774
bb774:
  %__tmp1901 = load i32, i32* %i, align 4
  %__tmp1902 = icmp slt i32 %__tmp1901, 16
  br i1 %__tmp1902, label %bb775, label %bb776
bb775:
  %__tmp1903 = load i32, i32* %x, align 4
  %__tmp1904 = srem i32 %__tmp1903, 2
  %__tmp1905 = icmp ne i32 %__tmp1904, 0
  br i1 %__tmp1905, label %bb780, label %bb782
bb782:
  br label %bb781
bb780:
  %__tmp1906 = load i32, i32* %y, align 4
  %__tmp1907 = srem i32 %__tmp1906, 2
  %__tmp1908 = icmp ne i32 %__tmp1907, 0
  br label %bb781
bb781:
  %__tmp1909 = phi i1 [ 0, %bb782 ], [ %__tmp1908, %bb780 ]
  br i1 %__tmp1909, label %bb777, label %bb778
bb777:
  %__tmp1910 = load i32, i32* %ans, align 4
  %__tmp1911 = load i32, i32* %i, align 4
  %__tmp1912 = sext i32 %__tmp1911 to i64
  %__tmp1913 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1912
  %__tmp1914 = load i32, i32* %__tmp1913, align 4
  %__tmp1915 = mul i32 1, %__tmp1914
  %__tmp1916 = add i32 %__tmp1910, %__tmp1915
  store i32 %__tmp1916, i32* %ans, align 4
  br label %bb779
bb778:
  br label %bb779
bb779:
  %__tmp1917 = load i32, i32* %x, align 4
  %__tmp1918 = sdiv i32 %__tmp1917, 2
  store i32 %__tmp1918, i32* %x, align 4
  %__tmp1919 = load i32, i32* %y, align 4
  %__tmp1920 = sdiv i32 %__tmp1919, 2
  store i32 %__tmp1920, i32* %y, align 4
  %__tmp1921 = load i32, i32* %i, align 4
  %__tmp1922 = add i32 %__tmp1921, 1
  store i32 %__tmp1922, i32* %i, align 4
  br label %bb774
bb776:
  br label %bb773
bb773:
  %__tmp1923 = load i32, i32* %ans, align 4
  store i32 %__tmp1923, i32* %c.13, align 4
  %__tmp1924 = load i32, i32* %sum.13, align 4
  store i32 %__tmp1924, i32* %al.13, align 4
  br label %bb747
bb749:
  %__tmp1925 = load i32, i32* %al.13, align 4
  store i32 %__tmp1925, i32* %ans, align 4
  %__tmp1926 = load i32, i32* %ans, align 4
  store i32 %__tmp1926, i32* %ml.6, align 4
  %__tmp1927 = load i32, i32* %mr.6, align 4
  store i32 %__tmp1927, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp1928 = load i32, i32* %y, align 4
  %__tmp1929 = icmp sge i32 %__tmp1928, 15
  br i1 %__tmp1929, label %bb783, label %bb784
bb783:
  %__tmp1930 = load i32, i32* %x, align 4
  %__tmp1931 = icmp slt i32 %__tmp1930, 0
  br i1 %__tmp1931, label %bb786, label %bb787
bb786:
  store i32 65535, i32* %ans, align 4
  br label %bb788
bb787:
  store i32 0, i32* %ans, align 4
  br label %bb788
bb788:
  br label %bb785
bb784:
  %__tmp1932 = load i32, i32* %y, align 4
  %__tmp1933 = icmp sgt i32 %__tmp1932, 0
  br i1 %__tmp1933, label %bb789, label %bb790
bb789:
  %__tmp1934 = load i32, i32* %x, align 4
  %__tmp1935 = icmp sgt i32 %__tmp1934, 32767
  br i1 %__tmp1935, label %bb792, label %bb793
bb792:
  %__tmp1936 = load i32, i32* %x, align 4
  %__tmp1937 = load i32, i32* %y, align 4
  %__tmp1938 = sext i32 %__tmp1937 to i64
  %__tmp1939 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1938
  %__tmp1940 = load i32, i32* %__tmp1939, align 4
  %__tmp1941 = sdiv i32 %__tmp1936, %__tmp1940
  store i32 %__tmp1941, i32* %x, align 4
  %__tmp1942 = load i32, i32* %x, align 4
  %__tmp1943 = add i32 %__tmp1942, 65536
  %__tmp1944 = load i32, i32* %y, align 4
  %__tmp1945 = sub i32 15, %__tmp1944
  %__tmp1946 = add i32 %__tmp1945, 1
  %__tmp1947 = sext i32 %__tmp1946 to i64
  %__tmp1948 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1947
  %__tmp1949 = load i32, i32* %__tmp1948, align 4
  %__tmp1950 = sub i32 %__tmp1943, %__tmp1949
  store i32 %__tmp1950, i32* %ans, align 4
  br label %bb794
bb793:
  %__tmp1951 = load i32, i32* %x, align 4
  %__tmp1952 = load i32, i32* %y, align 4
  %__tmp1953 = sext i32 %__tmp1952 to i64
  %__tmp1954 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1953
  %__tmp1955 = load i32, i32* %__tmp1954, align 4
  %__tmp1956 = sdiv i32 %__tmp1951, %__tmp1955
  store i32 %__tmp1956, i32* %ans, align 4
  br label %bb794
bb794:
  br label %bb791
bb790:
  %__tmp1957 = load i32, i32* %x, align 4
  store i32 %__tmp1957, i32* %ans, align 4
  br label %bb791
bb791:
  br label %bb785
bb785:
  %__tmp1958 = load i32, i32* %ans, align 4
  store i32 %__tmp1958, i32* %mr.6, align 4
  br label %bb696
bb698:
  %__tmp1959 = load i32, i32* %mres.6, align 4
  store i32 %__tmp1959, i32* %ans, align 4
  %__tmp1960 = load i32, i32* %ans, align 4
  store i32 %__tmp1960, i32* %pres.3, align 4
  br label %bb695
bb694:
  br label %bb695
bb695:
  %__tmp1961 = load i32, i32* %pl.3, align 4
  store i32 %__tmp1961, i32* %ml.7, align 4
  %__tmp1962 = load i32, i32* %pl.3, align 4
  store i32 %__tmp1962, i32* %mr.7, align 4
  store i32 0, i32* %mres.7, align 4
  br label %bb795
bb795:
  %__tmp1963 = load i32, i32* %mr.7, align 4
  %__tmp1964 = icmp ne i32 %__tmp1963, 0
  br i1 %__tmp1964, label %bb796, label %bb797
bb796:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1965 = load i32, i32* %mr.7, align 4
  store i32 %__tmp1965, i32* %x, align 4
  store i32 1, i32* %y, align 4
  br label %bb798
bb798:
  %__tmp1966 = load i32, i32* %i, align 4
  %__tmp1967 = icmp slt i32 %__tmp1966, 16
  br i1 %__tmp1967, label %bb799, label %bb800
bb799:
  %__tmp1968 = load i32, i32* %x, align 4
  %__tmp1969 = srem i32 %__tmp1968, 2
  %__tmp1970 = icmp ne i32 %__tmp1969, 0
  br i1 %__tmp1970, label %bb804, label %bb806
bb806:
  br label %bb805
bb804:
  %__tmp1971 = load i32, i32* %y, align 4
  %__tmp1972 = srem i32 %__tmp1971, 2
  %__tmp1973 = icmp ne i32 %__tmp1972, 0
  br label %bb805
bb805:
  %__tmp1974 = phi i1 [ 0, %bb806 ], [ %__tmp1973, %bb804 ]
  br i1 %__tmp1974, label %bb801, label %bb802
bb801:
  %__tmp1975 = load i32, i32* %ans, align 4
  %__tmp1976 = load i32, i32* %i, align 4
  %__tmp1977 = sext i32 %__tmp1976 to i64
  %__tmp1978 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp1977
  %__tmp1979 = load i32, i32* %__tmp1978, align 4
  %__tmp1980 = mul i32 1, %__tmp1979
  %__tmp1981 = add i32 %__tmp1975, %__tmp1980
  store i32 %__tmp1981, i32* %ans, align 4
  br label %bb803
bb802:
  br label %bb803
bb803:
  %__tmp1982 = load i32, i32* %x, align 4
  %__tmp1983 = sdiv i32 %__tmp1982, 2
  store i32 %__tmp1983, i32* %x, align 4
  %__tmp1984 = load i32, i32* %y, align 4
  %__tmp1985 = sdiv i32 %__tmp1984, 2
  store i32 %__tmp1985, i32* %y, align 4
  %__tmp1986 = load i32, i32* %i, align 4
  %__tmp1987 = add i32 %__tmp1986, 1
  store i32 %__tmp1987, i32* %i, align 4
  br label %bb798
bb800:
  %__tmp1988 = load i32, i32* %ans, align 4
  %__tmp1989 = icmp ne i32 %__tmp1988, 0
  br i1 %__tmp1989, label %bb807, label %bb808
bb807:
  %__tmp1990 = load i32, i32* %mres.7, align 4
  store i32 %__tmp1990, i32* %al.14, align 4
  %__tmp1991 = load i32, i32* %ml.7, align 4
  store i32 %__tmp1991, i32* %c.14, align 4
  br label %bb810
bb810:
  %__tmp1992 = load i32, i32* %c.14, align 4
  %__tmp1993 = icmp ne i32 %__tmp1992, 0
  br i1 %__tmp1993, label %bb811, label %bb812
bb811:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp1994 = load i32, i32* %al.14, align 4
  store i32 %__tmp1994, i32* %x, align 4
  %__tmp1995 = load i32, i32* %c.14, align 4
  store i32 %__tmp1995, i32* %y, align 4
  br label %bb813
bb813:
  %__tmp1996 = load i32, i32* %i, align 4
  %__tmp1997 = icmp slt i32 %__tmp1996, 16
  br i1 %__tmp1997, label %bb814, label %bb815
bb814:
  %__tmp1998 = load i32, i32* %x, align 4
  %__tmp1999 = srem i32 %__tmp1998, 2
  %__tmp2000 = icmp ne i32 %__tmp1999, 0
  br i1 %__tmp2000, label %bb816, label %bb817
bb816:
  %__tmp2001 = load i32, i32* %y, align 4
  %__tmp2002 = srem i32 %__tmp2001, 2
  %__tmp2003 = icmp eq i32 %__tmp2002, 0
  br i1 %__tmp2003, label %bb819, label %bb820
bb819:
  %__tmp2004 = load i32, i32* %ans, align 4
  %__tmp2005 = load i32, i32* %i, align 4
  %__tmp2006 = sext i32 %__tmp2005 to i64
  %__tmp2007 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2006
  %__tmp2008 = load i32, i32* %__tmp2007, align 4
  %__tmp2009 = mul i32 1, %__tmp2008
  %__tmp2010 = add i32 %__tmp2004, %__tmp2009
  store i32 %__tmp2010, i32* %ans, align 4
  br label %bb821
bb820:
  br label %bb821
bb821:
  br label %bb818
bb817:
  %__tmp2011 = load i32, i32* %y, align 4
  %__tmp2012 = srem i32 %__tmp2011, 2
  %__tmp2013 = icmp ne i32 %__tmp2012, 0
  br i1 %__tmp2013, label %bb822, label %bb823
bb822:
  %__tmp2014 = load i32, i32* %ans, align 4
  %__tmp2015 = load i32, i32* %i, align 4
  %__tmp2016 = sext i32 %__tmp2015 to i64
  %__tmp2017 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2016
  %__tmp2018 = load i32, i32* %__tmp2017, align 4
  %__tmp2019 = mul i32 1, %__tmp2018
  %__tmp2020 = add i32 %__tmp2014, %__tmp2019
  store i32 %__tmp2020, i32* %ans, align 4
  br label %bb824
bb823:
  br label %bb824
bb824:
  br label %bb818
bb818:
  %__tmp2021 = load i32, i32* %x, align 4
  %__tmp2022 = sdiv i32 %__tmp2021, 2
  store i32 %__tmp2022, i32* %x, align 4
  %__tmp2023 = load i32, i32* %y, align 4
  %__tmp2024 = sdiv i32 %__tmp2023, 2
  store i32 %__tmp2024, i32* %y, align 4
  %__tmp2025 = load i32, i32* %i, align 4
  %__tmp2026 = add i32 %__tmp2025, 1
  store i32 %__tmp2026, i32* %i, align 4
  br label %bb813
bb815:
  %__tmp2027 = load i32, i32* %ans, align 4
  store i32 %__tmp2027, i32* %sum.14, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp2028 = load i32, i32* %al.14, align 4
  store i32 %__tmp2028, i32* %x, align 4
  %__tmp2029 = load i32, i32* %c.14, align 4
  store i32 %__tmp2029, i32* %y, align 4
  br label %bb825
bb825:
  %__tmp2030 = load i32, i32* %i, align 4
  %__tmp2031 = icmp slt i32 %__tmp2030, 16
  br i1 %__tmp2031, label %bb826, label %bb827
bb826:
  %__tmp2032 = load i32, i32* %x, align 4
  %__tmp2033 = srem i32 %__tmp2032, 2
  %__tmp2034 = icmp ne i32 %__tmp2033, 0
  br i1 %__tmp2034, label %bb831, label %bb833
bb833:
  br label %bb832
bb831:
  %__tmp2035 = load i32, i32* %y, align 4
  %__tmp2036 = srem i32 %__tmp2035, 2
  %__tmp2037 = icmp ne i32 %__tmp2036, 0
  br label %bb832
bb832:
  %__tmp2038 = phi i1 [ 0, %bb833 ], [ %__tmp2037, %bb831 ]
  br i1 %__tmp2038, label %bb828, label %bb829
bb828:
  %__tmp2039 = load i32, i32* %ans, align 4
  %__tmp2040 = load i32, i32* %i, align 4
  %__tmp2041 = sext i32 %__tmp2040 to i64
  %__tmp2042 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2041
  %__tmp2043 = load i32, i32* %__tmp2042, align 4
  %__tmp2044 = mul i32 1, %__tmp2043
  %__tmp2045 = add i32 %__tmp2039, %__tmp2044
  store i32 %__tmp2045, i32* %ans, align 4
  br label %bb830
bb829:
  br label %bb830
bb830:
  %__tmp2046 = load i32, i32* %x, align 4
  %__tmp2047 = sdiv i32 %__tmp2046, 2
  store i32 %__tmp2047, i32* %x, align 4
  %__tmp2048 = load i32, i32* %y, align 4
  %__tmp2049 = sdiv i32 %__tmp2048, 2
  store i32 %__tmp2049, i32* %y, align 4
  %__tmp2050 = load i32, i32* %i, align 4
  %__tmp2051 = add i32 %__tmp2050, 1
  store i32 %__tmp2051, i32* %i, align 4
  br label %bb825
bb827:
  %__tmp2052 = load i32, i32* %ans, align 4
  store i32 %__tmp2052, i32* %c.14, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp2053 = load i32, i32* %c.14, align 4
  %__tmp2054 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp2055 = load i32, i32* %__tmp2054, align 4
  %__tmp2056 = mul i32 %__tmp2053, %__tmp2055
  store i32 %__tmp2056, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb837
bb837:
  %__tmp2057 = load i32, i32* %i, align 4
  %__tmp2058 = icmp slt i32 %__tmp2057, 16
  br i1 %__tmp2058, label %bb838, label %bb839
bb838:
  %__tmp2059 = load i32, i32* %x, align 4
  %__tmp2060 = srem i32 %__tmp2059, 2
  %__tmp2061 = icmp ne i32 %__tmp2060, 0
  br i1 %__tmp2061, label %bb843, label %bb845
bb845:
  br label %bb844
bb843:
  %__tmp2062 = load i32, i32* %y, align 4
  %__tmp2063 = srem i32 %__tmp2062, 2
  %__tmp2064 = icmp ne i32 %__tmp2063, 0
  br label %bb844
bb844:
  %__tmp2065 = phi i1 [ 0, %bb845 ], [ %__tmp2064, %bb843 ]
  br i1 %__tmp2065, label %bb840, label %bb841
bb840:
  %__tmp2066 = load i32, i32* %ans, align 4
  %__tmp2067 = load i32, i32* %i, align 4
  %__tmp2068 = sext i32 %__tmp2067 to i64
  %__tmp2069 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2068
  %__tmp2070 = load i32, i32* %__tmp2069, align 4
  %__tmp2071 = mul i32 1, %__tmp2070
  %__tmp2072 = add i32 %__tmp2066, %__tmp2071
  store i32 %__tmp2072, i32* %ans, align 4
  br label %bb842
bb841:
  br label %bb842
bb842:
  %__tmp2073 = load i32, i32* %x, align 4
  %__tmp2074 = sdiv i32 %__tmp2073, 2
  store i32 %__tmp2074, i32* %x, align 4
  %__tmp2075 = load i32, i32* %y, align 4
  %__tmp2076 = sdiv i32 %__tmp2075, 2
  store i32 %__tmp2076, i32* %y, align 4
  %__tmp2077 = load i32, i32* %i, align 4
  %__tmp2078 = add i32 %__tmp2077, 1
  store i32 %__tmp2078, i32* %i, align 4
  br label %bb837
bb839:
  br label %bb836
bb836:
  %__tmp2079 = load i32, i32* %ans, align 4
  store i32 %__tmp2079, i32* %c.14, align 4
  %__tmp2080 = load i32, i32* %sum.14, align 4
  store i32 %__tmp2080, i32* %al.14, align 4
  br label %bb810
bb812:
  %__tmp2081 = load i32, i32* %al.14, align 4
  store i32 %__tmp2081, i32* %ans, align 4
  %__tmp2082 = load i32, i32* %ans, align 4
  store i32 %__tmp2082, i32* %mres.7, align 4
  br label %bb809
bb808:
  br label %bb809
bb809:
  %__tmp2083 = load i32, i32* %ml.7, align 4
  store i32 %__tmp2083, i32* %al.15, align 4
  %__tmp2084 = load i32, i32* %ml.7, align 4
  store i32 %__tmp2084, i32* %c.15, align 4
  br label %bb846
bb846:
  %__tmp2085 = load i32, i32* %c.15, align 4
  %__tmp2086 = icmp ne i32 %__tmp2085, 0
  br i1 %__tmp2086, label %bb847, label %bb848
bb847:
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp2087 = load i32, i32* %al.15, align 4
  store i32 %__tmp2087, i32* %x, align 4
  %__tmp2088 = load i32, i32* %c.15, align 4
  store i32 %__tmp2088, i32* %y, align 4
  br label %bb849
bb849:
  %__tmp2089 = load i32, i32* %i, align 4
  %__tmp2090 = icmp slt i32 %__tmp2089, 16
  br i1 %__tmp2090, label %bb850, label %bb851
bb850:
  %__tmp2091 = load i32, i32* %x, align 4
  %__tmp2092 = srem i32 %__tmp2091, 2
  %__tmp2093 = icmp ne i32 %__tmp2092, 0
  br i1 %__tmp2093, label %bb852, label %bb853
bb852:
  %__tmp2094 = load i32, i32* %y, align 4
  %__tmp2095 = srem i32 %__tmp2094, 2
  %__tmp2096 = icmp eq i32 %__tmp2095, 0
  br i1 %__tmp2096, label %bb855, label %bb856
bb855:
  %__tmp2097 = load i32, i32* %ans, align 4
  %__tmp2098 = load i32, i32* %i, align 4
  %__tmp2099 = sext i32 %__tmp2098 to i64
  %__tmp2100 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2099
  %__tmp2101 = load i32, i32* %__tmp2100, align 4
  %__tmp2102 = mul i32 1, %__tmp2101
  %__tmp2103 = add i32 %__tmp2097, %__tmp2102
  store i32 %__tmp2103, i32* %ans, align 4
  br label %bb857
bb856:
  br label %bb857
bb857:
  br label %bb854
bb853:
  %__tmp2104 = load i32, i32* %y, align 4
  %__tmp2105 = srem i32 %__tmp2104, 2
  %__tmp2106 = icmp ne i32 %__tmp2105, 0
  br i1 %__tmp2106, label %bb858, label %bb859
bb858:
  %__tmp2107 = load i32, i32* %ans, align 4
  %__tmp2108 = load i32, i32* %i, align 4
  %__tmp2109 = sext i32 %__tmp2108 to i64
  %__tmp2110 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2109
  %__tmp2111 = load i32, i32* %__tmp2110, align 4
  %__tmp2112 = mul i32 1, %__tmp2111
  %__tmp2113 = add i32 %__tmp2107, %__tmp2112
  store i32 %__tmp2113, i32* %ans, align 4
  br label %bb860
bb859:
  br label %bb860
bb860:
  br label %bb854
bb854:
  %__tmp2114 = load i32, i32* %x, align 4
  %__tmp2115 = sdiv i32 %__tmp2114, 2
  store i32 %__tmp2115, i32* %x, align 4
  %__tmp2116 = load i32, i32* %y, align 4
  %__tmp2117 = sdiv i32 %__tmp2116, 2
  store i32 %__tmp2117, i32* %y, align 4
  %__tmp2118 = load i32, i32* %i, align 4
  %__tmp2119 = add i32 %__tmp2118, 1
  store i32 %__tmp2119, i32* %i, align 4
  br label %bb849
bb851:
  %__tmp2120 = load i32, i32* %ans, align 4
  store i32 %__tmp2120, i32* %sum.15, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp2121 = load i32, i32* %al.15, align 4
  store i32 %__tmp2121, i32* %x, align 4
  %__tmp2122 = load i32, i32* %c.15, align 4
  store i32 %__tmp2122, i32* %y, align 4
  br label %bb861
bb861:
  %__tmp2123 = load i32, i32* %i, align 4
  %__tmp2124 = icmp slt i32 %__tmp2123, 16
  br i1 %__tmp2124, label %bb862, label %bb863
bb862:
  %__tmp2125 = load i32, i32* %x, align 4
  %__tmp2126 = srem i32 %__tmp2125, 2
  %__tmp2127 = icmp ne i32 %__tmp2126, 0
  br i1 %__tmp2127, label %bb867, label %bb869
bb869:
  br label %bb868
bb867:
  %__tmp2128 = load i32, i32* %y, align 4
  %__tmp2129 = srem i32 %__tmp2128, 2
  %__tmp2130 = icmp ne i32 %__tmp2129, 0
  br label %bb868
bb868:
  %__tmp2131 = phi i1 [ 0, %bb869 ], [ %__tmp2130, %bb867 ]
  br i1 %__tmp2131, label %bb864, label %bb865
bb864:
  %__tmp2132 = load i32, i32* %ans, align 4
  %__tmp2133 = load i32, i32* %i, align 4
  %__tmp2134 = sext i32 %__tmp2133 to i64
  %__tmp2135 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2134
  %__tmp2136 = load i32, i32* %__tmp2135, align 4
  %__tmp2137 = mul i32 1, %__tmp2136
  %__tmp2138 = add i32 %__tmp2132, %__tmp2137
  store i32 %__tmp2138, i32* %ans, align 4
  br label %bb866
bb865:
  br label %bb866
bb866:
  %__tmp2139 = load i32, i32* %x, align 4
  %__tmp2140 = sdiv i32 %__tmp2139, 2
  store i32 %__tmp2140, i32* %x, align 4
  %__tmp2141 = load i32, i32* %y, align 4
  %__tmp2142 = sdiv i32 %__tmp2141, 2
  store i32 %__tmp2142, i32* %y, align 4
  %__tmp2143 = load i32, i32* %i, align 4
  %__tmp2144 = add i32 %__tmp2143, 1
  store i32 %__tmp2144, i32* %i, align 4
  br label %bb861
bb863:
  %__tmp2145 = load i32, i32* %ans, align 4
  store i32 %__tmp2145, i32* %c.15, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  %__tmp2146 = load i32, i32* %c.15, align 4
  %__tmp2147 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 1
  %__tmp2148 = load i32, i32* %__tmp2147, align 4
  %__tmp2149 = mul i32 %__tmp2146, %__tmp2148
  store i32 %__tmp2149, i32* %x, align 4
  store i32 65535, i32* %y, align 4
  br label %bb873
bb873:
  %__tmp2150 = load i32, i32* %i, align 4
  %__tmp2151 = icmp slt i32 %__tmp2150, 16
  br i1 %__tmp2151, label %bb874, label %bb875
bb874:
  %__tmp2152 = load i32, i32* %x, align 4
  %__tmp2153 = srem i32 %__tmp2152, 2
  %__tmp2154 = icmp ne i32 %__tmp2153, 0
  br i1 %__tmp2154, label %bb879, label %bb881
bb881:
  br label %bb880
bb879:
  %__tmp2155 = load i32, i32* %y, align 4
  %__tmp2156 = srem i32 %__tmp2155, 2
  %__tmp2157 = icmp ne i32 %__tmp2156, 0
  br label %bb880
bb880:
  %__tmp2158 = phi i1 [ 0, %bb881 ], [ %__tmp2157, %bb879 ]
  br i1 %__tmp2158, label %bb876, label %bb877
bb876:
  %__tmp2159 = load i32, i32* %ans, align 4
  %__tmp2160 = load i32, i32* %i, align 4
  %__tmp2161 = sext i32 %__tmp2160 to i64
  %__tmp2162 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2161
  %__tmp2163 = load i32, i32* %__tmp2162, align 4
  %__tmp2164 = mul i32 1, %__tmp2163
  %__tmp2165 = add i32 %__tmp2159, %__tmp2164
  store i32 %__tmp2165, i32* %ans, align 4
  br label %bb878
bb877:
  br label %bb878
bb878:
  %__tmp2166 = load i32, i32* %x, align 4
  %__tmp2167 = sdiv i32 %__tmp2166, 2
  store i32 %__tmp2167, i32* %x, align 4
  %__tmp2168 = load i32, i32* %y, align 4
  %__tmp2169 = sdiv i32 %__tmp2168, 2
  store i32 %__tmp2169, i32* %y, align 4
  %__tmp2170 = load i32, i32* %i, align 4
  %__tmp2171 = add i32 %__tmp2170, 1
  store i32 %__tmp2171, i32* %i, align 4
  br label %bb873
bb875:
  br label %bb872
bb872:
  %__tmp2172 = load i32, i32* %ans, align 4
  store i32 %__tmp2172, i32* %c.15, align 4
  %__tmp2173 = load i32, i32* %sum.15, align 4
  store i32 %__tmp2173, i32* %al.15, align 4
  br label %bb846
bb848:
  %__tmp2174 = load i32, i32* %al.15, align 4
  store i32 %__tmp2174, i32* %ans, align 4
  %__tmp2175 = load i32, i32* %ans, align 4
  store i32 %__tmp2175, i32* %ml.7, align 4
  %__tmp2176 = load i32, i32* %mr.7, align 4
  store i32 %__tmp2176, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp2177 = load i32, i32* %y, align 4
  %__tmp2178 = icmp sge i32 %__tmp2177, 15
  br i1 %__tmp2178, label %bb882, label %bb883
bb882:
  %__tmp2179 = load i32, i32* %x, align 4
  %__tmp2180 = icmp slt i32 %__tmp2179, 0
  br i1 %__tmp2180, label %bb885, label %bb886
bb885:
  store i32 65535, i32* %ans, align 4
  br label %bb887
bb886:
  store i32 0, i32* %ans, align 4
  br label %bb887
bb887:
  br label %bb884
bb883:
  %__tmp2181 = load i32, i32* %y, align 4
  %__tmp2182 = icmp sgt i32 %__tmp2181, 0
  br i1 %__tmp2182, label %bb888, label %bb889
bb888:
  %__tmp2183 = load i32, i32* %x, align 4
  %__tmp2184 = icmp sgt i32 %__tmp2183, 32767
  br i1 %__tmp2184, label %bb891, label %bb892
bb891:
  %__tmp2185 = load i32, i32* %x, align 4
  %__tmp2186 = load i32, i32* %y, align 4
  %__tmp2187 = sext i32 %__tmp2186 to i64
  %__tmp2188 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2187
  %__tmp2189 = load i32, i32* %__tmp2188, align 4
  %__tmp2190 = sdiv i32 %__tmp2185, %__tmp2189
  store i32 %__tmp2190, i32* %x, align 4
  %__tmp2191 = load i32, i32* %x, align 4
  %__tmp2192 = add i32 %__tmp2191, 65536
  %__tmp2193 = load i32, i32* %y, align 4
  %__tmp2194 = sub i32 15, %__tmp2193
  %__tmp2195 = add i32 %__tmp2194, 1
  %__tmp2196 = sext i32 %__tmp2195 to i64
  %__tmp2197 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2196
  %__tmp2198 = load i32, i32* %__tmp2197, align 4
  %__tmp2199 = sub i32 %__tmp2192, %__tmp2198
  store i32 %__tmp2199, i32* %ans, align 4
  br label %bb893
bb892:
  %__tmp2200 = load i32, i32* %x, align 4
  %__tmp2201 = load i32, i32* %y, align 4
  %__tmp2202 = sext i32 %__tmp2201 to i64
  %__tmp2203 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2202
  %__tmp2204 = load i32, i32* %__tmp2203, align 4
  %__tmp2205 = sdiv i32 %__tmp2200, %__tmp2204
  store i32 %__tmp2205, i32* %ans, align 4
  br label %bb893
bb893:
  br label %bb890
bb889:
  %__tmp2206 = load i32, i32* %x, align 4
  store i32 %__tmp2206, i32* %ans, align 4
  br label %bb890
bb890:
  br label %bb884
bb884:
  %__tmp2207 = load i32, i32* %ans, align 4
  store i32 %__tmp2207, i32* %mr.7, align 4
  br label %bb795
bb797:
  %__tmp2208 = load i32, i32* %mres.7, align 4
  store i32 %__tmp2208, i32* %ans, align 4
  %__tmp2209 = load i32, i32* %ans, align 4
  store i32 %__tmp2209, i32* %pl.3, align 4
  %__tmp2210 = load i32, i32* %pr.3, align 4
  store i32 %__tmp2210, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %__tmp2211 = load i32, i32* %y, align 4
  %__tmp2212 = icmp sge i32 %__tmp2211, 15
  br i1 %__tmp2212, label %bb894, label %bb895
bb894:
  %__tmp2213 = load i32, i32* %x, align 4
  %__tmp2214 = icmp slt i32 %__tmp2213, 0
  br i1 %__tmp2214, label %bb897, label %bb898
bb897:
  store i32 65535, i32* %ans, align 4
  br label %bb899
bb898:
  store i32 0, i32* %ans, align 4
  br label %bb899
bb899:
  br label %bb896
bb895:
  %__tmp2215 = load i32, i32* %y, align 4
  %__tmp2216 = icmp sgt i32 %__tmp2215, 0
  br i1 %__tmp2216, label %bb900, label %bb901
bb900:
  %__tmp2217 = load i32, i32* %x, align 4
  %__tmp2218 = icmp sgt i32 %__tmp2217, 32767
  br i1 %__tmp2218, label %bb903, label %bb904
bb903:
  %__tmp2219 = load i32, i32* %x, align 4
  %__tmp2220 = load i32, i32* %y, align 4
  %__tmp2221 = sext i32 %__tmp2220 to i64
  %__tmp2222 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2221
  %__tmp2223 = load i32, i32* %__tmp2222, align 4
  %__tmp2224 = sdiv i32 %__tmp2219, %__tmp2223
  store i32 %__tmp2224, i32* %x, align 4
  %__tmp2225 = load i32, i32* %x, align 4
  %__tmp2226 = add i32 %__tmp2225, 65536
  %__tmp2227 = load i32, i32* %y, align 4
  %__tmp2228 = sub i32 15, %__tmp2227
  %__tmp2229 = add i32 %__tmp2228, 1
  %__tmp2230 = sext i32 %__tmp2229 to i64
  %__tmp2231 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2230
  %__tmp2232 = load i32, i32* %__tmp2231, align 4
  %__tmp2233 = sub i32 %__tmp2226, %__tmp2232
  store i32 %__tmp2233, i32* %ans, align 4
  br label %bb905
bb904:
  %__tmp2234 = load i32, i32* %x, align 4
  %__tmp2235 = load i32, i32* %y, align 4
  %__tmp2236 = sext i32 %__tmp2235 to i64
  %__tmp2237 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2236
  %__tmp2238 = load i32, i32* %__tmp2237, align 4
  %__tmp2239 = sdiv i32 %__tmp2234, %__tmp2238
  store i32 %__tmp2239, i32* %ans, align 4
  br label %bb905
bb905:
  br label %bb902
bb901:
  %__tmp2240 = load i32, i32* %x, align 4
  store i32 %__tmp2240, i32* %ans, align 4
  br label %bb902
bb902:
  br label %bb896
bb896:
  %__tmp2241 = load i32, i32* %ans, align 4
  store i32 %__tmp2241, i32* %pr.3, align 4
  br label %bb681
bb683:
  %__tmp2242 = load i32, i32* %pres.3, align 4
  store i32 %__tmp2242, i32* %ans, align 4
  %__tmp2243 = load i32, i32* %cur, align 4
  %__tmp2244 = sext i32 %__tmp2243 to i64
  %__tmp2245 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i64 %__tmp2244
  %__tmp2246 = load i32, i32* %__tmp2245, align 4
  %__tmp2247 = load i32, i32* %ans, align 4
  %__tmp2248 = icmp ne i32 %__tmp2246, %__tmp2247
  br i1 %__tmp2248, label %bb906, label %bb907
bb906:
  ret i32 1
bb907:
  br label %bb908
bb908:
  %__tmp2249 = load i32, i32* %cur, align 4
  %__tmp2250 = add i32 %__tmp2249, 1
  store i32 %__tmp2250, i32* %cur, align 4
  br label %bb678
bb680:
  ret i32 0
}

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @long_func()
  ret i32 %__tmp0
}

