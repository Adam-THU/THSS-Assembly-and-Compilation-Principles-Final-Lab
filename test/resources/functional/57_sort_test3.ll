; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@n = global i32 0, align 4

define i32 @QuickSort(i32* %arr, i32 %low, i32 %high) {
QuickSortEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %low_arg = alloca i32, align 4
  store i32 %low, i32* %low_arg, align 4
  %high_arg = alloca i32, align 4
  store i32 %high, i32* %high_arg, align 4
  %__tmp0 = load i32, i32* %low_arg, align 4
  %__tmp1 = load i32, i32* %high_arg, align 4
  %__tmp2 = icmp slt i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb0, label %bb1
bb0:
  %i = alloca i32, align 4
  %__tmp3 = load i32, i32* %low_arg, align 4
  store i32 %__tmp3, i32* %i, align 4
  %j = alloca i32, align 4
  %__tmp4 = load i32, i32* %high_arg, align 4
  store i32 %__tmp4, i32* %j, align 4
  %k = alloca i32, align 4
  %__tmp5 = load i32*, i32** %arr_arg, align 4
  %__tmp6 = load i32, i32* %low_arg, align 4
  %__tmp7 = sext i32 %__tmp6 to i64
  %__tmp8 = getelementptr inbounds i32, i32* %__tmp5, i64 %__tmp7
  %__tmp9 = load i32, i32* %__tmp8, align 4
  store i32 %__tmp9, i32* %k, align 4
  br label %bb3
bb3:
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = load i32, i32* %j, align 4
  %__tmp12 = icmp slt i32 %__tmp10, %__tmp11
  br i1 %__tmp12, label %bb4, label %bb5
bb4:
  br label %bb6
bb6:
  %__tmp13 = load i32, i32* %i, align 4
  %__tmp14 = load i32, i32* %j, align 4
  %__tmp15 = icmp slt i32 %__tmp13, %__tmp14
  br i1 %__tmp15, label %bb9, label %bb11
bb11:
  br label %bb10
bb9:
  %__tmp16 = load i32*, i32** %arr_arg, align 4
  %__tmp17 = load i32, i32* %j, align 4
  %__tmp18 = sext i32 %__tmp17 to i64
  %__tmp19 = getelementptr inbounds i32, i32* %__tmp16, i64 %__tmp18
  %__tmp20 = load i32, i32* %__tmp19, align 4
  %__tmp21 = load i32, i32* %k, align 4
  %__tmp22 = sub i32 %__tmp21, 1
  %__tmp23 = icmp sgt i32 %__tmp20, %__tmp22
  br label %bb10
bb10:
  %__tmp24 = phi i1 [ 0, %bb11 ], [ %__tmp23, %bb9 ]
  br i1 %__tmp24, label %bb7, label %bb8
bb7:
  %__tmp25 = load i32, i32* %j, align 4
  %__tmp26 = sub i32 %__tmp25, 1
  store i32 %__tmp26, i32* %j, align 4
  br label %bb6
bb8:
  %__tmp27 = load i32, i32* %i, align 4
  %__tmp28 = load i32, i32* %j, align 4
  %__tmp29 = icmp slt i32 %__tmp27, %__tmp28
  br i1 %__tmp29, label %bb12, label %bb13
bb12:
  %__tmp30 = load i32*, i32** %arr_arg, align 4
  %__tmp31 = load i32, i32* %i, align 4
  %__tmp32 = sext i32 %__tmp31 to i64
  %__tmp33 = getelementptr inbounds i32, i32* %__tmp30, i64 %__tmp32
  %__tmp34 = load i32*, i32** %arr_arg, align 4
  %__tmp35 = load i32, i32* %j, align 4
  %__tmp36 = sext i32 %__tmp35 to i64
  %__tmp37 = getelementptr inbounds i32, i32* %__tmp34, i64 %__tmp36
  %__tmp38 = load i32, i32* %__tmp37, align 4
  store i32 %__tmp38, i32* %__tmp33, align 4
  %__tmp39 = load i32, i32* %i, align 4
  %__tmp40 = add i32 %__tmp39, 1
  store i32 %__tmp40, i32* %i, align 4
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %__tmp41 = load i32, i32* %i, align 4
  %__tmp42 = load i32, i32* %j, align 4
  %__tmp43 = icmp slt i32 %__tmp41, %__tmp42
  br i1 %__tmp43, label %bb18, label %bb20
bb20:
  br label %bb19
bb18:
  %__tmp44 = load i32*, i32** %arr_arg, align 4
  %__tmp45 = load i32, i32* %i, align 4
  %__tmp46 = sext i32 %__tmp45 to i64
  %__tmp47 = getelementptr inbounds i32, i32* %__tmp44, i64 %__tmp46
  %__tmp48 = load i32, i32* %__tmp47, align 4
  %__tmp49 = load i32, i32* %k, align 4
  %__tmp50 = icmp slt i32 %__tmp48, %__tmp49
  br label %bb19
bb19:
  %__tmp51 = phi i1 [ 0, %bb20 ], [ %__tmp50, %bb18 ]
  br i1 %__tmp51, label %bb16, label %bb17
bb16:
  %__tmp52 = load i32, i32* %i, align 4
  %__tmp53 = add i32 %__tmp52, 1
  store i32 %__tmp53, i32* %i, align 4
  br label %bb15
bb17:
  %__tmp54 = load i32, i32* %i, align 4
  %__tmp55 = load i32, i32* %j, align 4
  %__tmp56 = icmp slt i32 %__tmp54, %__tmp55
  br i1 %__tmp56, label %bb21, label %bb22
bb21:
  %__tmp57 = load i32*, i32** %arr_arg, align 4
  %__tmp58 = load i32, i32* %j, align 4
  %__tmp59 = sext i32 %__tmp58 to i64
  %__tmp60 = getelementptr inbounds i32, i32* %__tmp57, i64 %__tmp59
  %__tmp61 = load i32*, i32** %arr_arg, align 4
  %__tmp62 = load i32, i32* %i, align 4
  %__tmp63 = sext i32 %__tmp62 to i64
  %__tmp64 = getelementptr inbounds i32, i32* %__tmp61, i64 %__tmp63
  %__tmp65 = load i32, i32* %__tmp64, align 4
  store i32 %__tmp65, i32* %__tmp60, align 4
  %__tmp66 = load i32, i32* %j, align 4
  %__tmp67 = sub i32 %__tmp66, 1
  store i32 %__tmp67, i32* %j, align 4
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb3
bb5:
  %__tmp68 = load i32*, i32** %arr_arg, align 4
  %__tmp69 = load i32, i32* %i, align 4
  %__tmp70 = sext i32 %__tmp69 to i64
  %__tmp71 = getelementptr inbounds i32, i32* %__tmp68, i64 %__tmp70
  %__tmp72 = load i32, i32* %k, align 4
  store i32 %__tmp72, i32* %__tmp71, align 4
  %tmp = alloca i32, align 4
  %__tmp73 = load i32, i32* %i, align 4
  %__tmp74 = sub i32 %__tmp73, 1
  store i32 %__tmp74, i32* %tmp, align 4
  %__tmp75 = load i32*, i32** %arr_arg, align 4
  %__tmp76 = load i32, i32* %low_arg, align 4
  %__tmp77 = load i32, i32* %tmp, align 4
  %__tmp78 = call i32 @QuickSort(i32* %__tmp75, i32 %__tmp76, i32 %__tmp77)
  store i32 %__tmp78, i32* %tmp, align 4
  %__tmp79 = load i32, i32* %i, align 4
  %__tmp80 = add i32 %__tmp79, 1
  store i32 %__tmp80, i32* %tmp, align 4
  %__tmp81 = load i32*, i32** %arr_arg, align 4
  %__tmp82 = load i32, i32* %tmp, align 4
  %__tmp83 = load i32, i32* %high_arg, align 4
  %__tmp84 = call i32 @QuickSort(i32* %__tmp81, i32 %__tmp82, i32 %__tmp83)
  store i32 %__tmp84, i32* %tmp, align 4
  br label %bb2
bb1:
  br label %bb2
bb2:
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
  %tmp = alloca i32, align 4
  store i32 9, i32* %tmp, align 4
  %__tmp10 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %__tmp11 = load i32, i32* %i, align 4
  %__tmp12 = load i32, i32* %tmp, align 4
  %__tmp13 = call i32 @QuickSort(i32* %__tmp10, i32 %__tmp11, i32 %__tmp12)
  store i32 %__tmp13, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp14 = load i32, i32* %i, align 4
  %__tmp15 = load i32, i32* @n, align 4
  %__tmp16 = icmp slt i32 %__tmp14, %__tmp15
  br i1 %__tmp16, label %bb1, label %bb2
bb1:
  %tmp.1 = alloca i32, align 4
  %__tmp17 = load i32, i32* %i, align 4
  %__tmp18 = sext i32 %__tmp17 to i64
  %__tmp19 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %__tmp18
  %__tmp20 = load i32, i32* %__tmp19, align 4
  store i32 %__tmp20, i32* %tmp.1, align 4
  %__tmp21 = load i32, i32* %tmp.1, align 4
  call void @putint(i32 %__tmp21)
  store i32 10, i32* %tmp.1, align 4
  %__tmp22 = load i32, i32* %tmp.1, align 4
  call void @putch(i32 %__tmp22)
  %__tmp23 = load i32, i32* %i, align 4
  %__tmp24 = add i32 %__tmp23, 1
  store i32 %__tmp24, i32* %i, align 4
  br label %bb0
bb2:
  ret i32 0
}

