; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@n = global i32 0, align 4

define i32 @counting_sort(i32* %ini_arr, i32* %sorted_arr, i32 %n) {
counting_sortEntry:
  %ini_arr_arg = alloca i32*, align 4
  store i32* %ini_arr, i32** %ini_arr_arg, align 4
  %sorted_arr_arg = alloca i32*, align 4
  store i32* %sorted_arr, i32** %sorted_arr_arg, align 4
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %count_arr = alloca [10 x i32], align 4
  store [10 x i32] zeroinitializer, [10 x i32]* %count_arr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %k, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 10
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %k, align 4
  %__tmp3 = sext i32 %__tmp2 to i64
  %__tmp4 = getelementptr inbounds [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %__tmp3
  store i32 0, i32* %__tmp4, align 4
  %__tmp5 = load i32, i32* %k, align 4
  %__tmp6 = add i32 %__tmp5, 1
  store i32 %__tmp6, i32* %k, align 4
  br label %bb0
bb2:
  br label %bb3
bb3:
  %__tmp7 = load i32, i32* %i, align 4
  %__tmp8 = load i32, i32* %n_arg, align 4
  %__tmp9 = icmp slt i32 %__tmp7, %__tmp8
  br i1 %__tmp9, label %bb4, label %bb5
bb4:
  %__tmp10 = load i32*, i32** %ini_arr_arg, align 4
  %__tmp11 = load i32, i32* %i, align 4
  %__tmp12 = sext i32 %__tmp11 to i64
  %__tmp13 = getelementptr inbounds i32, i32* %__tmp10, i64 %__tmp12
  %__tmp14 = load i32, i32* %__tmp13, align 4
  %__tmp15 = sext i32 %__tmp14 to i64
  %__tmp16 = getelementptr inbounds [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %__tmp15
  %__tmp17 = load i32*, i32** %ini_arr_arg, align 4
  %__tmp18 = load i32, i32* %i, align 4
  %__tmp19 = sext i32 %__tmp18 to i64
  %__tmp20 = getelementptr inbounds i32, i32* %__tmp17, i64 %__tmp19
  %__tmp21 = load i32, i32* %__tmp20, align 4
  %__tmp22 = sext i32 %__tmp21 to i64
  %__tmp23 = getelementptr inbounds [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %__tmp22
  %__tmp24 = load i32, i32* %__tmp23, align 4
  %__tmp25 = add i32 %__tmp24, 1
  store i32 %__tmp25, i32* %__tmp16, align 4
  %__tmp26 = load i32, i32* %i, align 4
  %__tmp27 = add i32 %__tmp26, 1
  store i32 %__tmp27, i32* %i, align 4
  br label %bb3
bb5:
  store i32 1, i32* %k, align 4
  br label %bb6
bb6:
  %__tmp28 = load i32, i32* %k, align 4
  %__tmp29 = icmp slt i32 %__tmp28, 10
  br i1 %__tmp29, label %bb7, label %bb8
bb7:
  %__tmp30 = load i32, i32* %k, align 4
  %__tmp31 = sext i32 %__tmp30 to i64
  %__tmp32 = getelementptr inbounds [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %__tmp31
  %__tmp33 = load i32, i32* %k, align 4
  %__tmp34 = sext i32 %__tmp33 to i64
  %__tmp35 = getelementptr inbounds [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %__tmp34
  %__tmp36 = load i32, i32* %__tmp35, align 4
  %__tmp37 = load i32, i32* %k, align 4
  %__tmp38 = sub i32 %__tmp37, 1
  %__tmp39 = sext i32 %__tmp38 to i64
  %__tmp40 = getelementptr inbounds [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %__tmp39
  %__tmp41 = load i32, i32* %__tmp40, align 4
  %__tmp42 = add i32 %__tmp36, %__tmp41
  store i32 %__tmp42, i32* %__tmp32, align 4
  %__tmp43 = load i32, i32* %k, align 4
  %__tmp44 = add i32 %__tmp43, 1
  store i32 %__tmp44, i32* %k, align 4
  br label %bb6
bb8:
  %__tmp45 = load i32, i32* %n_arg, align 4
  store i32 %__tmp45, i32* %j, align 4
  br label %bb9
bb9:
  %__tmp46 = load i32, i32* %j, align 4
  %__tmp47 = icmp sgt i32 %__tmp46, 0
  br i1 %__tmp47, label %bb10, label %bb11
bb10:
  %__tmp48 = load i32*, i32** %ini_arr_arg, align 4
  %__tmp49 = load i32, i32* %j, align 4
  %__tmp50 = sub i32 %__tmp49, 1
  %__tmp51 = sext i32 %__tmp50 to i64
  %__tmp52 = getelementptr inbounds i32, i32* %__tmp48, i64 %__tmp51
  %__tmp53 = load i32, i32* %__tmp52, align 4
  %__tmp54 = sext i32 %__tmp53 to i64
  %__tmp55 = getelementptr inbounds [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %__tmp54
  %__tmp56 = load i32*, i32** %ini_arr_arg, align 4
  %__tmp57 = load i32, i32* %j, align 4
  %__tmp58 = sub i32 %__tmp57, 1
  %__tmp59 = sext i32 %__tmp58 to i64
  %__tmp60 = getelementptr inbounds i32, i32* %__tmp56, i64 %__tmp59
  %__tmp61 = load i32, i32* %__tmp60, align 4
  %__tmp62 = sext i32 %__tmp61 to i64
  %__tmp63 = getelementptr inbounds [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %__tmp62
  %__tmp64 = load i32, i32* %__tmp63, align 4
  %__tmp65 = sub i32 %__tmp64, 1
  store i32 %__tmp65, i32* %__tmp55, align 4
  %__tmp66 = load i32*, i32** %sorted_arr_arg, align 4
  %__tmp67 = load i32*, i32** %ini_arr_arg, align 4
  %__tmp68 = load i32, i32* %j, align 4
  %__tmp69 = sub i32 %__tmp68, 1
  %__tmp70 = sext i32 %__tmp69 to i64
  %__tmp71 = getelementptr inbounds i32, i32* %__tmp67, i64 %__tmp70
  %__tmp72 = load i32, i32* %__tmp71, align 4
  %__tmp73 = sext i32 %__tmp72 to i64
  %__tmp74 = getelementptr inbounds [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %__tmp73
  %__tmp75 = load i32, i32* %__tmp74, align 4
  %__tmp76 = sext i32 %__tmp75 to i64
  %__tmp77 = getelementptr inbounds i32, i32* %__tmp66, i64 %__tmp76
  %__tmp78 = load i32*, i32** %ini_arr_arg, align 4
  %__tmp79 = load i32, i32* %j, align 4
  %__tmp80 = sub i32 %__tmp79, 1
  %__tmp81 = sext i32 %__tmp80 to i64
  %__tmp82 = getelementptr inbounds i32, i32* %__tmp78, i64 %__tmp81
  %__tmp83 = load i32, i32* %__tmp82, align 4
  store i32 %__tmp83, i32* %__tmp77, align 4
  %__tmp84 = load i32, i32* %j, align 4
  %__tmp85 = sub i32 %__tmp84, 1
  store i32 %__tmp85, i32* %j, align 4
  br label %bb9
bb11:
  ret i32 0
}

define i32 @main() {
mainEntry:
  store i32 10, i32* @n, align 4
  %a = alloca [10 x i32], align 4
  store [10 x i32] zeroinitializer, [10 x i32]* %a, align 4
  %__tmp0 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 0
  store i32 4, i32* %__tmp0, align 4
  %__tmp1 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 1
  store i32 3, i32* %__tmp1, align 4
  %__tmp2 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 2
  store i32 9, i32* %__tmp2, align 4
  %__tmp3 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 3
  store i32 2, i32* %__tmp3, align 4
  %__tmp4 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 4
  store i32 0, i32* %__tmp4, align 4
  %__tmp5 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 5
  store i32 1, i32* %__tmp5, align 4
  %__tmp6 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 6
  store i32 6, i32* %__tmp6, align 4
  %__tmp7 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 7
  store i32 5, i32* %__tmp7, align 4
  %__tmp8 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 8
  store i32 7, i32* %__tmp8, align 4
  %__tmp9 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 9
  store i32 8, i32* %__tmp9, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %b = alloca [10 x i32], align 4
  store [10 x i32] zeroinitializer, [10 x i32]* %b, align 4
  %__tmp10 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %__tmp11 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i64 0, i64 0
  %__tmp12 = load i32, i32* @n, align 4
  %__tmp13 = call i32 @counting_sort(i32* %__tmp10, i32* %__tmp11, i32 %__tmp12)
  store i32 %__tmp13, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp14 = load i32, i32* %i, align 4
  %__tmp15 = load i32, i32* @n, align 4
  %__tmp16 = icmp slt i32 %__tmp14, %__tmp15
  br i1 %__tmp16, label %bb1, label %bb2
bb1:
  %tmp = alloca i32, align 4
  %__tmp17 = load i32, i32* %i, align 4
  %__tmp18 = sext i32 %__tmp17 to i64
  %__tmp19 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i64 0, i64 %__tmp18
  %__tmp20 = load i32, i32* %__tmp19, align 4
  store i32 %__tmp20, i32* %tmp, align 4
  %__tmp21 = load i32, i32* %tmp, align 4
  %__tmp22 = call i32 @putint(i32 %__tmp21)
  store i32 10, i32* %tmp, align 4
  %__tmp23 = load i32, i32* %tmp, align 4
  %__tmp24 = call i32 @putch(i32 %__tmp23)
  %__tmp25 = load i32, i32* %i, align 4
  %__tmp26 = add i32 %__tmp25, 1
  store i32 %__tmp26, i32* %i, align 4
  br label %bb0
bb2:
  ret i32 0
}

