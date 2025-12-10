; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a0 = global i32 0, align 4
@a1 = global i32 0, align 4
@a2 = global i32 0, align 4
@a3 = global i32 0, align 4
@a4 = global i32 0, align 4
@a5 = global i32 0, align 4
@a6 = global i32 0, align 4
@a7 = global i32 0, align 4
@a8 = global i32 0, align 4
@a9 = global i32 0, align 4
@a10 = global i32 0, align 4
@a11 = global i32 0, align 4
@a12 = global i32 0, align 4
@a13 = global i32 0, align 4
@a14 = global i32 0, align 4
@a15 = global i32 0, align 4
@a16 = global i32 0, align 4
@a17 = global i32 0, align 4
@a18 = global i32 0, align 4
@a19 = global i32 0, align 4
@a20 = global i32 0, align 4
@a21 = global i32 0, align 4
@a22 = global i32 0, align 4
@a23 = global i32 0, align 4
@a24 = global i32 0, align 4
@a25 = global i32 0, align 4
@a26 = global i32 0, align 4
@a27 = global i32 0, align 4
@a28 = global i32 0, align 4
@a29 = global i32 0, align 4
@a30 = global i32 0, align 4
@a31 = global i32 0, align 4
@a32 = global i32 0, align 4
@a33 = global i32 0, align 4
@a34 = global i32 0, align 4
@a35 = global i32 0, align 4
@a36 = global i32 0, align 4
@a37 = global i32 0, align 4
@a38 = global i32 0, align 4
@a39 = global i32 0, align 4

define i32 @testParam8(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7) {
testParam8Entry:
  %a0_arg = alloca i32, align 4
  store i32 %a0, i32* %a0_arg, align 4
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
  %__tmp0 = load i32, i32* %a0_arg, align 4
  %__tmp1 = load i32, i32* %a1_arg, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  %__tmp3 = load i32, i32* %a2_arg, align 4
  %__tmp4 = add i32 %__tmp2, %__tmp3
  %__tmp5 = load i32, i32* %a3_arg, align 4
  %__tmp6 = add i32 %__tmp4, %__tmp5
  %__tmp7 = load i32, i32* %a4_arg, align 4
  %__tmp8 = add i32 %__tmp6, %__tmp7
  %__tmp9 = load i32, i32* %a5_arg, align 4
  %__tmp10 = add i32 %__tmp8, %__tmp9
  %__tmp11 = load i32, i32* %a6_arg, align 4
  %__tmp12 = add i32 %__tmp10, %__tmp11
  %__tmp13 = load i32, i32* %a7_arg, align 4
  %__tmp14 = add i32 %__tmp12, %__tmp13
  ret i32 %__tmp14
}

define i32 @testParam16(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15) {
testParam16Entry:
  %a0_arg = alloca i32, align 4
  store i32 %a0, i32* %a0_arg, align 4
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
  %__tmp0 = load i32, i32* %a0_arg, align 4
  %__tmp1 = load i32, i32* %a1_arg, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  %__tmp3 = load i32, i32* %a2_arg, align 4
  %__tmp4 = add i32 %__tmp2, %__tmp3
  %__tmp5 = load i32, i32* %a3_arg, align 4
  %__tmp6 = sub i32 %__tmp4, %__tmp5
  %__tmp7 = load i32, i32* %a4_arg, align 4
  %__tmp8 = sub i32 %__tmp6, %__tmp7
  %__tmp9 = load i32, i32* %a5_arg, align 4
  %__tmp10 = sub i32 %__tmp8, %__tmp9
  %__tmp11 = load i32, i32* %a6_arg, align 4
  %__tmp12 = sub i32 %__tmp10, %__tmp11
  %__tmp13 = load i32, i32* %a7_arg, align 4
  %__tmp14 = sub i32 %__tmp12, %__tmp13
  %__tmp15 = load i32, i32* %a8_arg, align 4
  %__tmp16 = add i32 %__tmp14, %__tmp15
  %__tmp17 = load i32, i32* %a9_arg, align 4
  %__tmp18 = add i32 %__tmp16, %__tmp17
  %__tmp19 = load i32, i32* %a10_arg, align 4
  %__tmp20 = add i32 %__tmp18, %__tmp19
  %__tmp21 = load i32, i32* %a11_arg, align 4
  %__tmp22 = add i32 %__tmp20, %__tmp21
  %__tmp23 = load i32, i32* %a12_arg, align 4
  %__tmp24 = add i32 %__tmp22, %__tmp23
  %__tmp25 = load i32, i32* %a13_arg, align 4
  %__tmp26 = add i32 %__tmp24, %__tmp25
  %__tmp27 = load i32, i32* %a14_arg, align 4
  %__tmp28 = add i32 %__tmp26, %__tmp27
  %__tmp29 = load i32, i32* %a15_arg, align 4
  %__tmp30 = add i32 %__tmp28, %__tmp29
  ret i32 %__tmp30
}

define i32 @testParam32(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16, i32 %a17, i32 %a18, i32 %a19, i32 %a20, i32 %a21, i32 %a22, i32 %a23, i32 %a24, i32 %a25, i32 %a26, i32 %a27, i32 %a28, i32 %a29, i32 %a30, i32 %a31) {
testParam32Entry:
  %a0_arg = alloca i32, align 4
  store i32 %a0, i32* %a0_arg, align 4
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
  %__tmp0 = load i32, i32* %a0_arg, align 4
  %__tmp1 = load i32, i32* %a1_arg, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  %__tmp3 = load i32, i32* %a2_arg, align 4
  %__tmp4 = add i32 %__tmp2, %__tmp3
  %__tmp5 = load i32, i32* %a3_arg, align 4
  %__tmp6 = add i32 %__tmp4, %__tmp5
  %__tmp7 = load i32, i32* %a4_arg, align 4
  %__tmp8 = add i32 %__tmp6, %__tmp7
  %__tmp9 = load i32, i32* %a5_arg, align 4
  %__tmp10 = add i32 %__tmp8, %__tmp9
  %__tmp11 = load i32, i32* %a6_arg, align 4
  %__tmp12 = add i32 %__tmp10, %__tmp11
  %__tmp13 = load i32, i32* %a7_arg, align 4
  %__tmp14 = add i32 %__tmp12, %__tmp13
  %__tmp15 = load i32, i32* %a8_arg, align 4
  %__tmp16 = add i32 %__tmp14, %__tmp15
  %__tmp17 = load i32, i32* %a9_arg, align 4
  %__tmp18 = add i32 %__tmp16, %__tmp17
  %__tmp19 = load i32, i32* %a10_arg, align 4
  %__tmp20 = add i32 %__tmp18, %__tmp19
  %__tmp21 = load i32, i32* %a11_arg, align 4
  %__tmp22 = add i32 %__tmp20, %__tmp21
  %__tmp23 = load i32, i32* %a12_arg, align 4
  %__tmp24 = add i32 %__tmp22, %__tmp23
  %__tmp25 = load i32, i32* %a13_arg, align 4
  %__tmp26 = add i32 %__tmp24, %__tmp25
  %__tmp27 = load i32, i32* %a14_arg, align 4
  %__tmp28 = add i32 %__tmp26, %__tmp27
  %__tmp29 = load i32, i32* %a15_arg, align 4
  %__tmp30 = add i32 %__tmp28, %__tmp29
  %__tmp31 = load i32, i32* %a16_arg, align 4
  %__tmp32 = add i32 %__tmp30, %__tmp31
  %__tmp33 = load i32, i32* %a17_arg, align 4
  %__tmp34 = add i32 %__tmp32, %__tmp33
  %__tmp35 = load i32, i32* %a18_arg, align 4
  %__tmp36 = sub i32 %__tmp34, %__tmp35
  %__tmp37 = load i32, i32* %a19_arg, align 4
  %__tmp38 = sub i32 %__tmp36, %__tmp37
  %__tmp39 = load i32, i32* %a20_arg, align 4
  %__tmp40 = sub i32 %__tmp38, %__tmp39
  %__tmp41 = load i32, i32* %a21_arg, align 4
  %__tmp42 = sub i32 %__tmp40, %__tmp41
  %__tmp43 = load i32, i32* %a22_arg, align 4
  %__tmp44 = sub i32 %__tmp42, %__tmp43
  %__tmp45 = load i32, i32* %a23_arg, align 4
  %__tmp46 = add i32 %__tmp44, %__tmp45
  %__tmp47 = load i32, i32* %a24_arg, align 4
  %__tmp48 = add i32 %__tmp46, %__tmp47
  %__tmp49 = load i32, i32* %a25_arg, align 4
  %__tmp50 = add i32 %__tmp48, %__tmp49
  %__tmp51 = load i32, i32* %a26_arg, align 4
  %__tmp52 = add i32 %__tmp50, %__tmp51
  %__tmp53 = load i32, i32* %a27_arg, align 4
  %__tmp54 = add i32 %__tmp52, %__tmp53
  %__tmp55 = load i32, i32* %a28_arg, align 4
  %__tmp56 = add i32 %__tmp54, %__tmp55
  %__tmp57 = load i32, i32* %a29_arg, align 4
  %__tmp58 = add i32 %__tmp56, %__tmp57
  %__tmp59 = load i32, i32* %a30_arg, align 4
  %__tmp60 = add i32 %__tmp58, %__tmp59
  %__tmp61 = load i32, i32* %a31_arg, align 4
  %__tmp62 = add i32 %__tmp60, %__tmp61
  ret i32 %__tmp62
}

define i32 @main() {
mainEntry:
  store i32 0, i32* @a0, align 4
  store i32 1, i32* @a1, align 4
  store i32 2, i32* @a2, align 4
  store i32 3, i32* @a3, align 4
  store i32 4, i32* @a4, align 4
  store i32 5, i32* @a5, align 4
  store i32 6, i32* @a6, align 4
  store i32 7, i32* @a7, align 4
  store i32 8, i32* @a8, align 4
  store i32 9, i32* @a9, align 4
  store i32 0, i32* @a10, align 4
  store i32 1, i32* @a11, align 4
  store i32 2, i32* @a12, align 4
  store i32 3, i32* @a13, align 4
  store i32 4, i32* @a14, align 4
  store i32 5, i32* @a15, align 4
  store i32 6, i32* @a16, align 4
  store i32 7, i32* @a17, align 4
  store i32 8, i32* @a18, align 4
  store i32 9, i32* @a19, align 4
  store i32 0, i32* @a20, align 4
  store i32 1, i32* @a21, align 4
  store i32 2, i32* @a22, align 4
  store i32 3, i32* @a23, align 4
  store i32 4, i32* @a24, align 4
  store i32 5, i32* @a25, align 4
  store i32 6, i32* @a26, align 4
  store i32 7, i32* @a27, align 4
  store i32 8, i32* @a28, align 4
  store i32 9, i32* @a29, align 4
  store i32 0, i32* @a30, align 4
  store i32 1, i32* @a31, align 4
  store i32 4, i32* @a32, align 4
  store i32 5, i32* @a33, align 4
  store i32 6, i32* @a34, align 4
  store i32 7, i32* @a35, align 4
  store i32 8, i32* @a36, align 4
  store i32 9, i32* @a37, align 4
  store i32 0, i32* @a38, align 4
  store i32 1, i32* @a39, align 4
  %__tmp0 = load i32, i32* @a0, align 4
  %__tmp1 = load i32, i32* @a1, align 4
  %__tmp2 = load i32, i32* @a2, align 4
  %__tmp3 = load i32, i32* @a3, align 4
  %__tmp4 = load i32, i32* @a4, align 4
  %__tmp5 = load i32, i32* @a5, align 4
  %__tmp6 = load i32, i32* @a6, align 4
  %__tmp7 = load i32, i32* @a7, align 4
  %__tmp8 = call i32 @testParam8(i32 %__tmp0, i32 %__tmp1, i32 %__tmp2, i32 %__tmp3, i32 %__tmp4, i32 %__tmp5, i32 %__tmp6, i32 %__tmp7)
  store i32 %__tmp8, i32* @a0, align 4
  %__tmp9 = load i32, i32* @a0, align 4
  call void @putint(i32 %__tmp9)
  %__tmp10 = load i32, i32* @a32, align 4
  %__tmp11 = load i32, i32* @a33, align 4
  %__tmp12 = load i32, i32* @a34, align 4
  %__tmp13 = load i32, i32* @a35, align 4
  %__tmp14 = load i32, i32* @a36, align 4
  %__tmp15 = load i32, i32* @a37, align 4
  %__tmp16 = load i32, i32* @a38, align 4
  %__tmp17 = load i32, i32* @a39, align 4
  %__tmp18 = load i32, i32* @a8, align 4
  %__tmp19 = load i32, i32* @a9, align 4
  %__tmp20 = load i32, i32* @a10, align 4
  %__tmp21 = load i32, i32* @a11, align 4
  %__tmp22 = load i32, i32* @a12, align 4
  %__tmp23 = load i32, i32* @a13, align 4
  %__tmp24 = load i32, i32* @a14, align 4
  %__tmp25 = load i32, i32* @a15, align 4
  %__tmp26 = call i32 @testParam16(i32 %__tmp10, i32 %__tmp11, i32 %__tmp12, i32 %__tmp13, i32 %__tmp14, i32 %__tmp15, i32 %__tmp16, i32 %__tmp17, i32 %__tmp18, i32 %__tmp19, i32 %__tmp20, i32 %__tmp21, i32 %__tmp22, i32 %__tmp23, i32 %__tmp24, i32 %__tmp25)
  store i32 %__tmp26, i32* @a0, align 4
  %__tmp27 = load i32, i32* @a0, align 4
  call void @putint(i32 %__tmp27)
  %__tmp28 = load i32, i32* @a0, align 4
  %__tmp29 = load i32, i32* @a1, align 4
  %__tmp30 = load i32, i32* @a2, align 4
  %__tmp31 = load i32, i32* @a3, align 4
  %__tmp32 = load i32, i32* @a4, align 4
  %__tmp33 = load i32, i32* @a5, align 4
  %__tmp34 = load i32, i32* @a6, align 4
  %__tmp35 = load i32, i32* @a7, align 4
  %__tmp36 = load i32, i32* @a8, align 4
  %__tmp37 = load i32, i32* @a9, align 4
  %__tmp38 = load i32, i32* @a10, align 4
  %__tmp39 = load i32, i32* @a11, align 4
  %__tmp40 = load i32, i32* @a12, align 4
  %__tmp41 = load i32, i32* @a13, align 4
  %__tmp42 = load i32, i32* @a14, align 4
  %__tmp43 = load i32, i32* @a15, align 4
  %__tmp44 = load i32, i32* @a16, align 4
  %__tmp45 = load i32, i32* @a17, align 4
  %__tmp46 = load i32, i32* @a18, align 4
  %__tmp47 = load i32, i32* @a19, align 4
  %__tmp48 = load i32, i32* @a20, align 4
  %__tmp49 = load i32, i32* @a21, align 4
  %__tmp50 = load i32, i32* @a22, align 4
  %__tmp51 = load i32, i32* @a23, align 4
  %__tmp52 = load i32, i32* @a24, align 4
  %__tmp53 = load i32, i32* @a25, align 4
  %__tmp54 = load i32, i32* @a26, align 4
  %__tmp55 = load i32, i32* @a27, align 4
  %__tmp56 = load i32, i32* @a28, align 4
  %__tmp57 = load i32, i32* @a29, align 4
  %__tmp58 = load i32, i32* @a30, align 4
  %__tmp59 = load i32, i32* @a31, align 4
  %__tmp60 = call i32 @testParam32(i32 %__tmp28, i32 %__tmp29, i32 %__tmp30, i32 %__tmp31, i32 %__tmp32, i32 %__tmp33, i32 %__tmp34, i32 %__tmp35, i32 %__tmp36, i32 %__tmp37, i32 %__tmp38, i32 %__tmp39, i32 %__tmp40, i32 %__tmp41, i32 %__tmp42, i32 %__tmp43, i32 %__tmp44, i32 %__tmp45, i32 %__tmp46, i32 %__tmp47, i32 %__tmp48, i32 %__tmp49, i32 %__tmp50, i32 %__tmp51, i32 %__tmp52, i32 %__tmp53, i32 %__tmp54, i32 %__tmp55, i32 %__tmp56, i32 %__tmp57, i32 %__tmp58, i32 %__tmp59)
  store i32 %__tmp60, i32* @a0, align 4
  %__tmp61 = load i32, i32* @a0, align 4
  call void @putint(i32 %__tmp61)
  ret i32 0
}

