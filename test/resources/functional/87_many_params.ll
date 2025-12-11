; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define void @sort(i32* %arr, i32 %len) {
sortEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %len_arg = alloca i32, align 4
  store i32 %len, i32* %len_arg, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* %len_arg, align 4
  %__tmp2 = sub i32 %__tmp1, 1
  %__tmp3 = icmp slt i32 %__tmp0, %__tmp2
  br i1 %__tmp3, label %bb1, label %bb2
bb1:
  %__tmp4 = load i32, i32* %i, align 4
  %__tmp5 = add i32 %__tmp4, 1
  store i32 %__tmp5, i32* %j, align 4
  br label %bb3
bb3:
  %__tmp6 = load i32, i32* %j, align 4
  %__tmp7 = load i32, i32* %len_arg, align 4
  %__tmp8 = icmp slt i32 %__tmp6, %__tmp7
  br i1 %__tmp8, label %bb4, label %bb5
bb4:
  %__tmp9 = load i32*, i32** %arr_arg, align 4
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = sext i32 %__tmp10 to i64
  %__tmp12 = getelementptr inbounds i32, i32* %__tmp9, i64 %__tmp11
  %__tmp13 = load i32, i32* %__tmp12, align 4
  %__tmp14 = load i32*, i32** %arr_arg, align 4
  %__tmp15 = load i32, i32* %j, align 4
  %__tmp16 = sext i32 %__tmp15 to i64
  %__tmp17 = getelementptr inbounds i32, i32* %__tmp14, i64 %__tmp16
  %__tmp18 = load i32, i32* %__tmp17, align 4
  %__tmp19 = icmp slt i32 %__tmp13, %__tmp18
  br i1 %__tmp19, label %bb6, label %bb7
bb6:
  %__tmp20 = load i32*, i32** %arr_arg, align 4
  %__tmp21 = load i32, i32* %i, align 4
  %__tmp22 = sext i32 %__tmp21 to i64
  %__tmp23 = getelementptr inbounds i32, i32* %__tmp20, i64 %__tmp22
  %__tmp24 = load i32, i32* %__tmp23, align 4
  store i32 %__tmp24, i32* %temp, align 4
  %__tmp25 = load i32*, i32** %arr_arg, align 4
  %__tmp26 = load i32, i32* %i, align 4
  %__tmp27 = sext i32 %__tmp26 to i64
  %__tmp28 = getelementptr inbounds i32, i32* %__tmp25, i64 %__tmp27
  %__tmp29 = load i32*, i32** %arr_arg, align 4
  %__tmp30 = load i32, i32* %j, align 4
  %__tmp31 = sext i32 %__tmp30 to i64
  %__tmp32 = getelementptr inbounds i32, i32* %__tmp29, i64 %__tmp31
  %__tmp33 = load i32, i32* %__tmp32, align 4
  store i32 %__tmp33, i32* %__tmp28, align 4
  %__tmp34 = load i32*, i32** %arr_arg, align 4
  %__tmp35 = load i32, i32* %j, align 4
  %__tmp36 = sext i32 %__tmp35 to i64
  %__tmp37 = getelementptr inbounds i32, i32* %__tmp34, i64 %__tmp36
  %__tmp38 = load i32, i32* %temp, align 4
  store i32 %__tmp38, i32* %__tmp37, align 4
  br label %bb8
bb7:
  br label %bb8
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
  ret void
}

define i32 @param32_rec(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16, i32 %a17, i32 %a18, i32 %a19, i32 %a20, i32 %a21, i32 %a22, i32 %a23, i32 %a24, i32 %a25, i32 %a26, i32 %a27, i32 %a28, i32 %a29, i32 %a30, i32 %a31, i32 %a32) {
param32_recEntry:
  %a1_arg = alloca i32, align 4
  store i32 %a1, i32* %a1_arg, align 4
  %a2_arg = alloca i32, align 4
  store i32 %a2, i32* %a2_arg, align 4
  %a3_arg = alloca i32, align 4
  store i32 %a3, i32* %a3_arg, align 4
  %a4_arg = alloca i32, align 4
  store i32 %a4, i32* %a4_arg, align 4
  %a5_arg = alloca i32, align 4
  store i32 %a5, i32* %a5_arg, align 4
  %a6_arg = alloca i32, align 4
  store i32 %a6, i32* %a6_arg, align 4
  %a7_arg = alloca i32, align 4
  store i32 %a7, i32* %a7_arg, align 4
  %a8_arg = alloca i32, align 4
  store i32 %a8, i32* %a8_arg, align 4
  %a9_arg = alloca i32, align 4
  store i32 %a9, i32* %a9_arg, align 4
  %a10_arg = alloca i32, align 4
  store i32 %a10, i32* %a10_arg, align 4
  %a11_arg = alloca i32, align 4
  store i32 %a11, i32* %a11_arg, align 4
  %a12_arg = alloca i32, align 4
  store i32 %a12, i32* %a12_arg, align 4
  %a13_arg = alloca i32, align 4
  store i32 %a13, i32* %a13_arg, align 4
  %a14_arg = alloca i32, align 4
  store i32 %a14, i32* %a14_arg, align 4
  %a15_arg = alloca i32, align 4
  store i32 %a15, i32* %a15_arg, align 4
  %a16_arg = alloca i32, align 4
  store i32 %a16, i32* %a16_arg, align 4
  %a17_arg = alloca i32, align 4
  store i32 %a17, i32* %a17_arg, align 4
  %a18_arg = alloca i32, align 4
  store i32 %a18, i32* %a18_arg, align 4
  %a19_arg = alloca i32, align 4
  store i32 %a19, i32* %a19_arg, align 4
  %a20_arg = alloca i32, align 4
  store i32 %a20, i32* %a20_arg, align 4
  %a21_arg = alloca i32, align 4
  store i32 %a21, i32* %a21_arg, align 4
  %a22_arg = alloca i32, align 4
  store i32 %a22, i32* %a22_arg, align 4
  %a23_arg = alloca i32, align 4
  store i32 %a23, i32* %a23_arg, align 4
  %a24_arg = alloca i32, align 4
  store i32 %a24, i32* %a24_arg, align 4
  %a25_arg = alloca i32, align 4
  store i32 %a25, i32* %a25_arg, align 4
  %a26_arg = alloca i32, align 4
  store i32 %a26, i32* %a26_arg, align 4
  %a27_arg = alloca i32, align 4
  store i32 %a27, i32* %a27_arg, align 4
  %a28_arg = alloca i32, align 4
  store i32 %a28, i32* %a28_arg, align 4
  %a29_arg = alloca i32, align 4
  store i32 %a29, i32* %a29_arg, align 4
  %a30_arg = alloca i32, align 4
  store i32 %a30, i32* %a30_arg, align 4
  %a31_arg = alloca i32, align 4
  store i32 %a31, i32* %a31_arg, align 4
  %a32_arg = alloca i32, align 4
  store i32 %a32, i32* %a32_arg, align 4
  %__tmp0 = load i32, i32* %a1_arg, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 0
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32, i32* %a2_arg, align 4
  ret i32 %__tmp2
bb1:
  %__tmp3 = load i32, i32* %a1_arg, align 4
  %__tmp4 = sub i32 %__tmp3, 1
  %__tmp5 = load i32, i32* %a2_arg, align 4
  %__tmp6 = load i32, i32* %a3_arg, align 4
  %__tmp7 = add i32 %__tmp5, %__tmp6
  %__tmp8 = srem i32 %__tmp7, 998244353
  %__tmp9 = load i32, i32* %a4_arg, align 4
  %__tmp10 = load i32, i32* %a5_arg, align 4
  %__tmp11 = load i32, i32* %a6_arg, align 4
  %__tmp12 = load i32, i32* %a7_arg, align 4
  %__tmp13 = load i32, i32* %a8_arg, align 4
  %__tmp14 = load i32, i32* %a9_arg, align 4
  %__tmp15 = load i32, i32* %a10_arg, align 4
  %__tmp16 = load i32, i32* %a11_arg, align 4
  %__tmp17 = load i32, i32* %a12_arg, align 4
  %__tmp18 = load i32, i32* %a13_arg, align 4
  %__tmp19 = load i32, i32* %a14_arg, align 4
  %__tmp20 = load i32, i32* %a15_arg, align 4
  %__tmp21 = load i32, i32* %a16_arg, align 4
  %__tmp22 = load i32, i32* %a17_arg, align 4
  %__tmp23 = load i32, i32* %a18_arg, align 4
  %__tmp24 = load i32, i32* %a19_arg, align 4
  %__tmp25 = load i32, i32* %a20_arg, align 4
  %__tmp26 = load i32, i32* %a21_arg, align 4
  %__tmp27 = load i32, i32* %a22_arg, align 4
  %__tmp28 = load i32, i32* %a23_arg, align 4
  %__tmp29 = load i32, i32* %a24_arg, align 4
  %__tmp30 = load i32, i32* %a25_arg, align 4
  %__tmp31 = load i32, i32* %a26_arg, align 4
  %__tmp32 = load i32, i32* %a27_arg, align 4
  %__tmp33 = load i32, i32* %a28_arg, align 4
  %__tmp34 = load i32, i32* %a29_arg, align 4
  %__tmp35 = load i32, i32* %a30_arg, align 4
  %__tmp36 = load i32, i32* %a31_arg, align 4
  %__tmp37 = load i32, i32* %a32_arg, align 4
  %__tmp38 = call i32 @param32_rec(i32 %__tmp4, i32 %__tmp8, i32 %__tmp9, i32 %__tmp10, i32 %__tmp11, i32 %__tmp12, i32 %__tmp13, i32 %__tmp14, i32 %__tmp15, i32 %__tmp16, i32 %__tmp17, i32 %__tmp18, i32 %__tmp19, i32 %__tmp20, i32 %__tmp21, i32 %__tmp22, i32 %__tmp23, i32 %__tmp24, i32 %__tmp25, i32 %__tmp26, i32 %__tmp27, i32 %__tmp28, i32 %__tmp29, i32 %__tmp30, i32 %__tmp31, i32 %__tmp32, i32 %__tmp33, i32 %__tmp34, i32 %__tmp35, i32 %__tmp36, i32 %__tmp37, i32 0)
  ret i32 %__tmp38
bb2:
  ret i32 0
}

define i32 @param32_arr(i32* %a1, i32* %a2, i32* %a3, i32* %a4, i32* %a5, i32* %a6, i32* %a7, i32* %a8, i32* %a9, i32* %a10, i32* %a11, i32* %a12, i32* %a13, i32* %a14, i32* %a15, i32* %a16, i32* %a17, i32* %a18, i32* %a19, i32* %a20, i32* %a21, i32* %a22, i32* %a23, i32* %a24, i32* %a25, i32* %a26, i32* %a27, i32* %a28, i32* %a29, i32* %a30, i32* %a31, i32* %a32) {
param32_arrEntry:
  %a1_arg = alloca i32*, align 4
  store i32* %a1, i32** %a1_arg, align 4
  %a2_arg = alloca i32*, align 4
  store i32* %a2, i32** %a2_arg, align 4
  %a3_arg = alloca i32*, align 4
  store i32* %a3, i32** %a3_arg, align 4
  %a4_arg = alloca i32*, align 4
  store i32* %a4, i32** %a4_arg, align 4
  %a5_arg = alloca i32*, align 4
  store i32* %a5, i32** %a5_arg, align 4
  %a6_arg = alloca i32*, align 4
  store i32* %a6, i32** %a6_arg, align 4
  %a7_arg = alloca i32*, align 4
  store i32* %a7, i32** %a7_arg, align 4
  %a8_arg = alloca i32*, align 4
  store i32* %a8, i32** %a8_arg, align 4
  %a9_arg = alloca i32*, align 4
  store i32* %a9, i32** %a9_arg, align 4
  %a10_arg = alloca i32*, align 4
  store i32* %a10, i32** %a10_arg, align 4
  %a11_arg = alloca i32*, align 4
  store i32* %a11, i32** %a11_arg, align 4
  %a12_arg = alloca i32*, align 4
  store i32* %a12, i32** %a12_arg, align 4
  %a13_arg = alloca i32*, align 4
  store i32* %a13, i32** %a13_arg, align 4
  %a14_arg = alloca i32*, align 4
  store i32* %a14, i32** %a14_arg, align 4
  %a15_arg = alloca i32*, align 4
  store i32* %a15, i32** %a15_arg, align 4
  %a16_arg = alloca i32*, align 4
  store i32* %a16, i32** %a16_arg, align 4
  %a17_arg = alloca i32*, align 4
  store i32* %a17, i32** %a17_arg, align 4
  %a18_arg = alloca i32*, align 4
  store i32* %a18, i32** %a18_arg, align 4
  %a19_arg = alloca i32*, align 4
  store i32* %a19, i32** %a19_arg, align 4
  %a20_arg = alloca i32*, align 4
  store i32* %a20, i32** %a20_arg, align 4
  %a21_arg = alloca i32*, align 4
  store i32* %a21, i32** %a21_arg, align 4
  %a22_arg = alloca i32*, align 4
  store i32* %a22, i32** %a22_arg, align 4
  %a23_arg = alloca i32*, align 4
  store i32* %a23, i32** %a23_arg, align 4
  %a24_arg = alloca i32*, align 4
  store i32* %a24, i32** %a24_arg, align 4
  %a25_arg = alloca i32*, align 4
  store i32* %a25, i32** %a25_arg, align 4
  %a26_arg = alloca i32*, align 4
  store i32* %a26, i32** %a26_arg, align 4
  %a27_arg = alloca i32*, align 4
  store i32* %a27, i32** %a27_arg, align 4
  %a28_arg = alloca i32*, align 4
  store i32* %a28, i32** %a28_arg, align 4
  %a29_arg = alloca i32*, align 4
  store i32* %a29, i32** %a29_arg, align 4
  %a30_arg = alloca i32*, align 4
  store i32* %a30, i32** %a30_arg, align 4
  %a31_arg = alloca i32*, align 4
  store i32* %a31, i32** %a31_arg, align 4
  %a32_arg = alloca i32*, align 4
  store i32* %a32, i32** %a32_arg, align 4
  %sum = alloca i32, align 4
  %__tmp0 = load i32*, i32** %a1_arg, align 4
  %__tmp1 = getelementptr inbounds i32, i32* %__tmp0, i64 0
  %__tmp2 = load i32, i32* %__tmp1, align 4
  %__tmp3 = load i32*, i32** %a1_arg, align 4
  %__tmp4 = getelementptr inbounds i32, i32* %__tmp3, i64 1
  %__tmp5 = load i32, i32* %__tmp4, align 4
  %__tmp6 = add i32 %__tmp2, %__tmp5
  store i32 %__tmp6, i32* %sum, align 4
  %__tmp7 = load i32, i32* %sum, align 4
  %__tmp8 = load i32*, i32** %a2_arg, align 4
  %__tmp9 = getelementptr inbounds i32, i32* %__tmp8, i64 0
  %__tmp10 = load i32, i32* %__tmp9, align 4
  %__tmp11 = add i32 %__tmp7, %__tmp10
  %__tmp12 = load i32*, i32** %a2_arg, align 4
  %__tmp13 = getelementptr inbounds i32, i32* %__tmp12, i64 1
  %__tmp14 = load i32, i32* %__tmp13, align 4
  %__tmp15 = add i32 %__tmp11, %__tmp14
  store i32 %__tmp15, i32* %sum, align 4
  %__tmp16 = load i32, i32* %sum, align 4
  %__tmp17 = load i32*, i32** %a3_arg, align 4
  %__tmp18 = getelementptr inbounds i32, i32* %__tmp17, i64 0
  %__tmp19 = load i32, i32* %__tmp18, align 4
  %__tmp20 = add i32 %__tmp16, %__tmp19
  %__tmp21 = load i32*, i32** %a3_arg, align 4
  %__tmp22 = getelementptr inbounds i32, i32* %__tmp21, i64 1
  %__tmp23 = load i32, i32* %__tmp22, align 4
  %__tmp24 = add i32 %__tmp20, %__tmp23
  store i32 %__tmp24, i32* %sum, align 4
  %__tmp25 = load i32, i32* %sum, align 4
  %__tmp26 = load i32*, i32** %a4_arg, align 4
  %__tmp27 = getelementptr inbounds i32, i32* %__tmp26, i64 0
  %__tmp28 = load i32, i32* %__tmp27, align 4
  %__tmp29 = add i32 %__tmp25, %__tmp28
  %__tmp30 = load i32*, i32** %a4_arg, align 4
  %__tmp31 = getelementptr inbounds i32, i32* %__tmp30, i64 1
  %__tmp32 = load i32, i32* %__tmp31, align 4
  %__tmp33 = add i32 %__tmp29, %__tmp32
  store i32 %__tmp33, i32* %sum, align 4
  %__tmp34 = load i32, i32* %sum, align 4
  %__tmp35 = load i32*, i32** %a5_arg, align 4
  %__tmp36 = getelementptr inbounds i32, i32* %__tmp35, i64 0
  %__tmp37 = load i32, i32* %__tmp36, align 4
  %__tmp38 = add i32 %__tmp34, %__tmp37
  %__tmp39 = load i32*, i32** %a5_arg, align 4
  %__tmp40 = getelementptr inbounds i32, i32* %__tmp39, i64 1
  %__tmp41 = load i32, i32* %__tmp40, align 4
  %__tmp42 = add i32 %__tmp38, %__tmp41
  store i32 %__tmp42, i32* %sum, align 4
  %__tmp43 = load i32, i32* %sum, align 4
  %__tmp44 = load i32*, i32** %a6_arg, align 4
  %__tmp45 = getelementptr inbounds i32, i32* %__tmp44, i64 0
  %__tmp46 = load i32, i32* %__tmp45, align 4
  %__tmp47 = add i32 %__tmp43, %__tmp46
  %__tmp48 = load i32*, i32** %a6_arg, align 4
  %__tmp49 = getelementptr inbounds i32, i32* %__tmp48, i64 1
  %__tmp50 = load i32, i32* %__tmp49, align 4
  %__tmp51 = add i32 %__tmp47, %__tmp50
  store i32 %__tmp51, i32* %sum, align 4
  %__tmp52 = load i32, i32* %sum, align 4
  %__tmp53 = load i32*, i32** %a7_arg, align 4
  %__tmp54 = getelementptr inbounds i32, i32* %__tmp53, i64 0
  %__tmp55 = load i32, i32* %__tmp54, align 4
  %__tmp56 = add i32 %__tmp52, %__tmp55
  %__tmp57 = load i32*, i32** %a7_arg, align 4
  %__tmp58 = getelementptr inbounds i32, i32* %__tmp57, i64 1
  %__tmp59 = load i32, i32* %__tmp58, align 4
  %__tmp60 = add i32 %__tmp56, %__tmp59
  store i32 %__tmp60, i32* %sum, align 4
  %__tmp61 = load i32, i32* %sum, align 4
  %__tmp62 = load i32*, i32** %a8_arg, align 4
  %__tmp63 = getelementptr inbounds i32, i32* %__tmp62, i64 0
  %__tmp64 = load i32, i32* %__tmp63, align 4
  %__tmp65 = add i32 %__tmp61, %__tmp64
  %__tmp66 = load i32*, i32** %a8_arg, align 4
  %__tmp67 = getelementptr inbounds i32, i32* %__tmp66, i64 1
  %__tmp68 = load i32, i32* %__tmp67, align 4
  %__tmp69 = add i32 %__tmp65, %__tmp68
  store i32 %__tmp69, i32* %sum, align 4
  %__tmp70 = load i32, i32* %sum, align 4
  %__tmp71 = load i32*, i32** %a9_arg, align 4
  %__tmp72 = getelementptr inbounds i32, i32* %__tmp71, i64 0
  %__tmp73 = load i32, i32* %__tmp72, align 4
  %__tmp74 = add i32 %__tmp70, %__tmp73
  %__tmp75 = load i32*, i32** %a9_arg, align 4
  %__tmp76 = getelementptr inbounds i32, i32* %__tmp75, i64 1
  %__tmp77 = load i32, i32* %__tmp76, align 4
  %__tmp78 = add i32 %__tmp74, %__tmp77
  store i32 %__tmp78, i32* %sum, align 4
  %__tmp79 = load i32, i32* %sum, align 4
  %__tmp80 = load i32*, i32** %a10_arg, align 4
  %__tmp81 = getelementptr inbounds i32, i32* %__tmp80, i64 0
  %__tmp82 = load i32, i32* %__tmp81, align 4
  %__tmp83 = add i32 %__tmp79, %__tmp82
  %__tmp84 = load i32*, i32** %a10_arg, align 4
  %__tmp85 = getelementptr inbounds i32, i32* %__tmp84, i64 1
  %__tmp86 = load i32, i32* %__tmp85, align 4
  %__tmp87 = add i32 %__tmp83, %__tmp86
  store i32 %__tmp87, i32* %sum, align 4
  %__tmp88 = load i32, i32* %sum, align 4
  %__tmp89 = load i32*, i32** %a11_arg, align 4
  %__tmp90 = getelementptr inbounds i32, i32* %__tmp89, i64 0
  %__tmp91 = load i32, i32* %__tmp90, align 4
  %__tmp92 = add i32 %__tmp88, %__tmp91
  %__tmp93 = load i32*, i32** %a11_arg, align 4
  %__tmp94 = getelementptr inbounds i32, i32* %__tmp93, i64 1
  %__tmp95 = load i32, i32* %__tmp94, align 4
  %__tmp96 = add i32 %__tmp92, %__tmp95
  store i32 %__tmp96, i32* %sum, align 4
  %__tmp97 = load i32, i32* %sum, align 4
  %__tmp98 = load i32*, i32** %a12_arg, align 4
  %__tmp99 = getelementptr inbounds i32, i32* %__tmp98, i64 0
  %__tmp100 = load i32, i32* %__tmp99, align 4
  %__tmp101 = add i32 %__tmp97, %__tmp100
  %__tmp102 = load i32*, i32** %a12_arg, align 4
  %__tmp103 = getelementptr inbounds i32, i32* %__tmp102, i64 1
  %__tmp104 = load i32, i32* %__tmp103, align 4
  %__tmp105 = add i32 %__tmp101, %__tmp104
  store i32 %__tmp105, i32* %sum, align 4
  %__tmp106 = load i32, i32* %sum, align 4
  %__tmp107 = load i32*, i32** %a13_arg, align 4
  %__tmp108 = getelementptr inbounds i32, i32* %__tmp107, i64 0
  %__tmp109 = load i32, i32* %__tmp108, align 4
  %__tmp110 = add i32 %__tmp106, %__tmp109
  %__tmp111 = load i32*, i32** %a13_arg, align 4
  %__tmp112 = getelementptr inbounds i32, i32* %__tmp111, i64 1
  %__tmp113 = load i32, i32* %__tmp112, align 4
  %__tmp114 = add i32 %__tmp110, %__tmp113
  store i32 %__tmp114, i32* %sum, align 4
  %__tmp115 = load i32, i32* %sum, align 4
  %__tmp116 = load i32*, i32** %a14_arg, align 4
  %__tmp117 = getelementptr inbounds i32, i32* %__tmp116, i64 0
  %__tmp118 = load i32, i32* %__tmp117, align 4
  %__tmp119 = add i32 %__tmp115, %__tmp118
  %__tmp120 = load i32*, i32** %a14_arg, align 4
  %__tmp121 = getelementptr inbounds i32, i32* %__tmp120, i64 1
  %__tmp122 = load i32, i32* %__tmp121, align 4
  %__tmp123 = add i32 %__tmp119, %__tmp122
  store i32 %__tmp123, i32* %sum, align 4
  %__tmp124 = load i32, i32* %sum, align 4
  %__tmp125 = load i32*, i32** %a15_arg, align 4
  %__tmp126 = getelementptr inbounds i32, i32* %__tmp125, i64 0
  %__tmp127 = load i32, i32* %__tmp126, align 4
  %__tmp128 = add i32 %__tmp124, %__tmp127
  %__tmp129 = load i32*, i32** %a15_arg, align 4
  %__tmp130 = getelementptr inbounds i32, i32* %__tmp129, i64 1
  %__tmp131 = load i32, i32* %__tmp130, align 4
  %__tmp132 = add i32 %__tmp128, %__tmp131
  store i32 %__tmp132, i32* %sum, align 4
  %__tmp133 = load i32, i32* %sum, align 4
  %__tmp134 = load i32*, i32** %a16_arg, align 4
  %__tmp135 = getelementptr inbounds i32, i32* %__tmp134, i64 0
  %__tmp136 = load i32, i32* %__tmp135, align 4
  %__tmp137 = add i32 %__tmp133, %__tmp136
  %__tmp138 = load i32*, i32** %a16_arg, align 4
  %__tmp139 = getelementptr inbounds i32, i32* %__tmp138, i64 1
  %__tmp140 = load i32, i32* %__tmp139, align 4
  %__tmp141 = add i32 %__tmp137, %__tmp140
  store i32 %__tmp141, i32* %sum, align 4
  %__tmp142 = load i32, i32* %sum, align 4
  %__tmp143 = load i32*, i32** %a17_arg, align 4
  %__tmp144 = getelementptr inbounds i32, i32* %__tmp143, i64 0
  %__tmp145 = load i32, i32* %__tmp144, align 4
  %__tmp146 = add i32 %__tmp142, %__tmp145
  %__tmp147 = load i32*, i32** %a17_arg, align 4
  %__tmp148 = getelementptr inbounds i32, i32* %__tmp147, i64 1
  %__tmp149 = load i32, i32* %__tmp148, align 4
  %__tmp150 = add i32 %__tmp146, %__tmp149
  store i32 %__tmp150, i32* %sum, align 4
  %__tmp151 = load i32, i32* %sum, align 4
  %__tmp152 = load i32*, i32** %a18_arg, align 4
  %__tmp153 = getelementptr inbounds i32, i32* %__tmp152, i64 0
  %__tmp154 = load i32, i32* %__tmp153, align 4
  %__tmp155 = add i32 %__tmp151, %__tmp154
  %__tmp156 = load i32*, i32** %a18_arg, align 4
  %__tmp157 = getelementptr inbounds i32, i32* %__tmp156, i64 1
  %__tmp158 = load i32, i32* %__tmp157, align 4
  %__tmp159 = add i32 %__tmp155, %__tmp158
  store i32 %__tmp159, i32* %sum, align 4
  %__tmp160 = load i32, i32* %sum, align 4
  %__tmp161 = load i32*, i32** %a19_arg, align 4
  %__tmp162 = getelementptr inbounds i32, i32* %__tmp161, i64 0
  %__tmp163 = load i32, i32* %__tmp162, align 4
  %__tmp164 = add i32 %__tmp160, %__tmp163
  %__tmp165 = load i32*, i32** %a19_arg, align 4
  %__tmp166 = getelementptr inbounds i32, i32* %__tmp165, i64 1
  %__tmp167 = load i32, i32* %__tmp166, align 4
  %__tmp168 = add i32 %__tmp164, %__tmp167
  store i32 %__tmp168, i32* %sum, align 4
  %__tmp169 = load i32, i32* %sum, align 4
  %__tmp170 = load i32*, i32** %a20_arg, align 4
  %__tmp171 = getelementptr inbounds i32, i32* %__tmp170, i64 0
  %__tmp172 = load i32, i32* %__tmp171, align 4
  %__tmp173 = add i32 %__tmp169, %__tmp172
  %__tmp174 = load i32*, i32** %a20_arg, align 4
  %__tmp175 = getelementptr inbounds i32, i32* %__tmp174, i64 1
  %__tmp176 = load i32, i32* %__tmp175, align 4
  %__tmp177 = add i32 %__tmp173, %__tmp176
  store i32 %__tmp177, i32* %sum, align 4
  %__tmp178 = load i32, i32* %sum, align 4
  %__tmp179 = load i32*, i32** %a21_arg, align 4
  %__tmp180 = getelementptr inbounds i32, i32* %__tmp179, i64 0
  %__tmp181 = load i32, i32* %__tmp180, align 4
  %__tmp182 = add i32 %__tmp178, %__tmp181
  %__tmp183 = load i32*, i32** %a21_arg, align 4
  %__tmp184 = getelementptr inbounds i32, i32* %__tmp183, i64 1
  %__tmp185 = load i32, i32* %__tmp184, align 4
  %__tmp186 = add i32 %__tmp182, %__tmp185
  store i32 %__tmp186, i32* %sum, align 4
  %__tmp187 = load i32, i32* %sum, align 4
  %__tmp188 = load i32*, i32** %a22_arg, align 4
  %__tmp189 = getelementptr inbounds i32, i32* %__tmp188, i64 0
  %__tmp190 = load i32, i32* %__tmp189, align 4
  %__tmp191 = add i32 %__tmp187, %__tmp190
  %__tmp192 = load i32*, i32** %a22_arg, align 4
  %__tmp193 = getelementptr inbounds i32, i32* %__tmp192, i64 1
  %__tmp194 = load i32, i32* %__tmp193, align 4
  %__tmp195 = add i32 %__tmp191, %__tmp194
  store i32 %__tmp195, i32* %sum, align 4
  %__tmp196 = load i32, i32* %sum, align 4
  %__tmp197 = load i32*, i32** %a23_arg, align 4
  %__tmp198 = getelementptr inbounds i32, i32* %__tmp197, i64 0
  %__tmp199 = load i32, i32* %__tmp198, align 4
  %__tmp200 = add i32 %__tmp196, %__tmp199
  %__tmp201 = load i32*, i32** %a23_arg, align 4
  %__tmp202 = getelementptr inbounds i32, i32* %__tmp201, i64 1
  %__tmp203 = load i32, i32* %__tmp202, align 4
  %__tmp204 = add i32 %__tmp200, %__tmp203
  store i32 %__tmp204, i32* %sum, align 4
  %__tmp205 = load i32, i32* %sum, align 4
  %__tmp206 = load i32*, i32** %a24_arg, align 4
  %__tmp207 = getelementptr inbounds i32, i32* %__tmp206, i64 0
  %__tmp208 = load i32, i32* %__tmp207, align 4
  %__tmp209 = add i32 %__tmp205, %__tmp208
  %__tmp210 = load i32*, i32** %a24_arg, align 4
  %__tmp211 = getelementptr inbounds i32, i32* %__tmp210, i64 1
  %__tmp212 = load i32, i32* %__tmp211, align 4
  %__tmp213 = add i32 %__tmp209, %__tmp212
  store i32 %__tmp213, i32* %sum, align 4
  %__tmp214 = load i32, i32* %sum, align 4
  %__tmp215 = load i32*, i32** %a25_arg, align 4
  %__tmp216 = getelementptr inbounds i32, i32* %__tmp215, i64 0
  %__tmp217 = load i32, i32* %__tmp216, align 4
  %__tmp218 = add i32 %__tmp214, %__tmp217
  %__tmp219 = load i32*, i32** %a25_arg, align 4
  %__tmp220 = getelementptr inbounds i32, i32* %__tmp219, i64 1
  %__tmp221 = load i32, i32* %__tmp220, align 4
  %__tmp222 = add i32 %__tmp218, %__tmp221
  store i32 %__tmp222, i32* %sum, align 4
  %__tmp223 = load i32, i32* %sum, align 4
  %__tmp224 = load i32*, i32** %a26_arg, align 4
  %__tmp225 = getelementptr inbounds i32, i32* %__tmp224, i64 0
  %__tmp226 = load i32, i32* %__tmp225, align 4
  %__tmp227 = add i32 %__tmp223, %__tmp226
  %__tmp228 = load i32*, i32** %a26_arg, align 4
  %__tmp229 = getelementptr inbounds i32, i32* %__tmp228, i64 1
  %__tmp230 = load i32, i32* %__tmp229, align 4
  %__tmp231 = add i32 %__tmp227, %__tmp230
  store i32 %__tmp231, i32* %sum, align 4
  %__tmp232 = load i32, i32* %sum, align 4
  %__tmp233 = load i32*, i32** %a27_arg, align 4
  %__tmp234 = getelementptr inbounds i32, i32* %__tmp233, i64 0
  %__tmp235 = load i32, i32* %__tmp234, align 4
  %__tmp236 = add i32 %__tmp232, %__tmp235
  %__tmp237 = load i32*, i32** %a27_arg, align 4
  %__tmp238 = getelementptr inbounds i32, i32* %__tmp237, i64 1
  %__tmp239 = load i32, i32* %__tmp238, align 4
  %__tmp240 = add i32 %__tmp236, %__tmp239
  store i32 %__tmp240, i32* %sum, align 4
  %__tmp241 = load i32, i32* %sum, align 4
  %__tmp242 = load i32*, i32** %a28_arg, align 4
  %__tmp243 = getelementptr inbounds i32, i32* %__tmp242, i64 0
  %__tmp244 = load i32, i32* %__tmp243, align 4
  %__tmp245 = add i32 %__tmp241, %__tmp244
  %__tmp246 = load i32*, i32** %a28_arg, align 4
  %__tmp247 = getelementptr inbounds i32, i32* %__tmp246, i64 1
  %__tmp248 = load i32, i32* %__tmp247, align 4
  %__tmp249 = add i32 %__tmp245, %__tmp248
  store i32 %__tmp249, i32* %sum, align 4
  %__tmp250 = load i32, i32* %sum, align 4
  %__tmp251 = load i32*, i32** %a29_arg, align 4
  %__tmp252 = getelementptr inbounds i32, i32* %__tmp251, i64 0
  %__tmp253 = load i32, i32* %__tmp252, align 4
  %__tmp254 = add i32 %__tmp250, %__tmp253
  %__tmp255 = load i32*, i32** %a29_arg, align 4
  %__tmp256 = getelementptr inbounds i32, i32* %__tmp255, i64 1
  %__tmp257 = load i32, i32* %__tmp256, align 4
  %__tmp258 = add i32 %__tmp254, %__tmp257
  store i32 %__tmp258, i32* %sum, align 4
  %__tmp259 = load i32, i32* %sum, align 4
  %__tmp260 = load i32*, i32** %a30_arg, align 4
  %__tmp261 = getelementptr inbounds i32, i32* %__tmp260, i64 0
  %__tmp262 = load i32, i32* %__tmp261, align 4
  %__tmp263 = add i32 %__tmp259, %__tmp262
  %__tmp264 = load i32*, i32** %a30_arg, align 4
  %__tmp265 = getelementptr inbounds i32, i32* %__tmp264, i64 1
  %__tmp266 = load i32, i32* %__tmp265, align 4
  %__tmp267 = add i32 %__tmp263, %__tmp266
  store i32 %__tmp267, i32* %sum, align 4
  %__tmp268 = load i32, i32* %sum, align 4
  %__tmp269 = load i32*, i32** %a31_arg, align 4
  %__tmp270 = getelementptr inbounds i32, i32* %__tmp269, i64 0
  %__tmp271 = load i32, i32* %__tmp270, align 4
  %__tmp272 = add i32 %__tmp268, %__tmp271
  %__tmp273 = load i32*, i32** %a31_arg, align 4
  %__tmp274 = getelementptr inbounds i32, i32* %__tmp273, i64 1
  %__tmp275 = load i32, i32* %__tmp274, align 4
  %__tmp276 = add i32 %__tmp272, %__tmp275
  store i32 %__tmp276, i32* %sum, align 4
  %__tmp277 = load i32, i32* %sum, align 4
  %__tmp278 = load i32*, i32** %a32_arg, align 4
  %__tmp279 = getelementptr inbounds i32, i32* %__tmp278, i64 0
  %__tmp280 = load i32, i32* %__tmp279, align 4
  %__tmp281 = add i32 %__tmp277, %__tmp280
  %__tmp282 = load i32*, i32** %a32_arg, align 4
  %__tmp283 = getelementptr inbounds i32, i32* %__tmp282, i64 1
  %__tmp284 = load i32, i32* %__tmp283, align 4
  %__tmp285 = add i32 %__tmp281, %__tmp284
  store i32 %__tmp285, i32* %sum, align 4
  %__tmp286 = load i32, i32* %sum, align 4
  ret i32 %__tmp286
}

define i32 @param16(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16) {
param16Entry:
  %a1_arg = alloca i32, align 4
  store i32 %a1, i32* %a1_arg, align 4
  %a2_arg = alloca i32, align 4
  store i32 %a2, i32* %a2_arg, align 4
  %a3_arg = alloca i32, align 4
  store i32 %a3, i32* %a3_arg, align 4
  %a4_arg = alloca i32, align 4
  store i32 %a4, i32* %a4_arg, align 4
  %a5_arg = alloca i32, align 4
  store i32 %a5, i32* %a5_arg, align 4
  %a6_arg = alloca i32, align 4
  store i32 %a6, i32* %a6_arg, align 4
  %a7_arg = alloca i32, align 4
  store i32 %a7, i32* %a7_arg, align 4
  %a8_arg = alloca i32, align 4
  store i32 %a8, i32* %a8_arg, align 4
  %a9_arg = alloca i32, align 4
  store i32 %a9, i32* %a9_arg, align 4
  %a10_arg = alloca i32, align 4
  store i32 %a10, i32* %a10_arg, align 4
  %a11_arg = alloca i32, align 4
  store i32 %a11, i32* %a11_arg, align 4
  %a12_arg = alloca i32, align 4
  store i32 %a12, i32* %a12_arg, align 4
  %a13_arg = alloca i32, align 4
  store i32 %a13, i32* %a13_arg, align 4
  %a14_arg = alloca i32, align 4
  store i32 %a14, i32* %a14_arg, align 4
  %a15_arg = alloca i32, align 4
  store i32 %a15, i32* %a15_arg, align 4
  %a16_arg = alloca i32, align 4
  store i32 %a16, i32* %a16_arg, align 4
  %arr = alloca [16 x i32], align 4
  store [16 x i32] zeroinitializer, [16 x i32]* %arr, align 4
  %__tmp0 = load i32, i32* %a1_arg, align 4
  %__tmp1 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 0
  store i32 %__tmp0, i32* %__tmp1, align 4
  %__tmp2 = load i32, i32* %a2_arg, align 4
  %__tmp3 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 1
  store i32 %__tmp2, i32* %__tmp3, align 4
  %__tmp4 = load i32, i32* %a3_arg, align 4
  %__tmp5 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 2
  store i32 %__tmp4, i32* %__tmp5, align 4
  %__tmp6 = load i32, i32* %a4_arg, align 4
  %__tmp7 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 3
  store i32 %__tmp6, i32* %__tmp7, align 4
  %__tmp8 = load i32, i32* %a5_arg, align 4
  %__tmp9 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 4
  store i32 %__tmp8, i32* %__tmp9, align 4
  %__tmp10 = load i32, i32* %a6_arg, align 4
  %__tmp11 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 5
  store i32 %__tmp10, i32* %__tmp11, align 4
  %__tmp12 = load i32, i32* %a7_arg, align 4
  %__tmp13 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 6
  store i32 %__tmp12, i32* %__tmp13, align 4
  %__tmp14 = load i32, i32* %a8_arg, align 4
  %__tmp15 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 7
  store i32 %__tmp14, i32* %__tmp15, align 4
  %__tmp16 = load i32, i32* %a9_arg, align 4
  %__tmp17 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 8
  store i32 %__tmp16, i32* %__tmp17, align 4
  %__tmp18 = load i32, i32* %a10_arg, align 4
  %__tmp19 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 9
  store i32 %__tmp18, i32* %__tmp19, align 4
  %__tmp20 = load i32, i32* %a11_arg, align 4
  %__tmp21 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 10
  store i32 %__tmp20, i32* %__tmp21, align 4
  %__tmp22 = load i32, i32* %a12_arg, align 4
  %__tmp23 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 11
  store i32 %__tmp22, i32* %__tmp23, align 4
  %__tmp24 = load i32, i32* %a13_arg, align 4
  %__tmp25 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 12
  store i32 %__tmp24, i32* %__tmp25, align 4
  %__tmp26 = load i32, i32* %a14_arg, align 4
  %__tmp27 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 13
  store i32 %__tmp26, i32* %__tmp27, align 4
  %__tmp28 = load i32, i32* %a15_arg, align 4
  %__tmp29 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 14
  store i32 %__tmp28, i32* %__tmp29, align 4
  %__tmp30 = load i32, i32* %a16_arg, align 4
  %__tmp31 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 15
  store i32 %__tmp30, i32* %__tmp31, align 4
  %__tmp32 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 0
  call void @sort(i32* %__tmp32, i32 16)
  %__tmp33 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 0
  %__tmp34 = load i32, i32* %__tmp33, align 4
  %__tmp35 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 1
  %__tmp36 = load i32, i32* %__tmp35, align 4
  %__tmp37 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 2
  %__tmp38 = load i32, i32* %__tmp37, align 4
  %__tmp39 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 3
  %__tmp40 = load i32, i32* %__tmp39, align 4
  %__tmp41 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 4
  %__tmp42 = load i32, i32* %__tmp41, align 4
  %__tmp43 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 5
  %__tmp44 = load i32, i32* %__tmp43, align 4
  %__tmp45 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 6
  %__tmp46 = load i32, i32* %__tmp45, align 4
  %__tmp47 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 7
  %__tmp48 = load i32, i32* %__tmp47, align 4
  %__tmp49 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 8
  %__tmp50 = load i32, i32* %__tmp49, align 4
  %__tmp51 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 9
  %__tmp52 = load i32, i32* %__tmp51, align 4
  %__tmp53 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 10
  %__tmp54 = load i32, i32* %__tmp53, align 4
  %__tmp55 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 11
  %__tmp56 = load i32, i32* %__tmp55, align 4
  %__tmp57 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 12
  %__tmp58 = load i32, i32* %__tmp57, align 4
  %__tmp59 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 13
  %__tmp60 = load i32, i32* %__tmp59, align 4
  %__tmp61 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 14
  %__tmp62 = load i32, i32* %__tmp61, align 4
  %__tmp63 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 15
  %__tmp64 = load i32, i32* %__tmp63, align 4
  %__tmp65 = load i32, i32* %a1_arg, align 4
  %__tmp66 = load i32, i32* %a2_arg, align 4
  %__tmp67 = load i32, i32* %a3_arg, align 4
  %__tmp68 = load i32, i32* %a4_arg, align 4
  %__tmp69 = load i32, i32* %a5_arg, align 4
  %__tmp70 = load i32, i32* %a6_arg, align 4
  %__tmp71 = load i32, i32* %a7_arg, align 4
  %__tmp72 = load i32, i32* %a8_arg, align 4
  %__tmp73 = load i32, i32* %a9_arg, align 4
  %__tmp74 = load i32, i32* %a10_arg, align 4
  %__tmp75 = load i32, i32* %a11_arg, align 4
  %__tmp76 = load i32, i32* %a12_arg, align 4
  %__tmp77 = load i32, i32* %a13_arg, align 4
  %__tmp78 = load i32, i32* %a14_arg, align 4
  %__tmp79 = load i32, i32* %a15_arg, align 4
  %__tmp80 = load i32, i32* %a16_arg, align 4
  %__tmp81 = call i32 @param32_rec(i32 %__tmp34, i32 %__tmp36, i32 %__tmp38, i32 %__tmp40, i32 %__tmp42, i32 %__tmp44, i32 %__tmp46, i32 %__tmp48, i32 %__tmp50, i32 %__tmp52, i32 %__tmp54, i32 %__tmp56, i32 %__tmp58, i32 %__tmp60, i32 %__tmp62, i32 %__tmp64, i32 %__tmp65, i32 %__tmp66, i32 %__tmp67, i32 %__tmp68, i32 %__tmp69, i32 %__tmp70, i32 %__tmp71, i32 %__tmp72, i32 %__tmp73, i32 %__tmp74, i32 %__tmp75, i32 %__tmp76, i32 %__tmp77, i32 %__tmp78, i32 %__tmp79, i32 %__tmp80)
  ret i32 %__tmp81
}

define i32 @main() {
mainEntry:
  %arr = alloca [32 x [2 x i32]], align 4
  store [32 x [2 x i32]] zeroinitializer, [32 x [2 x i32]]* %arr, align 4
  %__tmp0 = call i32 @getint()
  %__tmp1 = call i32 @getint()
  %__tmp2 = call i32 @getint()
  %__tmp3 = call i32 @getint()
  %__tmp4 = call i32 @getint()
  %__tmp5 = call i32 @getint()
  %__tmp6 = call i32 @getint()
  %__tmp7 = call i32 @getint()
  %__tmp8 = call i32 @getint()
  %__tmp9 = call i32 @getint()
  %__tmp10 = call i32 @getint()
  %__tmp11 = call i32 @getint()
  %__tmp12 = call i32 @getint()
  %__tmp13 = call i32 @getint()
  %__tmp14 = call i32 @getint()
  %__tmp15 = call i32 @getint()
  %__tmp16 = call i32 @param16(i32 %__tmp0, i32 %__tmp1, i32 %__tmp2, i32 %__tmp3, i32 %__tmp4, i32 %__tmp5, i32 %__tmp6, i32 %__tmp7, i32 %__tmp8, i32 %__tmp9, i32 %__tmp10, i32 %__tmp11, i32 %__tmp12, i32 %__tmp13, i32 %__tmp14, i32 %__tmp15)
  %__tmp17 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 0
  %__tmp18 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp17, i64 0, i64 0
  store i32 %__tmp16, i32* %__tmp18, align 4
  %__tmp19 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 0
  %__tmp20 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp19, i64 0, i64 1
  store i32 8848, i32* %__tmp20, align 4
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp21 = load i32, i32* %i, align 4
  %__tmp22 = icmp slt i32 %__tmp21, 32
  br i1 %__tmp22, label %bb1, label %bb2
bb1:
  %__tmp23 = load i32, i32* %i, align 4
  %__tmp24 = sext i32 %__tmp23 to i64
  %__tmp25 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %__tmp24
  %__tmp26 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp25, i64 0, i64 0
  %__tmp27 = load i32, i32* %i, align 4
  %__tmp28 = sub i32 %__tmp27, 1
  %__tmp29 = sext i32 %__tmp28 to i64
  %__tmp30 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %__tmp29
  %__tmp31 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp30, i64 0, i64 1
  %__tmp32 = load i32, i32* %__tmp31, align 4
  %__tmp33 = sub i32 %__tmp32, 1
  store i32 %__tmp33, i32* %__tmp26, align 4
  %__tmp34 = load i32, i32* %i, align 4
  %__tmp35 = sext i32 %__tmp34 to i64
  %__tmp36 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %__tmp35
  %__tmp37 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp36, i64 0, i64 1
  %__tmp38 = load i32, i32* %i, align 4
  %__tmp39 = sub i32 %__tmp38, 1
  %__tmp40 = sext i32 %__tmp39 to i64
  %__tmp41 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %__tmp40
  %__tmp42 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp41, i64 0, i64 0
  %__tmp43 = load i32, i32* %__tmp42, align 4
  %__tmp44 = sub i32 %__tmp43, 2
  store i32 %__tmp44, i32* %__tmp37, align 4
  %__tmp45 = load i32, i32* %i, align 4
  %__tmp46 = add i32 %__tmp45, 1
  store i32 %__tmp46, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp47 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 0
  %__tmp48 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 1
  %__tmp49 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 2
  %__tmp50 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 3
  %__tmp51 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 4
  %__tmp52 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 5
  %__tmp53 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 6
  %__tmp54 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 7
  %__tmp55 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 8
  %__tmp56 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 9
  %__tmp57 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 10
  %__tmp58 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 11
  %__tmp59 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 12
  %__tmp60 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 13
  %__tmp61 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 14
  %__tmp62 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 15
  %__tmp63 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 16
  %__tmp64 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 17
  %__tmp65 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 18
  %__tmp66 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 19
  %__tmp67 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 20
  %__tmp68 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 21
  %__tmp69 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 22
  %__tmp70 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 23
  %__tmp71 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 24
  %__tmp72 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 25
  %__tmp73 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 26
  %__tmp74 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 27
  %__tmp75 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 28
  %__tmp76 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 29
  %__tmp77 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 30
  %__tmp78 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 31
  %__tmp79 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp47, i64 0, i64 0
  %__tmp80 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp48, i64 0, i64 0
  %__tmp81 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp49, i64 0, i64 0
  %__tmp82 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp50, i64 0, i64 0
  %__tmp83 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp51, i64 0, i64 0
  %__tmp84 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp52, i64 0, i64 0
  %__tmp85 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp53, i64 0, i64 0
  %__tmp86 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp54, i64 0, i64 0
  %__tmp87 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp55, i64 0, i64 0
  %__tmp88 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp56, i64 0, i64 0
  %__tmp89 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp57, i64 0, i64 0
  %__tmp90 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp58, i64 0, i64 0
  %__tmp91 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp59, i64 0, i64 0
  %__tmp92 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp60, i64 0, i64 0
  %__tmp93 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp61, i64 0, i64 0
  %__tmp94 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp62, i64 0, i64 0
  %__tmp95 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp63, i64 0, i64 0
  %__tmp96 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp64, i64 0, i64 0
  %__tmp97 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp65, i64 0, i64 0
  %__tmp98 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp66, i64 0, i64 0
  %__tmp99 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp67, i64 0, i64 0
  %__tmp100 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp68, i64 0, i64 0
  %__tmp101 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp69, i64 0, i64 0
  %__tmp102 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp70, i64 0, i64 0
  %__tmp103 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp71, i64 0, i64 0
  %__tmp104 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp72, i64 0, i64 0
  %__tmp105 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp73, i64 0, i64 0
  %__tmp106 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp74, i64 0, i64 0
  %__tmp107 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp75, i64 0, i64 0
  %__tmp108 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp76, i64 0, i64 0
  %__tmp109 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp77, i64 0, i64 0
  %__tmp110 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp78, i64 0, i64 0
  %__tmp111 = call i32 @param32_arr(i32* %__tmp79, i32* %__tmp80, i32* %__tmp81, i32* %__tmp82, i32* %__tmp83, i32* %__tmp84, i32* %__tmp85, i32* %__tmp86, i32* %__tmp87, i32* %__tmp88, i32* %__tmp89, i32* %__tmp90, i32* %__tmp91, i32* %__tmp92, i32* %__tmp93, i32* %__tmp94, i32* %__tmp95, i32* %__tmp96, i32* %__tmp97, i32* %__tmp98, i32* %__tmp99, i32* %__tmp100, i32* %__tmp101, i32* %__tmp102, i32* %__tmp103, i32* %__tmp104, i32* %__tmp105, i32* %__tmp106, i32* %__tmp107, i32* %__tmp108, i32* %__tmp109, i32* %__tmp110)
  call void @putint(i32 %__tmp111)
  call void @putch(i32 10)
  ret i32 0
}

