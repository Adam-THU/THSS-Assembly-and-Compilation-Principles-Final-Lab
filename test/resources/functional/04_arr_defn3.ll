; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @main() {
mainEntry:
  %a = alloca [4 x [2 x i32]], align 4
  store [4 x [2 x i32]] zeroinitializer, [4 x [2 x i32]]* %a, align 4
  %b = alloca [4 x [2 x i32]], align 4
  store [4 x [2 x i32]] zeroinitializer, [4 x [2 x i32]]* %b, align 4
  %__tmp0 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 0
  %__tmp1 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp0, i64 0, i64 0
  store i32 1, i32* %__tmp1, align 4
  %__tmp2 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 0
  %__tmp3 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp2, i64 0, i64 1
  store i32 2, i32* %__tmp3, align 4
  %__tmp4 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 1
  %__tmp5 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp4, i64 0, i64 0
  store i32 3, i32* %__tmp5, align 4
  %__tmp6 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 1
  %__tmp7 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp6, i64 0, i64 1
  store i32 4, i32* %__tmp7, align 4
  %__tmp8 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 2
  %__tmp9 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp8, i64 0, i64 0
  store i32 5, i32* %__tmp9, align 4
  %__tmp10 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 2
  %__tmp11 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp10, i64 0, i64 1
  store i32 6, i32* %__tmp11, align 4
  %__tmp12 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 3
  %__tmp13 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp12, i64 0, i64 0
  store i32 7, i32* %__tmp13, align 4
  %__tmp14 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 3
  %__tmp15 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp14, i64 0, i64 1
  store i32 8, i32* %__tmp15, align 4
  %c = alloca [4 x [2 x i32]], align 4
  store [4 x [2 x i32]] zeroinitializer, [4 x [2 x i32]]* %c, align 4
  %__tmp16 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 0
  %__tmp17 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp16, i64 0, i64 0
  store i32 1, i32* %__tmp17, align 4
  %__tmp18 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 0
  %__tmp19 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp18, i64 0, i64 1
  store i32 2, i32* %__tmp19, align 4
  %__tmp20 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 1
  %__tmp21 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp20, i64 0, i64 0
  store i32 3, i32* %__tmp21, align 4
  %__tmp22 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 1
  %__tmp23 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp22, i64 0, i64 1
  store i32 4, i32* %__tmp23, align 4
  %__tmp24 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 2
  %__tmp25 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp24, i64 0, i64 0
  store i32 5, i32* %__tmp25, align 4
  %__tmp26 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 2
  %__tmp27 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp26, i64 0, i64 1
  store i32 6, i32* %__tmp27, align 4
  %__tmp28 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 3
  %__tmp29 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp28, i64 0, i64 0
  store i32 7, i32* %__tmp29, align 4
  %__tmp30 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 3
  %__tmp31 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp30, i64 0, i64 1
  store i32 8, i32* %__tmp31, align 4
  %d = alloca [4 x [2 x i32]], align 4
  store [4 x [2 x i32]] zeroinitializer, [4 x [2 x i32]]* %d, align 4
  %__tmp32 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 0
  %__tmp33 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp32, i64 0, i64 0
  store i32 1, i32* %__tmp33, align 4
  %__tmp34 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 0
  %__tmp35 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp34, i64 0, i64 1
  store i32 2, i32* %__tmp35, align 4
  %__tmp36 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 1
  %__tmp37 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp36, i64 0, i64 0
  store i32 3, i32* %__tmp37, align 4
  %__tmp38 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 2
  %__tmp39 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp38, i64 0, i64 0
  store i32 5, i32* %__tmp39, align 4
  %__tmp40 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 3
  %__tmp41 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp40, i64 0, i64 0
  store i32 7, i32* %__tmp41, align 4
  %__tmp42 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 3
  %__tmp43 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp42, i64 0, i64 1
  store i32 8, i32* %__tmp43, align 4
  %e = alloca [4 x [2 x i32]], align 4
  store [4 x [2 x i32]] zeroinitializer, [4 x [2 x i32]]* %e, align 4
  %__tmp44 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 2
  %__tmp45 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp44, i64 0, i64 1
  %__tmp46 = load i32, i32* %__tmp45, align 4
  %__tmp47 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 0
  %__tmp48 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp47, i64 0, i64 0
  store i32 %__tmp46, i32* %__tmp48, align 4
  %__tmp49 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 2
  %__tmp50 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp49, i64 0, i64 1
  %__tmp51 = load i32, i32* %__tmp50, align 4
  %__tmp52 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 0
  %__tmp53 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp52, i64 0, i64 1
  store i32 %__tmp51, i32* %__tmp53, align 4
  %__tmp54 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 1
  %__tmp55 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp54, i64 0, i64 0
  store i32 3, i32* %__tmp55, align 4
  %__tmp56 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 1
  %__tmp57 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp56, i64 0, i64 1
  store i32 4, i32* %__tmp57, align 4
  %__tmp58 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 2
  %__tmp59 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp58, i64 0, i64 0
  store i32 5, i32* %__tmp59, align 4
  %__tmp60 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 2
  %__tmp61 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp60, i64 0, i64 1
  store i32 6, i32* %__tmp61, align 4
  %__tmp62 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 3
  %__tmp63 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp62, i64 0, i64 0
  store i32 7, i32* %__tmp63, align 4
  %__tmp64 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 3
  %__tmp65 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp64, i64 0, i64 1
  store i32 8, i32* %__tmp65, align 4
  %__tmp66 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 3
  %__tmp67 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp66, i64 0, i64 1
  %__tmp68 = load i32, i32* %__tmp67, align 4
  %__tmp69 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 0
  %__tmp70 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp69, i64 0, i64 0
  %__tmp71 = load i32, i32* %__tmp70, align 4
  %__tmp72 = add i32 %__tmp68, %__tmp71
  %__tmp73 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 0
  %__tmp74 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp73, i64 0, i64 1
  %__tmp75 = load i32, i32* %__tmp74, align 4
  %__tmp76 = add i32 %__tmp72, %__tmp75
  %__tmp77 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 2
  %__tmp78 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp77, i64 0, i64 0
  %__tmp79 = load i32, i32* %__tmp78, align 4
  %__tmp80 = add i32 %__tmp76, %__tmp79
  ret i32 %__tmp80
}

