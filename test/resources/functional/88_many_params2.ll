; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @func(i32 %a, [59 x i32]* %b, i32 %c, i32* %d, i32 %e, i32 %f, i32* %g, i32 %h, i32 %i) {
funcEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %b_arg = alloca [59 x i32]*, align 4
  store [59 x i32]* %b, [59 x i32]** %b_arg, align 4
  %c_arg = alloca i32, align 4
  store i32 %c, i32* %c_arg, align 4
  %d_arg = alloca i32*, align 4
  store i32* %d, i32** %d_arg, align 4
  %e_arg = alloca i32, align 4
  store i32 %e, i32* %e_arg, align 4
  %f_arg = alloca i32, align 4
  store i32 %f, i32* %f_arg, align 4
  %g_arg = alloca i32*, align 4
  store i32* %g, i32** %g_arg, align 4
  %h_arg = alloca i32, align 4
  store i32 %h, i32* %h_arg, align 4
  %i_arg = alloca i32, align 4
  store i32 %i, i32* %i_arg, align 4
  %index = alloca i32, align 4
  store i32 0, i32* %index, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %index, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 10
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load [59 x i32]*, [59 x i32]** %b_arg, align 4
  %__tmp3 = load i32, i32* %a_arg, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp2, i64 %__tmp4
  %__tmp6 = load i32, i32* %index, align 4
  %__tmp7 = sext i32 %__tmp6 to i64
  %__tmp8 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp5, i64 0, i64 %__tmp7
  %__tmp9 = load i32, i32* %__tmp8, align 4
  %__tmp10 = call i32 @putint(i32 %__tmp9)
  %__tmp11 = load i32, i32* %index, align 4
  %__tmp12 = add i32 %__tmp11, 1
  store i32 %__tmp12, i32* %index, align 4
  br label %bb0
bb2:
  %__tmp13 = call i32 @putch(i32 10)
  %__tmp14 = load i32*, i32** %d_arg, align 4
  %__tmp15 = load i32, i32* %c_arg, align 4
  %__tmp16 = sext i32 %__tmp15 to i64
  %__tmp17 = getelementptr inbounds i32, i32* %__tmp14, i64 %__tmp16
  %__tmp18 = load i32, i32* %__tmp17, align 4
  %__tmp19 = call i32 @putint(i32 %__tmp18)
  %__tmp20 = call i32 @putch(i32 10)
  br label %bb3
bb3:
  %__tmp21 = load i32, i32* %i_arg, align 4
  %__tmp22 = icmp slt i32 %__tmp21, 10
  br i1 %__tmp22, label %bb4, label %bb5
bb4:
  %__tmp23 = load i32*, i32** %g_arg, align 4
  %__tmp24 = load i32, i32* %i_arg, align 4
  %__tmp25 = sext i32 %__tmp24 to i64
  %__tmp26 = getelementptr inbounds i32, i32* %__tmp23, i64 %__tmp25
  %__tmp27 = load i32, i32* %h_arg, align 4
  %__tmp28 = mul i32 %__tmp27, 128875
  %__tmp29 = srem i32 %__tmp28, 3724
  store i32 %__tmp29, i32* %__tmp26, align 4
  %__tmp30 = load i32, i32* %i_arg, align 4
  %__tmp31 = add i32 %__tmp30, 1
  store i32 %__tmp31, i32* %i_arg, align 4
  %__tmp32 = load i32, i32* %h_arg, align 4
  %__tmp33 = add i32 %__tmp32, 7
  store i32 %__tmp33, i32* %h_arg, align 4
  br label %bb3
bb5:
  %__tmp34 = load i32, i32* %e_arg, align 4
  %__tmp35 = load i32, i32* %f_arg, align 4
  %__tmp36 = add i32 %__tmp34, %__tmp35
  ret i32 %__tmp36
}

define i32 @main() {
mainEntry:
  %a = alloca [61 x [67 x i32]], align 4
  store [61 x [67 x i32]] zeroinitializer, [61 x [67 x i32]]* %a, align 4
  %b = alloca [53 x [59 x i32]], align 4
  store [53 x [59 x i32]] zeroinitializer, [53 x [59 x i32]]* %b, align 4
  %__tmp0 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %a, i64 0, i64 17
  %__tmp1 = getelementptr inbounds [67 x i32], [67 x i32]* %__tmp0, i64 0, i64 1
  store i32 6, i32* %__tmp1, align 4
  %__tmp2 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %a, i64 0, i64 17
  %__tmp3 = getelementptr inbounds [67 x i32], [67 x i32]* %__tmp2, i64 0, i64 3
  store i32 7, i32* %__tmp3, align 4
  %__tmp4 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %a, i64 0, i64 17
  %__tmp5 = getelementptr inbounds [67 x i32], [67 x i32]* %__tmp4, i64 0, i64 4
  store i32 4, i32* %__tmp5, align 4
  %__tmp6 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %a, i64 0, i64 17
  %__tmp7 = getelementptr inbounds [67 x i32], [67 x i32]* %__tmp6, i64 0, i64 7
  store i32 9, i32* %__tmp7, align 4
  %__tmp8 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %a, i64 0, i64 17
  %__tmp9 = getelementptr inbounds [67 x i32], [67 x i32]* %__tmp8, i64 0, i64 11
  store i32 11, i32* %__tmp9, align 4
  %__tmp10 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 6
  %__tmp11 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp10, i64 0, i64 1
  store i32 1, i32* %__tmp11, align 4
  %__tmp12 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 6
  %__tmp13 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp12, i64 0, i64 2
  store i32 2, i32* %__tmp13, align 4
  %__tmp14 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 6
  %__tmp15 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp14, i64 0, i64 3
  store i32 3, i32* %__tmp15, align 4
  %__tmp16 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 6
  %__tmp17 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp16, i64 0, i64 9
  store i32 9, i32* %__tmp17, align 4
  %ret = alloca i32, align 4
  %__tmp18 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %a, i64 0, i64 17
  %__tmp19 = getelementptr inbounds [67 x i32], [67 x i32]* %__tmp18, i64 0, i64 1
  %__tmp20 = load i32, i32* %__tmp19, align 4
  %__tmp21 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 0
  %__tmp22 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %a, i64 0, i64 17
  %__tmp23 = getelementptr inbounds [67 x i32], [67 x i32]* %__tmp22, i64 0, i64 3
  %__tmp24 = load i32, i32* %__tmp23, align 4
  %__tmp25 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %a, i64 0, i64 17
  %__tmp26 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 6
  %__tmp27 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp26, i64 0, i64 3
  %__tmp28 = load i32, i32* %__tmp27, align 4
  %__tmp29 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 6
  %__tmp30 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp29, i64 0, i64 0
  %__tmp31 = load i32, i32* %__tmp30, align 4
  %__tmp32 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 6
  %__tmp33 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 34
  %__tmp34 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp33, i64 0, i64 4
  %__tmp35 = load i32, i32* %__tmp34, align 4
  %__tmp36 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 51
  %__tmp37 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp36, i64 0, i64 18
  %__tmp38 = load i32, i32* %__tmp37, align 4
  %__tmp39 = call i32 @func(i32 %__tmp20, [59 x i32]* %__tmp21, i32 %__tmp24, [67 x i32]* %__tmp25, i32 %__tmp28, i32 %__tmp31, [59 x i32]* %__tmp32, i32 %__tmp35, i32 %__tmp38)
  %__tmp40 = mul i32 %__tmp39, 3
  store i32 %__tmp40, i32* %ret, align 4
  br label %bb0
bb0:
  %__tmp41 = load i32, i32* %ret, align 4
  %__tmp42 = icmp sge i32 %__tmp41, 0
  br i1 %__tmp42, label %bb1, label %bb2
bb1:
  %__tmp43 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %b, i64 0, i64 6
  %__tmp44 = load i32, i32* %ret, align 4
  %__tmp45 = sext i32 %__tmp44 to i64
  %__tmp46 = getelementptr inbounds [59 x i32], [59 x i32]* %__tmp43, i64 0, i64 %__tmp45
  %__tmp47 = load i32, i32* %__tmp46, align 4
  %__tmp48 = call i32 @putint(i32 %__tmp47)
  %__tmp49 = call i32 @putch(i32 32)
  %__tmp50 = load i32, i32* %ret, align 4
  %__tmp51 = sub i32 %__tmp50, 1
  store i32 %__tmp51, i32* %ret, align 4
  br label %bb0
bb2:
  %__tmp52 = call i32 @putch(i32 10)
  ret i32 0
}

