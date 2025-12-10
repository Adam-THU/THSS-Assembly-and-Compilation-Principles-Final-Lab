; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@array = global [110 x i32] zeroinitializer, align 4
@n = global i32 0, align 4

define void @init(i32 %n) {
initEntry:
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* %n_arg, align 4
  %__tmp2 = load i32, i32* %n_arg, align 4
  %__tmp3 = mul i32 %__tmp1, %__tmp2
  %__tmp4 = add i32 %__tmp3, 1
  %__tmp5 = icmp sle i32 %__tmp0, %__tmp4
  br i1 %__tmp5, label %bb1, label %bb2
bb1:
  %__tmp6 = load i32, i32* %i, align 4
  %__tmp7 = sext i32 %__tmp6 to i64
  %__tmp8 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp7
  store i32 -1, i32* %__tmp8, align 4
  %__tmp9 = load i32, i32* %i, align 4
  %__tmp10 = add i32 %__tmp9, 1
  store i32 %__tmp10, i32* %i, align 4
  br label %bb0
bb2:
  ret void
}

define i32 @findfa(i32 %a) {
findfaEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %__tmp0 = load i32, i32* %a_arg, align 4
  %__tmp1 = sext i32 %__tmp0 to i64
  %__tmp2 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp1
  %__tmp3 = load i32, i32* %__tmp2, align 4
  %__tmp4 = load i32, i32* %a_arg, align 4
  %__tmp5 = icmp eq i32 %__tmp3, %__tmp4
  br i1 %__tmp5, label %bb0, label %bb1
bb0:
  %__tmp6 = load i32, i32* %a_arg, align 4
  ret i32 %__tmp6
bb1:
  %__tmp7 = load i32, i32* %a_arg, align 4
  %__tmp8 = sext i32 %__tmp7 to i64
  %__tmp9 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp8
  %__tmp10 = load i32, i32* %a_arg, align 4
  %__tmp11 = sext i32 %__tmp10 to i64
  %__tmp12 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp11
  %__tmp13 = load i32, i32* %__tmp12, align 4
  %__tmp14 = call i32 @findfa(i32 %__tmp13)
  store i32 %__tmp14, i32* %__tmp9, align 4
  %__tmp15 = load i32, i32* %a_arg, align 4
  %__tmp16 = sext i32 %__tmp15 to i64
  %__tmp17 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp16
  %__tmp18 = load i32, i32* %__tmp17, align 4
  ret i32 %__tmp18
bb2:
  ret i32 0
}

define void @mmerge(i32 %a, i32 %b) {
mmergeEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %b_arg = alloca i32, align 4
  store i32 %b, i32* %b_arg, align 4
  %m = alloca i32, align 4
  %__tmp0 = load i32, i32* %a_arg, align 4
  %__tmp1 = call i32 @findfa(i32 %__tmp0)
  store i32 %__tmp1, i32* %m, align 4
  %n = alloca i32, align 4
  %__tmp2 = load i32, i32* %b_arg, align 4
  %__tmp3 = call i32 @findfa(i32 %__tmp2)
  store i32 %__tmp3, i32* %n, align 4
  %__tmp4 = load i32, i32* %m, align 4
  %__tmp5 = load i32, i32* %n, align 4
  %__tmp6 = icmp ne i32 %__tmp4, %__tmp5
  br i1 %__tmp6, label %bb0, label %bb1
bb0:
  %__tmp7 = load i32, i32* %m, align 4
  %__tmp8 = sext i32 %__tmp7 to i64
  %__tmp9 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp8
  %__tmp10 = load i32, i32* %n, align 4
  store i32 %__tmp10, i32* %__tmp9, align 4
  br label %bb2
bb1:
  br label %bb2
bb2:
  ret void
}

define i32 @main() {
mainEntry:
  %t = alloca i32, align 4
  %m = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 1, i32* %t, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %t, align 4
  %__tmp1 = trunc i32 %__tmp0 to i1
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %t, align 4
  %__tmp3 = sub i32 %__tmp2, 1
  store i32 %__tmp3, i32* %t, align 4
  store i32 4, i32* @n, align 4
  store i32 10, i32* %m, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %flag = alloca i32, align 4
  store i32 0, i32* %flag, align 4
  %__tmp4 = load i32, i32* @n, align 4
  %__tmp5 = call i32 @init(i32 %__tmp4)
  %k = alloca i32, align 4
  %__tmp6 = load i32, i32* @n, align 4
  %__tmp7 = load i32, i32* @n, align 4
  %__tmp8 = mul i32 %__tmp6, %__tmp7
  %__tmp9 = add i32 %__tmp8, 1
  store i32 %__tmp9, i32* %k, align 4
  br label %bb3
bb3:
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = load i32, i32* %m, align 4
  %__tmp12 = icmp slt i32 %__tmp10, %__tmp11
  br i1 %__tmp12, label %bb4, label %bb5
bb4:
  %__tmp13 = call i32 @getint()
  store i32 %__tmp13, i32* %a, align 4
  %__tmp14 = call i32 @getint()
  store i32 %__tmp14, i32* %b, align 4
  %__tmp15 = load i32, i32* %flag, align 4
  %__tmp16 = icmp eq i32 %__tmp15, 0
  %__tmp17 = zext i1 %__tmp16 to i32
  %__tmp18 = trunc i32 %__tmp17 to i1
  br i1 %__tmp18, label %bb6, label %bb7
bb6:
  %loc = alloca i32, align 4
  %__tmp19 = load i32, i32* @n, align 4
  %__tmp20 = load i32, i32* %a, align 4
  %__tmp21 = sub i32 %__tmp20, 1
  %__tmp22 = mul i32 %__tmp19, %__tmp21
  %__tmp23 = load i32, i32* %b, align 4
  %__tmp24 = add i32 %__tmp22, %__tmp23
  store i32 %__tmp24, i32* %loc, align 4
  %__tmp25 = load i32, i32* %loc, align 4
  %__tmp26 = sext i32 %__tmp25 to i64
  %__tmp27 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp26
  %__tmp28 = load i32, i32* %loc, align 4
  store i32 %__tmp28, i32* %__tmp27, align 4
  %__tmp29 = load i32, i32* %a, align 4
  %__tmp30 = icmp eq i32 %__tmp29, 1
  br i1 %__tmp30, label %bb9, label %bb10
bb9:
  %__tmp31 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 0
  store i32 0, i32* %__tmp31, align 4
  %__tmp32 = load i32, i32* %loc, align 4
  %__tmp33 = call i32 @mmerge(i32 %__tmp32, i32 0)
  br label %bb11
bb10:
  br label %bb11
bb11:
  %__tmp34 = load i32, i32* %a, align 4
  %__tmp35 = load i32, i32* @n, align 4
  %__tmp36 = icmp eq i32 %__tmp34, %__tmp35
  br i1 %__tmp36, label %bb12, label %bb13
bb12:
  %__tmp37 = load i32, i32* %k, align 4
  %__tmp38 = sext i32 %__tmp37 to i64
  %__tmp39 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp38
  %__tmp40 = load i32, i32* %k, align 4
  store i32 %__tmp40, i32* %__tmp39, align 4
  %__tmp41 = load i32, i32* %loc, align 4
  %__tmp42 = load i32, i32* %k, align 4
  %__tmp43 = call i32 @mmerge(i32 %__tmp41, i32 %__tmp42)
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp44 = load i32, i32* %b, align 4
  %__tmp45 = load i32, i32* @n, align 4
  %__tmp46 = icmp slt i32 %__tmp44, %__tmp45
  br i1 %__tmp46, label %bb18, label %bb20
bb20:
  br label %bb19
bb18:
  %__tmp47 = load i32, i32* %loc, align 4
  %__tmp48 = add i32 %__tmp47, 1
  %__tmp49 = sext i32 %__tmp48 to i64
  %__tmp50 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp49
  %__tmp51 = load i32, i32* %__tmp50, align 4
  %__tmp52 = icmp ne i32 %__tmp51, -1
  br label %bb19
bb19:
  %__tmp53 = phi i1 [ 0, %bb20 ], [ %__tmp52, %bb18 ]
  br i1 %__tmp53, label %bb15, label %bb16
bb15:
  %__tmp54 = load i32, i32* %loc, align 4
  %__tmp55 = load i32, i32* %loc, align 4
  %__tmp56 = add i32 %__tmp55, 1
  %__tmp57 = call i32 @mmerge(i32 %__tmp54, i32 %__tmp56)
  br label %bb17
bb16:
  br label %bb17
bb17:
  %__tmp58 = load i32, i32* %b, align 4
  %__tmp59 = icmp sgt i32 %__tmp58, 1
  br i1 %__tmp59, label %bb24, label %bb26
bb26:
  br label %bb25
bb24:
  %__tmp60 = load i32, i32* %loc, align 4
  %__tmp61 = sub i32 %__tmp60, 1
  %__tmp62 = sext i32 %__tmp61 to i64
  %__tmp63 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp62
  %__tmp64 = load i32, i32* %__tmp63, align 4
  %__tmp65 = icmp ne i32 %__tmp64, -1
  br label %bb25
bb25:
  %__tmp66 = phi i1 [ 0, %bb26 ], [ %__tmp65, %bb24 ]
  br i1 %__tmp66, label %bb21, label %bb22
bb21:
  %__tmp67 = load i32, i32* %loc, align 4
  %__tmp68 = load i32, i32* %loc, align 4
  %__tmp69 = sub i32 %__tmp68, 1
  %__tmp70 = call i32 @mmerge(i32 %__tmp67, i32 %__tmp69)
  br label %bb23
bb22:
  br label %bb23
bb23:
  %__tmp71 = load i32, i32* %a, align 4
  %__tmp72 = load i32, i32* @n, align 4
  %__tmp73 = icmp slt i32 %__tmp71, %__tmp72
  br i1 %__tmp73, label %bb30, label %bb32
bb32:
  br label %bb31
bb30:
  %__tmp74 = load i32, i32* %loc, align 4
  %__tmp75 = load i32, i32* @n, align 4
  %__tmp76 = add i32 %__tmp74, %__tmp75
  %__tmp77 = sext i32 %__tmp76 to i64
  %__tmp78 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp77
  %__tmp79 = load i32, i32* %__tmp78, align 4
  %__tmp80 = icmp ne i32 %__tmp79, -1
  br label %bb31
bb31:
  %__tmp81 = phi i1 [ 0, %bb32 ], [ %__tmp80, %bb30 ]
  br i1 %__tmp81, label %bb27, label %bb28
bb27:
  %__tmp82 = load i32, i32* %loc, align 4
  %__tmp83 = load i32, i32* %loc, align 4
  %__tmp84 = load i32, i32* @n, align 4
  %__tmp85 = add i32 %__tmp83, %__tmp84
  %__tmp86 = call i32 @mmerge(i32 %__tmp82, i32 %__tmp85)
  br label %bb29
bb28:
  br label %bb29
bb29:
  %__tmp87 = load i32, i32* %a, align 4
  %__tmp88 = icmp sgt i32 %__tmp87, 1
  br i1 %__tmp88, label %bb36, label %bb38
bb38:
  br label %bb37
bb36:
  %__tmp89 = load i32, i32* %loc, align 4
  %__tmp90 = load i32, i32* @n, align 4
  %__tmp91 = sub i32 %__tmp89, %__tmp90
  %__tmp92 = sext i32 %__tmp91 to i64
  %__tmp93 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp92
  %__tmp94 = load i32, i32* %__tmp93, align 4
  %__tmp95 = icmp ne i32 %__tmp94, -1
  br label %bb37
bb37:
  %__tmp96 = phi i1 [ 0, %bb38 ], [ %__tmp95, %bb36 ]
  br i1 %__tmp96, label %bb33, label %bb34
bb33:
  %__tmp97 = load i32, i32* %loc, align 4
  %__tmp98 = load i32, i32* %loc, align 4
  %__tmp99 = load i32, i32* @n, align 4
  %__tmp100 = sub i32 %__tmp98, %__tmp99
  %__tmp101 = call i32 @mmerge(i32 %__tmp97, i32 %__tmp100)
  br label %bb35
bb34:
  br label %bb35
bb35:
  %__tmp102 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 0
  %__tmp103 = load i32, i32* %__tmp102, align 4
  %__tmp104 = icmp ne i32 %__tmp103, -1
  br i1 %__tmp104, label %bb42, label %bb44
bb44:
  br label %bb43
bb42:
  %__tmp105 = load i32, i32* %k, align 4
  %__tmp106 = sext i32 %__tmp105 to i64
  %__tmp107 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp106
  %__tmp108 = load i32, i32* %__tmp107, align 4
  %__tmp109 = icmp ne i32 %__tmp108, -1
  br label %bb43
bb43:
  %__tmp110 = phi i1 [ 0, %bb44 ], [ %__tmp109, %bb42 ]
  br i1 %__tmp110, label %bb45, label %bb47
bb47:
  br label %bb46
bb45:
  %__tmp111 = call i32 @findfa(i32 0)
  %__tmp112 = load i32, i32* %k, align 4
  %__tmp113 = call i32 @findfa(i32 %__tmp112)
  %__tmp114 = icmp eq i32 %__tmp111, %__tmp113
  br label %bb46
bb46:
  %__tmp115 = phi i1 [ 0, %bb47 ], [ %__tmp114, %bb45 ]
  br i1 %__tmp115, label %bb39, label %bb40
bb39:
  store i32 1, i32* %flag, align 4
  %tmp = alloca i32, align 4
  %__tmp116 = load i32, i32* %i, align 4
  %__tmp117 = add i32 %__tmp116, 1
  store i32 %__tmp117, i32* %tmp, align 4
  %__tmp118 = load i32, i32* %tmp, align 4
  call void @putint(i32 %__tmp118)
  call void @putch(i32 10)
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp119 = load i32, i32* %i, align 4
  %__tmp120 = add i32 %__tmp119, 1
  store i32 %__tmp120, i32* %i, align 4
  br label %bb3
bb5:
  %__tmp121 = load i32, i32* %flag, align 4
  %__tmp122 = icmp eq i32 %__tmp121, 0
  %__tmp123 = zext i1 %__tmp122 to i32
  %__tmp124 = trunc i32 %__tmp123 to i1
  br i1 %__tmp124, label %bb48, label %bb49
bb48:
  call void @putint(i32 -1)
  call void @putch(i32 10)
  br label %bb50
bb49:
  br label %bb50
bb50:
  br label %bb0
bb2:
  ret i32 0
}

