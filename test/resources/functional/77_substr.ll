; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @MAX(i32 %a, i32 %b) {
MAXEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %b_arg = alloca i32, align 4
  store i32 %b, i32* %b_arg, align 4
  %__tmp0 = load i32, i32* %a_arg, align 4
  %__tmp1 = load i32, i32* %b_arg, align 4
  %__tmp2 = icmp eq i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb0, label %bb1
bb0:
  %__tmp3 = load i32, i32* %a_arg, align 4
  ret i32 %__tmp3
bb1:
  %__tmp4 = load i32, i32* %a_arg, align 4
  %__tmp5 = load i32, i32* %b_arg, align 4
  %__tmp6 = icmp sgt i32 %__tmp4, %__tmp5
  br i1 %__tmp6, label %bb3, label %bb4
bb3:
  %__tmp7 = load i32, i32* %a_arg, align 4
  ret i32 %__tmp7
bb4:
  %__tmp8 = load i32, i32* %b_arg, align 4
  ret i32 %__tmp8
bb5:
  br label %bb2
bb2:
  ret i32 0
}

define i32 @max_sum_nonadjacent(i32* %arr, i32 %n) {
max_sum_nonadjacentEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %temp = alloca [16 x i32], align 4
  store [16 x i32] zeroinitializer, [16 x i32]* %temp, align 4
  %__tmp0 = getelementptr inbounds [16 x i32], [16 x i32]* %temp, i64 0, i64 0
  %__tmp1 = load i32*, i32** %arr_arg, align 4
  %__tmp2 = getelementptr inbounds i32, i32* %__tmp1, i64 0
  %__tmp3 = load i32, i32* %__tmp2, align 4
  store i32 %__tmp3, i32* %__tmp0, align 4
  %__tmp4 = getelementptr inbounds [16 x i32], [16 x i32]* %temp, i64 0, i64 1
  %__tmp5 = load i32*, i32** %arr_arg, align 4
  %__tmp6 = getelementptr inbounds i32, i32* %__tmp5, i64 0
  %__tmp7 = load i32, i32* %__tmp6, align 4
  %__tmp8 = load i32*, i32** %arr_arg, align 4
  %__tmp9 = getelementptr inbounds i32, i32* %__tmp8, i64 1
  %__tmp10 = load i32, i32* %__tmp9, align 4
  %__tmp11 = call i32 @MAX(i32 %__tmp7, i32 %__tmp10)
  store i32 %__tmp11, i32* %__tmp4, align 4
  %i = alloca i32, align 4
  store i32 2, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp12 = load i32, i32* %i, align 4
  %__tmp13 = load i32, i32* %n_arg, align 4
  %__tmp14 = icmp slt i32 %__tmp12, %__tmp13
  br i1 %__tmp14, label %bb1, label %bb2
bb1:
  %__tmp15 = load i32, i32* %i, align 4
  %__tmp16 = sext i32 %__tmp15 to i64
  %__tmp17 = getelementptr inbounds [16 x i32], [16 x i32]* %temp, i64 0, i64 %__tmp16
  %__tmp18 = load i32, i32* %i, align 4
  %__tmp19 = sub i32 %__tmp18, 2
  %__tmp20 = sext i32 %__tmp19 to i64
  %__tmp21 = getelementptr inbounds [16 x i32], [16 x i32]* %temp, i64 0, i64 %__tmp20
  %__tmp22 = load i32, i32* %__tmp21, align 4
  %__tmp23 = load i32*, i32** %arr_arg, align 4
  %__tmp24 = load i32, i32* %i, align 4
  %__tmp25 = sext i32 %__tmp24 to i64
  %__tmp26 = getelementptr inbounds i32, i32* %__tmp23, i64 %__tmp25
  %__tmp27 = load i32, i32* %__tmp26, align 4
  %__tmp28 = add i32 %__tmp22, %__tmp27
  %__tmp29 = load i32, i32* %i, align 4
  %__tmp30 = sub i32 %__tmp29, 1
  %__tmp31 = sext i32 %__tmp30 to i64
  %__tmp32 = getelementptr inbounds [16 x i32], [16 x i32]* %temp, i64 0, i64 %__tmp31
  %__tmp33 = load i32, i32* %__tmp32, align 4
  %__tmp34 = call i32 @MAX(i32 %__tmp28, i32 %__tmp33)
  store i32 %__tmp34, i32* %__tmp17, align 4
  %__tmp35 = load i32, i32* %i, align 4
  %__tmp36 = add i32 %__tmp35, 1
  store i32 %__tmp36, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp37 = load i32, i32* %n_arg, align 4
  %__tmp38 = sub i32 %__tmp37, 1
  %__tmp39 = sext i32 %__tmp38 to i64
  %__tmp40 = getelementptr inbounds [16 x i32], [16 x i32]* %temp, i64 0, i64 %__tmp39
  %__tmp41 = load i32, i32* %__tmp40, align 4
  ret i32 %__tmp41
}

define i32 @longest_common_subseq(i32* %arr1, i32 %len1, i32* %arr2, i32 %len2) {
longest_common_subseqEntry:
  %arr1_arg = alloca i32*, align 4
  store i32* %arr1, i32** %arr1_arg, align 4
  %len1_arg = alloca i32, align 4
  store i32 %len1, i32* %len1_arg, align 4
  %arr2_arg = alloca i32*, align 4
  store i32* %arr2, i32** %arr2_arg, align 4
  %len2_arg = alloca i32, align 4
  store i32 %len2, i32* %len2_arg, align 4
  %p = alloca [16 x [16 x i32]], align 4
  store [16 x [16 x i32]] zeroinitializer, [16 x [16 x i32]]* %p, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* %len1_arg, align 4
  %__tmp2 = icmp sle i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  store i32 1, i32* %j, align 4
  br label %bb3
bb3:
  %__tmp3 = load i32, i32* %j, align 4
  %__tmp4 = load i32, i32* %len2_arg, align 4
  %__tmp5 = icmp sle i32 %__tmp3, %__tmp4
  br i1 %__tmp5, label %bb4, label %bb5
bb4:
  %__tmp6 = load i32*, i32** %arr1_arg, align 4
  %__tmp7 = load i32, i32* %i, align 4
  %__tmp8 = sub i32 %__tmp7, 1
  %__tmp9 = sext i32 %__tmp8 to i64
  %__tmp10 = getelementptr inbounds i32, i32* %__tmp6, i64 %__tmp9
  %__tmp11 = load i32, i32* %__tmp10, align 4
  %__tmp12 = load i32*, i32** %arr2_arg, align 4
  %__tmp13 = load i32, i32* %j, align 4
  %__tmp14 = sub i32 %__tmp13, 1
  %__tmp15 = sext i32 %__tmp14 to i64
  %__tmp16 = getelementptr inbounds i32, i32* %__tmp12, i64 %__tmp15
  %__tmp17 = load i32, i32* %__tmp16, align 4
  %__tmp18 = icmp eq i32 %__tmp11, %__tmp17
  br i1 %__tmp18, label %bb6, label %bb7
bb6:
  %__tmp19 = load i32, i32* %i, align 4
  %__tmp20 = sext i32 %__tmp19 to i64
  %__tmp21 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 %__tmp20
  %__tmp22 = load i32, i32* %j, align 4
  %__tmp23 = sext i32 %__tmp22 to i64
  %__tmp24 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp21, i64 0, i64 %__tmp23
  %__tmp25 = load i32, i32* %i, align 4
  %__tmp26 = sub i32 %__tmp25, 1
  %__tmp27 = sext i32 %__tmp26 to i64
  %__tmp28 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 %__tmp27
  %__tmp29 = load i32, i32* %j, align 4
  %__tmp30 = sub i32 %__tmp29, 1
  %__tmp31 = sext i32 %__tmp30 to i64
  %__tmp32 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp28, i64 0, i64 %__tmp31
  %__tmp33 = load i32, i32* %__tmp32, align 4
  %__tmp34 = add i32 %__tmp33, 1
  store i32 %__tmp34, i32* %__tmp24, align 4
  br label %bb8
bb7:
  %__tmp35 = load i32, i32* %i, align 4
  %__tmp36 = sext i32 %__tmp35 to i64
  %__tmp37 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 %__tmp36
  %__tmp38 = load i32, i32* %j, align 4
  %__tmp39 = sext i32 %__tmp38 to i64
  %__tmp40 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp37, i64 0, i64 %__tmp39
  %__tmp41 = load i32, i32* %i, align 4
  %__tmp42 = sub i32 %__tmp41, 1
  %__tmp43 = sext i32 %__tmp42 to i64
  %__tmp44 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 %__tmp43
  %__tmp45 = load i32, i32* %j, align 4
  %__tmp46 = sext i32 %__tmp45 to i64
  %__tmp47 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp44, i64 0, i64 %__tmp46
  %__tmp48 = load i32, i32* %__tmp47, align 4
  %__tmp49 = load i32, i32* %i, align 4
  %__tmp50 = sext i32 %__tmp49 to i64
  %__tmp51 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 %__tmp50
  %__tmp52 = load i32, i32* %j, align 4
  %__tmp53 = sub i32 %__tmp52, 1
  %__tmp54 = sext i32 %__tmp53 to i64
  %__tmp55 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp51, i64 0, i64 %__tmp54
  %__tmp56 = load i32, i32* %__tmp55, align 4
  %__tmp57 = call i32 @MAX(i32 %__tmp48, i32 %__tmp56)
  store i32 %__tmp57, i32* %__tmp40, align 4
  br label %bb8
bb8:
  %__tmp58 = load i32, i32* %j, align 4
  %__tmp59 = add i32 %__tmp58, 1
  store i32 %__tmp59, i32* %j, align 4
  br label %bb3
bb5:
  %__tmp60 = load i32, i32* %i, align 4
  %__tmp61 = add i32 %__tmp60, 1
  store i32 %__tmp61, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp62 = load i32, i32* %len1_arg, align 4
  %__tmp63 = sext i32 %__tmp62 to i64
  %__tmp64 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 %__tmp63
  %__tmp65 = load i32, i32* %len2_arg, align 4
  %__tmp66 = sext i32 %__tmp65 to i64
  %__tmp67 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp64, i64 0, i64 %__tmp66
  %__tmp68 = load i32, i32* %__tmp67, align 4
  ret i32 %__tmp68
}

define i32 @main() {
mainEntry:
  %A = alloca [15 x i32], align 4
  store [15 x i32] zeroinitializer, [15 x i32]* %A, align 4
  %__tmp0 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 0
  store i32 8, i32* %__tmp0, align 4
  %__tmp1 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 1
  store i32 7, i32* %__tmp1, align 4
  %__tmp2 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 2
  store i32 4, i32* %__tmp2, align 4
  %__tmp3 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 3
  store i32 1, i32* %__tmp3, align 4
  %__tmp4 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 4
  store i32 2, i32* %__tmp4, align 4
  %__tmp5 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 5
  store i32 7, i32* %__tmp5, align 4
  %__tmp6 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 6
  store i32 0, i32* %__tmp6, align 4
  %__tmp7 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 7
  store i32 1, i32* %__tmp7, align 4
  %__tmp8 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 8
  store i32 9, i32* %__tmp8, align 4
  %__tmp9 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 9
  store i32 3, i32* %__tmp9, align 4
  %__tmp10 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 10
  store i32 4, i32* %__tmp10, align 4
  %__tmp11 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 11
  store i32 8, i32* %__tmp11, align 4
  %__tmp12 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 12
  store i32 3, i32* %__tmp12, align 4
  %__tmp13 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 13
  store i32 7, i32* %__tmp13, align 4
  %__tmp14 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 14
  store i32 0, i32* %__tmp14, align 4
  %B = alloca [13 x i32], align 4
  store [13 x i32] zeroinitializer, [13 x i32]* %B, align 4
  %__tmp15 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 0
  store i32 3, i32* %__tmp15, align 4
  %__tmp16 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 1
  store i32 9, i32* %__tmp16, align 4
  %__tmp17 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 2
  store i32 7, i32* %__tmp17, align 4
  %__tmp18 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 3
  store i32 1, i32* %__tmp18, align 4
  %__tmp19 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 4
  store i32 4, i32* %__tmp19, align 4
  %__tmp20 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 5
  store i32 2, i32* %__tmp20, align 4
  %__tmp21 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 6
  store i32 4, i32* %__tmp21, align 4
  %__tmp22 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 7
  store i32 3, i32* %__tmp22, align 4
  %__tmp23 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 8
  store i32 6, i32* %__tmp23, align 4
  %__tmp24 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 9
  store i32 8, i32* %__tmp24, align 4
  %__tmp25 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 10
  store i32 0, i32* %__tmp25, align 4
  %__tmp26 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 11
  store i32 1, i32* %__tmp26, align 4
  %__tmp27 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 12
  store i32 5, i32* %__tmp27, align 4
  %An = alloca i32, align 4
  %Bn = alloca i32, align 4
  %__tmp28 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 0
  %__tmp29 = call i32 @max_sum_nonadjacent(i32* %__tmp28, i32 15)
  call void @putint(i32 %__tmp29)
  call void @putch(i32 10)
  %__tmp30 = getelementptr inbounds [15 x i32], [15 x i32]* %A, i64 0, i64 0
  %__tmp31 = getelementptr inbounds [13 x i32], [13 x i32]* %B, i64 0, i64 0
  %__tmp32 = call i32 @longest_common_subseq(i32* %__tmp30, i32 15, i32* %__tmp31, i32 13)
  call void @putint(i32 %__tmp32)
  call void @putch(i32 10)
  ret i32 0
}

