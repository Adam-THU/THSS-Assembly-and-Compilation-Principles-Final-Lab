; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@n = global i32 0, align 4

define i32 @main() {
mainEntry:
  %a0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %a3 = alloca i32, align 4
  %a4 = alloca i32, align 4
  %a5 = alloca i32, align 4
  %a6 = alloca i32, align 4
  %a7 = alloca i32, align 4
  %a8 = alloca i32, align 4
  %a9 = alloca i32, align 4
  %a10 = alloca i32, align 4
  %a11 = alloca i32, align 4
  %a12 = alloca i32, align 4
  %a13 = alloca i32, align 4
  %a14 = alloca i32, align 4
  %a15 = alloca i32, align 4
  %a16 = alloca i32, align 4
  %a17 = alloca i32, align 4
  %a18 = alloca i32, align 4
  %a19 = alloca i32, align 4
  %a20 = alloca i32, align 4
  %a21 = alloca i32, align 4
  %a22 = alloca i32, align 4
  %a23 = alloca i32, align 4
  %a24 = alloca i32, align 4
  %a25 = alloca i32, align 4
  %a26 = alloca i32, align 4
  %a27 = alloca i32, align 4
  %a28 = alloca i32, align 4
  %a29 = alloca i32, align 4
  %b = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %b, align 4
  br label %bb0
bb0:
  %__tmp1 = load i32, i32* %b, align 4
  %__tmp2 = icmp eq i32 %__tmp1, 5
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = load i32, i32* %b, align 4
  %__tmp4 = add i32 %__tmp3, 1
  store i32 %__tmp4, i32* %b, align 4
  br label %bb0
bb2:
  store i32 0, i32* %a0, align 4
  %__tmp5 = load i32, i32* %a0, align 4
  %__tmp6 = add i32 %__tmp5, 1
  store i32 %__tmp6, i32* %a1, align 4
  %__tmp7 = load i32, i32* %a1, align 4
  %__tmp8 = add i32 %__tmp7, 1
  store i32 %__tmp8, i32* %a2, align 4
  %__tmp9 = load i32, i32* %a2, align 4
  %__tmp10 = add i32 %__tmp9, 1
  store i32 %__tmp10, i32* %a3, align 4
  %__tmp11 = load i32, i32* %a3, align 4
  %__tmp12 = add i32 %__tmp11, 1
  store i32 %__tmp12, i32* %a4, align 4
  %__tmp13 = load i32, i32* %a4, align 4
  %__tmp14 = add i32 %__tmp13, 1
  store i32 %__tmp14, i32* %a5, align 4
  %__tmp15 = load i32, i32* %a5, align 4
  %__tmp16 = add i32 %__tmp15, 1
  store i32 %__tmp16, i32* %a6, align 4
  %__tmp17 = load i32, i32* %a6, align 4
  %__tmp18 = add i32 %__tmp17, 1
  store i32 %__tmp18, i32* %a7, align 4
  %__tmp19 = load i32, i32* %a7, align 4
  %__tmp20 = add i32 %__tmp19, 1
  store i32 %__tmp20, i32* %a8, align 4
  %__tmp21 = load i32, i32* %a8, align 4
  %__tmp22 = add i32 %__tmp21, 1
  store i32 %__tmp22, i32* %a9, align 4
  %__tmp23 = load i32, i32* %a9, align 4
  %__tmp24 = add i32 %__tmp23, 1
  store i32 %__tmp24, i32* %a10, align 4
  %__tmp25 = load i32, i32* %a10, align 4
  %__tmp26 = add i32 %__tmp25, 1
  store i32 %__tmp26, i32* %a11, align 4
  %__tmp27 = load i32, i32* %a11, align 4
  %__tmp28 = add i32 %__tmp27, 1
  store i32 %__tmp28, i32* %a12, align 4
  %__tmp29 = load i32, i32* %a12, align 4
  %__tmp30 = add i32 %__tmp29, 1
  store i32 %__tmp30, i32* %a13, align 4
  %__tmp31 = load i32, i32* %a13, align 4
  %__tmp32 = add i32 %__tmp31, 1
  store i32 %__tmp32, i32* %a14, align 4
  %__tmp33 = load i32, i32* %a14, align 4
  %__tmp34 = add i32 %__tmp33, 1
  store i32 %__tmp34, i32* %a15, align 4
  %__tmp35 = load i32, i32* %a15, align 4
  %__tmp36 = add i32 %__tmp35, 1
  store i32 %__tmp36, i32* %a16, align 4
  %__tmp37 = load i32, i32* %a16, align 4
  %__tmp38 = add i32 %__tmp37, 1
  store i32 %__tmp38, i32* %a17, align 4
  %__tmp39 = load i32, i32* %a17, align 4
  %__tmp40 = add i32 %__tmp39, 1
  store i32 %__tmp40, i32* %a18, align 4
  %__tmp41 = load i32, i32* %a18, align 4
  %__tmp42 = add i32 %__tmp41, 1
  store i32 %__tmp42, i32* %a19, align 4
  %__tmp43 = load i32, i32* %a19, align 4
  %__tmp44 = add i32 %__tmp43, 1
  store i32 %__tmp44, i32* %a20, align 4
  %__tmp45 = load i32, i32* %a20, align 4
  %__tmp46 = add i32 %__tmp45, 1
  store i32 %__tmp46, i32* %a21, align 4
  %__tmp47 = load i32, i32* %a21, align 4
  %__tmp48 = add i32 %__tmp47, 1
  store i32 %__tmp48, i32* %a22, align 4
  %__tmp49 = load i32, i32* %a22, align 4
  %__tmp50 = add i32 %__tmp49, 1
  store i32 %__tmp50, i32* %a23, align 4
  %__tmp51 = load i32, i32* %a23, align 4
  %__tmp52 = add i32 %__tmp51, 1
  store i32 %__tmp52, i32* %a24, align 4
  %__tmp53 = load i32, i32* %a24, align 4
  %__tmp54 = add i32 %__tmp53, 1
  store i32 %__tmp54, i32* %a25, align 4
  %__tmp55 = load i32, i32* %a25, align 4
  %__tmp56 = add i32 %__tmp55, 1
  store i32 %__tmp56, i32* %a26, align 4
  %__tmp57 = load i32, i32* %a26, align 4
  %__tmp58 = add i32 %__tmp57, 1
  store i32 %__tmp58, i32* %a27, align 4
  %__tmp59 = load i32, i32* %a27, align 4
  %__tmp60 = add i32 %__tmp59, 1
  store i32 %__tmp60, i32* %a28, align 4
  %__tmp61 = load i32, i32* %a28, align 4
  %__tmp62 = add i32 %__tmp61, 1
  store i32 %__tmp62, i32* %a29, align 4
  %t = alloca i32, align 4
  %__tmp63 = load i32, i32* %a0, align 4
  %__tmp64 = call i32 @putint(i32 %__tmp63)
  %__tmp65 = load i32, i32* %a1, align 4
  %__tmp66 = call i32 @putint(i32 %__tmp65)
  %__tmp67 = load i32, i32* %a2, align 4
  %__tmp68 = call i32 @putint(i32 %__tmp67)
  %__tmp69 = load i32, i32* %a3, align 4
  %__tmp70 = call i32 @putint(i32 %__tmp69)
  %__tmp71 = load i32, i32* %a4, align 4
  %__tmp72 = call i32 @putint(i32 %__tmp71)
  %__tmp73 = load i32, i32* %a5, align 4
  %__tmp74 = call i32 @putint(i32 %__tmp73)
  %__tmp75 = load i32, i32* %a6, align 4
  %__tmp76 = call i32 @putint(i32 %__tmp75)
  %__tmp77 = load i32, i32* %a7, align 4
  %__tmp78 = call i32 @putint(i32 %__tmp77)
  %__tmp79 = load i32, i32* %a8, align 4
  %__tmp80 = call i32 @putint(i32 %__tmp79)
  %__tmp81 = load i32, i32* %a9, align 4
  %__tmp82 = call i32 @putint(i32 %__tmp81)
  %__tmp83 = load i32, i32* %a10, align 4
  %__tmp84 = call i32 @putint(i32 %__tmp83)
  %__tmp85 = load i32, i32* %a11, align 4
  %__tmp86 = call i32 @putint(i32 %__tmp85)
  %__tmp87 = load i32, i32* %a12, align 4
  %__tmp88 = call i32 @putint(i32 %__tmp87)
  %__tmp89 = load i32, i32* %a13, align 4
  %__tmp90 = call i32 @putint(i32 %__tmp89)
  %__tmp91 = load i32, i32* %a14, align 4
  %__tmp92 = call i32 @putint(i32 %__tmp91)
  %__tmp93 = load i32, i32* %a15, align 4
  %__tmp94 = call i32 @putint(i32 %__tmp93)
  %__tmp95 = load i32, i32* %a16, align 4
  %__tmp96 = call i32 @putint(i32 %__tmp95)
  %__tmp97 = load i32, i32* %a17, align 4
  %__tmp98 = call i32 @putint(i32 %__tmp97)
  %__tmp99 = load i32, i32* %a18, align 4
  %__tmp100 = call i32 @putint(i32 %__tmp99)
  %__tmp101 = load i32, i32* %a19, align 4
  %__tmp102 = call i32 @putint(i32 %__tmp101)
  %__tmp103 = load i32, i32* %a20, align 4
  %__tmp104 = call i32 @putint(i32 %__tmp103)
  %__tmp105 = load i32, i32* %a21, align 4
  %__tmp106 = call i32 @putint(i32 %__tmp105)
  %__tmp107 = load i32, i32* %a22, align 4
  %__tmp108 = call i32 @putint(i32 %__tmp107)
  %__tmp109 = load i32, i32* %a23, align 4
  %__tmp110 = call i32 @putint(i32 %__tmp109)
  %__tmp111 = load i32, i32* %a24, align 4
  %__tmp112 = call i32 @putint(i32 %__tmp111)
  %__tmp113 = load i32, i32* %a25, align 4
  %__tmp114 = call i32 @putint(i32 %__tmp113)
  %__tmp115 = load i32, i32* %a26, align 4
  %__tmp116 = call i32 @putint(i32 %__tmp115)
  %__tmp117 = load i32, i32* %a27, align 4
  %__tmp118 = call i32 @putint(i32 %__tmp117)
  %__tmp119 = load i32, i32* %a28, align 4
  %__tmp120 = call i32 @putint(i32 %__tmp119)
  %__tmp121 = load i32, i32* %a29, align 4
  %__tmp122 = call i32 @putint(i32 %__tmp121)
  %newline = alloca i32, align 4
  store i32 10, i32* %newline, align 4
  %__tmp123 = load i32, i32* %newline, align 4
  %__tmp124 = call i32 @putch(i32 %__tmp123)
  %__tmp125 = load i32, i32* %b, align 4
  %__tmp126 = call i32 @putint(i32 %__tmp125)
  %__tmp127 = load i32, i32* %newline, align 4
  %__tmp128 = call i32 @putch(i32 %__tmp127)
  %__tmp129 = load i32, i32* %a25, align 4
  ret i32 %__tmp129
}

