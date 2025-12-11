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
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  %k = alloca i32, align 4
  %loc = alloca i32, align 4
  %tmp = alloca i32, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %t, align 4
  %__tmp1 = icmp ne i32 %__tmp0, 0
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %t, align 4
  %__tmp3 = sub i32 %__tmp2, 1
  store i32 %__tmp3, i32* %t, align 4
  store i32 4, i32* @n, align 4
  store i32 10, i32* %m, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %flag, align 4
  %__tmp4 = load i32, i32* @n, align 4
  call void @init(i32 %__tmp4)
  %__tmp5 = load i32, i32* @n, align 4
  %__tmp6 = load i32, i32* @n, align 4
  %__tmp7 = mul i32 %__tmp5, %__tmp6
  %__tmp8 = add i32 %__tmp7, 1
  store i32 %__tmp8, i32* %k, align 4
  br label %bb3
bb3:
  %__tmp9 = load i32, i32* %i, align 4
  %__tmp10 = load i32, i32* %m, align 4
  %__tmp11 = icmp slt i32 %__tmp9, %__tmp10
  br i1 %__tmp11, label %bb4, label %bb5
bb4:
  %__tmp12 = call i32 @getint()
  store i32 %__tmp12, i32* %a, align 4
  %__tmp13 = call i32 @getint()
  store i32 %__tmp13, i32* %b, align 4
  %__tmp14 = load i32, i32* %flag, align 4
  %__tmp15 = icmp eq i32 %__tmp14, 0
  %__tmp16 = zext i1 %__tmp15 to i32
  %__tmp17 = icmp ne i32 %__tmp16, 0
  br i1 %__tmp17, label %bb6, label %bb7
bb6:
  %__tmp18 = load i32, i32* @n, align 4
  %__tmp19 = load i32, i32* %a, align 4
  %__tmp20 = sub i32 %__tmp19, 1
  %__tmp21 = mul i32 %__tmp18, %__tmp20
  %__tmp22 = load i32, i32* %b, align 4
  %__tmp23 = add i32 %__tmp21, %__tmp22
  store i32 %__tmp23, i32* %loc, align 4
  %__tmp24 = load i32, i32* %loc, align 4
  %__tmp25 = sext i32 %__tmp24 to i64
  %__tmp26 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp25
  %__tmp27 = load i32, i32* %loc, align 4
  store i32 %__tmp27, i32* %__tmp26, align 4
  %__tmp28 = load i32, i32* %a, align 4
  %__tmp29 = icmp eq i32 %__tmp28, 1
  br i1 %__tmp29, label %bb9, label %bb10
bb9:
  %__tmp30 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 0
  store i32 0, i32* %__tmp30, align 4
  %__tmp31 = load i32, i32* %loc, align 4
  call void @mmerge(i32 %__tmp31, i32 0)
  br label %bb11
bb10:
  br label %bb11
bb11:
  %__tmp32 = load i32, i32* %a, align 4
  %__tmp33 = load i32, i32* @n, align 4
  %__tmp34 = icmp eq i32 %__tmp32, %__tmp33
  br i1 %__tmp34, label %bb12, label %bb13
bb12:
  %__tmp35 = load i32, i32* %k, align 4
  %__tmp36 = sext i32 %__tmp35 to i64
  %__tmp37 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp36
  %__tmp38 = load i32, i32* %k, align 4
  store i32 %__tmp38, i32* %__tmp37, align 4
  %__tmp39 = load i32, i32* %loc, align 4
  %__tmp40 = load i32, i32* %k, align 4
  call void @mmerge(i32 %__tmp39, i32 %__tmp40)
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp41 = load i32, i32* %b, align 4
  %__tmp42 = load i32, i32* @n, align 4
  %__tmp43 = icmp slt i32 %__tmp41, %__tmp42
  br i1 %__tmp43, label %bb18, label %bb20
bb20:
  br label %bb19
bb18:
  %__tmp44 = load i32, i32* %loc, align 4
  %__tmp45 = add i32 %__tmp44, 1
  %__tmp46 = sext i32 %__tmp45 to i64
  %__tmp47 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp46
  %__tmp48 = load i32, i32* %__tmp47, align 4
  %__tmp49 = icmp ne i32 %__tmp48, -1
  br label %bb19
bb19:
  %__tmp50 = phi i1 [ 0, %bb20 ], [ %__tmp49, %bb18 ]
  br i1 %__tmp50, label %bb15, label %bb16
bb15:
  %__tmp51 = load i32, i32* %loc, align 4
  %__tmp52 = load i32, i32* %loc, align 4
  %__tmp53 = add i32 %__tmp52, 1
  call void @mmerge(i32 %__tmp51, i32 %__tmp53)
  br label %bb17
bb16:
  br label %bb17
bb17:
  %__tmp54 = load i32, i32* %b, align 4
  %__tmp55 = icmp sgt i32 %__tmp54, 1
  br i1 %__tmp55, label %bb24, label %bb26
bb26:
  br label %bb25
bb24:
  %__tmp56 = load i32, i32* %loc, align 4
  %__tmp57 = sub i32 %__tmp56, 1
  %__tmp58 = sext i32 %__tmp57 to i64
  %__tmp59 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp58
  %__tmp60 = load i32, i32* %__tmp59, align 4
  %__tmp61 = icmp ne i32 %__tmp60, -1
  br label %bb25
bb25:
  %__tmp62 = phi i1 [ 0, %bb26 ], [ %__tmp61, %bb24 ]
  br i1 %__tmp62, label %bb21, label %bb22
bb21:
  %__tmp63 = load i32, i32* %loc, align 4
  %__tmp64 = load i32, i32* %loc, align 4
  %__tmp65 = sub i32 %__tmp64, 1
  call void @mmerge(i32 %__tmp63, i32 %__tmp65)
  br label %bb23
bb22:
  br label %bb23
bb23:
  %__tmp66 = load i32, i32* %a, align 4
  %__tmp67 = load i32, i32* @n, align 4
  %__tmp68 = icmp slt i32 %__tmp66, %__tmp67
  br i1 %__tmp68, label %bb30, label %bb32
bb32:
  br label %bb31
bb30:
  %__tmp69 = load i32, i32* %loc, align 4
  %__tmp70 = load i32, i32* @n, align 4
  %__tmp71 = add i32 %__tmp69, %__tmp70
  %__tmp72 = sext i32 %__tmp71 to i64
  %__tmp73 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp72
  %__tmp74 = load i32, i32* %__tmp73, align 4
  %__tmp75 = icmp ne i32 %__tmp74, -1
  br label %bb31
bb31:
  %__tmp76 = phi i1 [ 0, %bb32 ], [ %__tmp75, %bb30 ]
  br i1 %__tmp76, label %bb27, label %bb28
bb27:
  %__tmp77 = load i32, i32* %loc, align 4
  %__tmp78 = load i32, i32* %loc, align 4
  %__tmp79 = load i32, i32* @n, align 4
  %__tmp80 = add i32 %__tmp78, %__tmp79
  call void @mmerge(i32 %__tmp77, i32 %__tmp80)
  br label %bb29
bb28:
  br label %bb29
bb29:
  %__tmp81 = load i32, i32* %a, align 4
  %__tmp82 = icmp sgt i32 %__tmp81, 1
  br i1 %__tmp82, label %bb36, label %bb38
bb38:
  br label %bb37
bb36:
  %__tmp83 = load i32, i32* %loc, align 4
  %__tmp84 = load i32, i32* @n, align 4
  %__tmp85 = sub i32 %__tmp83, %__tmp84
  %__tmp86 = sext i32 %__tmp85 to i64
  %__tmp87 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp86
  %__tmp88 = load i32, i32* %__tmp87, align 4
  %__tmp89 = icmp ne i32 %__tmp88, -1
  br label %bb37
bb37:
  %__tmp90 = phi i1 [ 0, %bb38 ], [ %__tmp89, %bb36 ]
  br i1 %__tmp90, label %bb33, label %bb34
bb33:
  %__tmp91 = load i32, i32* %loc, align 4
  %__tmp92 = load i32, i32* %loc, align 4
  %__tmp93 = load i32, i32* @n, align 4
  %__tmp94 = sub i32 %__tmp92, %__tmp93
  call void @mmerge(i32 %__tmp91, i32 %__tmp94)
  br label %bb35
bb34:
  br label %bb35
bb35:
  %__tmp95 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 0
  %__tmp96 = load i32, i32* %__tmp95, align 4
  %__tmp97 = icmp ne i32 %__tmp96, -1
  br i1 %__tmp97, label %bb42, label %bb44
bb44:
  br label %bb43
bb42:
  %__tmp98 = load i32, i32* %k, align 4
  %__tmp99 = sext i32 %__tmp98 to i64
  %__tmp100 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %__tmp99
  %__tmp101 = load i32, i32* %__tmp100, align 4
  %__tmp102 = icmp ne i32 %__tmp101, -1
  br label %bb43
bb43:
  %__tmp103 = phi i1 [ 0, %bb44 ], [ %__tmp102, %bb42 ]
  br i1 %__tmp103, label %bb45, label %bb47
bb47:
  br label %bb46
bb45:
  %__tmp104 = call i32 @findfa(i32 0)
  %__tmp105 = load i32, i32* %k, align 4
  %__tmp106 = call i32 @findfa(i32 %__tmp105)
  %__tmp107 = icmp eq i32 %__tmp104, %__tmp106
  br label %bb46
bb46:
  %__tmp108 = phi i1 [ 0, %bb47 ], [ %__tmp107, %bb45 ]
  br i1 %__tmp108, label %bb39, label %bb40
bb39:
  store i32 1, i32* %flag, align 4
  %__tmp109 = load i32, i32* %i, align 4
  %__tmp110 = add i32 %__tmp109, 1
  store i32 %__tmp110, i32* %tmp, align 4
  %__tmp111 = load i32, i32* %tmp, align 4
  call void @putint(i32 %__tmp111)
  call void @putch(i32 10)
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp112 = load i32, i32* %i, align 4
  %__tmp113 = add i32 %__tmp112, 1
  store i32 %__tmp113, i32* %i, align 4
  br label %bb3
bb5:
  %__tmp114 = load i32, i32* %flag, align 4
  %__tmp115 = icmp eq i32 %__tmp114, 0
  %__tmp116 = zext i1 %__tmp115 to i32
  %__tmp117 = icmp ne i32 %__tmp116, 0
  br i1 %__tmp117, label %bb48, label %bb49
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

