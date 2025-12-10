; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@n = global i32 0, align 4

define i32 @bubblesort(i32* %arr) {
bubblesortEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* @n, align 4
  %__tmp2 = sub i32 %__tmp1, 1
  %__tmp3 = icmp slt i32 %__tmp0, %__tmp2
  br i1 %__tmp3, label %bb1, label %bb2
bb1:
  store i32 0, i32* %j, align 4
  br label %bb3
bb3:
  %__tmp4 = load i32, i32* %j, align 4
  %__tmp5 = load i32, i32* @n, align 4
  %__tmp6 = load i32, i32* %i, align 4
  %__tmp7 = sub i32 %__tmp5, %__tmp6
  %__tmp8 = sub i32 %__tmp7, 1
  %__tmp9 = icmp slt i32 %__tmp4, %__tmp8
  br i1 %__tmp9, label %bb4, label %bb5
bb4:
  %__tmp10 = load i32*, i32** %arr_arg, align 4
  %__tmp11 = load i32, i32* %j, align 4
  %__tmp12 = sext i32 %__tmp11 to i64
  %__tmp13 = getelementptr inbounds i32, i32* %__tmp10, i64 %__tmp12
  %__tmp14 = load i32, i32* %__tmp13, align 4
  %__tmp15 = load i32*, i32** %arr_arg, align 4
  %__tmp16 = load i32, i32* %j, align 4
  %__tmp17 = add i32 %__tmp16, 1
  %__tmp18 = sext i32 %__tmp17 to i64
  %__tmp19 = getelementptr inbounds i32, i32* %__tmp15, i64 %__tmp18
  %__tmp20 = load i32, i32* %__tmp19, align 4
  %__tmp21 = icmp sgt i32 %__tmp14, %__tmp20
  br i1 %__tmp21, label %bb6, label %bb7
bb6:
  %tmp = alloca i32, align 4
  %__tmp22 = load i32*, i32** %arr_arg, align 4
  %__tmp23 = load i32, i32* %j, align 4
  %__tmp24 = add i32 %__tmp23, 1
  %__tmp25 = sext i32 %__tmp24 to i64
  %__tmp26 = getelementptr inbounds i32, i32* %__tmp22, i64 %__tmp25
  %__tmp27 = load i32, i32* %__tmp26, align 4
  store i32 %__tmp27, i32* %tmp, align 4
  %__tmp28 = load i32*, i32** %arr_arg, align 4
  %__tmp29 = load i32, i32* %j, align 4
  %__tmp30 = add i32 %__tmp29, 1
  %__tmp31 = sext i32 %__tmp30 to i64
  %__tmp32 = getelementptr inbounds i32, i32* %__tmp28, i64 %__tmp31
  %__tmp33 = load i32*, i32** %arr_arg, align 4
  %__tmp34 = load i32, i32* %j, align 4
  %__tmp35 = sext i32 %__tmp34 to i64
  %__tmp36 = getelementptr inbounds i32, i32* %__tmp33, i64 %__tmp35
  %__tmp37 = load i32, i32* %__tmp36, align 4
  store i32 %__tmp37, i32* %__tmp32, align 4
  %__tmp38 = load i32*, i32** %arr_arg, align 4
  %__tmp39 = load i32, i32* %j, align 4
  %__tmp40 = sext i32 %__tmp39 to i64
  %__tmp41 = getelementptr inbounds i32, i32* %__tmp38, i64 %__tmp40
  %__tmp42 = load i32, i32* %tmp, align 4
  store i32 %__tmp42, i32* %__tmp41, align 4
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp43 = load i32, i32* %j, align 4
  %__tmp44 = add i32 %__tmp43, 1
  store i32 %__tmp44, i32* %j, align 4
  br label %bb3
bb5:
  %__tmp45 = load i32, i32* %i, align 4
  %__tmp46 = add i32 %__tmp45, 1
  store i32 %__tmp46, i32* %i, align 4
  br label %bb0
bb2:
  ret i32 0
}

define i32 @insertsort(i32* %a) {
insertsortEntry:
  %a_arg = alloca i32*, align 4
  store i32* %a, i32** %a_arg, align 4
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* @n, align 4
  %__tmp2 = icmp slt i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %temp = alloca i32, align 4
  %__tmp3 = load i32*, i32** %a_arg, align 4
  %__tmp4 = load i32, i32* %i, align 4
  %__tmp5 = sext i32 %__tmp4 to i64
  %__tmp6 = getelementptr inbounds i32, i32* %__tmp3, i64 %__tmp5
  %__tmp7 = load i32, i32* %__tmp6, align 4
  store i32 %__tmp7, i32* %temp, align 4
  %j = alloca i32, align 4
  %__tmp8 = load i32, i32* %i, align 4
  %__tmp9 = sub i32 %__tmp8, 1
  store i32 %__tmp9, i32* %j, align 4
  br label %bb3
bb3:
  %__tmp10 = load i32, i32* %j, align 4
  %__tmp11 = icmp sgt i32 %__tmp10, -1
  br i1 %__tmp11, label %bb6, label %bb8
bb8:
  br label %bb7
bb6:
  %__tmp12 = load i32, i32* %temp, align 4
  %__tmp13 = load i32*, i32** %a_arg, align 4
  %__tmp14 = load i32, i32* %j, align 4
  %__tmp15 = sext i32 %__tmp14 to i64
  %__tmp16 = getelementptr inbounds i32, i32* %__tmp13, i64 %__tmp15
  %__tmp17 = load i32, i32* %__tmp16, align 4
  %__tmp18 = icmp slt i32 %__tmp12, %__tmp17
  br label %bb7
bb7:
  %__tmp19 = phi i1 [ 0, %bb8 ], [ %__tmp18, %bb6 ]
  br i1 %__tmp19, label %bb4, label %bb5
bb4:
  %__tmp20 = load i32*, i32** %a_arg, align 4
  %__tmp21 = load i32, i32* %j, align 4
  %__tmp22 = add i32 %__tmp21, 1
  %__tmp23 = sext i32 %__tmp22 to i64
  %__tmp24 = getelementptr inbounds i32, i32* %__tmp20, i64 %__tmp23
  %__tmp25 = load i32*, i32** %a_arg, align 4
  %__tmp26 = load i32, i32* %j, align 4
  %__tmp27 = sext i32 %__tmp26 to i64
  %__tmp28 = getelementptr inbounds i32, i32* %__tmp25, i64 %__tmp27
  %__tmp29 = load i32, i32* %__tmp28, align 4
  store i32 %__tmp29, i32* %__tmp24, align 4
  %__tmp30 = load i32, i32* %j, align 4
  %__tmp31 = sub i32 %__tmp30, 1
  store i32 %__tmp31, i32* %j, align 4
  br label %bb3
bb5:
  %__tmp32 = load i32*, i32** %a_arg, align 4
  %__tmp33 = load i32, i32* %j, align 4
  %__tmp34 = add i32 %__tmp33, 1
  %__tmp35 = sext i32 %__tmp34 to i64
  %__tmp36 = getelementptr inbounds i32, i32* %__tmp32, i64 %__tmp35
  %__tmp37 = load i32, i32* %temp, align 4
  store i32 %__tmp37, i32* %__tmp36, align 4
  %__tmp38 = load i32, i32* %i, align 4
  %__tmp39 = add i32 %__tmp38, 1
  store i32 %__tmp39, i32* %i, align 4
  br label %bb0
bb2:
  ret i32 0
}

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

define i32 @getMid(i32* %arr) {
getMidEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %mid = alloca i32, align 4
  %__tmp0 = load i32, i32* @n, align 4
  %__tmp1 = srem i32 %__tmp0, 2
  %__tmp2 = icmp eq i32 %__tmp1, 0
  br i1 %__tmp2, label %bb0, label %bb1
bb0:
  %__tmp3 = load i32, i32* @n, align 4
  %__tmp4 = sdiv i32 %__tmp3, 2
  store i32 %__tmp4, i32* %mid, align 4
  %__tmp5 = load i32*, i32** %arr_arg, align 4
  %__tmp6 = load i32, i32* %mid, align 4
  %__tmp7 = sext i32 %__tmp6 to i64
  %__tmp8 = getelementptr inbounds i32, i32* %__tmp5, i64 %__tmp7
  %__tmp9 = load i32, i32* %__tmp8, align 4
  %__tmp10 = load i32*, i32** %arr_arg, align 4
  %__tmp11 = load i32, i32* %mid, align 4
  %__tmp12 = sub i32 %__tmp11, 1
  %__tmp13 = sext i32 %__tmp12 to i64
  %__tmp14 = getelementptr inbounds i32, i32* %__tmp10, i64 %__tmp13
  %__tmp15 = load i32, i32* %__tmp14, align 4
  %__tmp16 = add i32 %__tmp9, %__tmp15
  %__tmp17 = sdiv i32 %__tmp16, 2
  ret i32 %__tmp17
bb1:
  %__tmp18 = load i32, i32* @n, align 4
  %__tmp19 = sdiv i32 %__tmp18, 2
  store i32 %__tmp19, i32* %mid, align 4
  %__tmp20 = load i32*, i32** %arr_arg, align 4
  %__tmp21 = load i32, i32* %mid, align 4
  %__tmp22 = sext i32 %__tmp21 to i64
  %__tmp23 = getelementptr inbounds i32, i32* %__tmp20, i64 %__tmp22
  %__tmp24 = load i32, i32* %__tmp23, align 4
  ret i32 %__tmp24
bb2:
  ret i32 0
}

define i32 @getMost(i32* %arr) {
getMostEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %count = alloca [1000 x i32], align 4
  store [1000 x i32] zeroinitializer, [1000 x i32]* %count, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 1000
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = sext i32 %__tmp2 to i64
  %__tmp4 = getelementptr inbounds [1000 x i32], [1000 x i32]* %count, i64 0, i64 %__tmp3
  store i32 0, i32* %__tmp4, align 4
  %__tmp5 = load i32, i32* %i, align 4
  %__tmp6 = add i32 %__tmp5, 1
  store i32 %__tmp6, i32* %i, align 4
  br label %bb0
bb2:
  store i32 0, i32* %i, align 4
  %max = alloca i32, align 4
  %number = alloca i32, align 4
  store i32 0, i32* %max, align 4
  br label %bb3
bb3:
  %__tmp7 = load i32, i32* %i, align 4
  %__tmp8 = load i32, i32* @n, align 4
  %__tmp9 = icmp slt i32 %__tmp7, %__tmp8
  br i1 %__tmp9, label %bb4, label %bb5
bb4:
  %num = alloca i32, align 4
  %__tmp10 = load i32*, i32** %arr_arg, align 4
  %__tmp11 = load i32, i32* %i, align 4
  %__tmp12 = sext i32 %__tmp11 to i64
  %__tmp13 = getelementptr inbounds i32, i32* %__tmp10, i64 %__tmp12
  %__tmp14 = load i32, i32* %__tmp13, align 4
  store i32 %__tmp14, i32* %num, align 4
  %__tmp15 = load i32, i32* %num, align 4
  %__tmp16 = sext i32 %__tmp15 to i64
  %__tmp17 = getelementptr inbounds [1000 x i32], [1000 x i32]* %count, i64 0, i64 %__tmp16
  %__tmp18 = load i32, i32* %num, align 4
  %__tmp19 = sext i32 %__tmp18 to i64
  %__tmp20 = getelementptr inbounds [1000 x i32], [1000 x i32]* %count, i64 0, i64 %__tmp19
  %__tmp21 = load i32, i32* %__tmp20, align 4
  %__tmp22 = add i32 %__tmp21, 1
  store i32 %__tmp22, i32* %__tmp17, align 4
  %__tmp23 = load i32, i32* %num, align 4
  %__tmp24 = sext i32 %__tmp23 to i64
  %__tmp25 = getelementptr inbounds [1000 x i32], [1000 x i32]* %count, i64 0, i64 %__tmp24
  %__tmp26 = load i32, i32* %__tmp25, align 4
  %__tmp27 = load i32, i32* %max, align 4
  %__tmp28 = icmp sgt i32 %__tmp26, %__tmp27
  br i1 %__tmp28, label %bb6, label %bb7
bb6:
  %__tmp29 = load i32, i32* %num, align 4
  %__tmp30 = sext i32 %__tmp29 to i64
  %__tmp31 = getelementptr inbounds [1000 x i32], [1000 x i32]* %count, i64 0, i64 %__tmp30
  %__tmp32 = load i32, i32* %__tmp31, align 4
  store i32 %__tmp32, i32* %max, align 4
  %__tmp33 = load i32, i32* %num, align 4
  store i32 %__tmp33, i32* %number, align 4
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp34 = load i32, i32* %i, align 4
  %__tmp35 = add i32 %__tmp34, 1
  store i32 %__tmp35, i32* %i, align 4
  br label %bb3
bb5:
  %__tmp36 = load i32, i32* %number, align 4
  ret i32 %__tmp36
}

define i32 @revert(i32* %arr) {
revertEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* %j, align 4
  %__tmp2 = icmp slt i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = load i32*, i32** %arr_arg, align 4
  %__tmp4 = load i32, i32* %i, align 4
  %__tmp5 = sext i32 %__tmp4 to i64
  %__tmp6 = getelementptr inbounds i32, i32* %__tmp3, i64 %__tmp5
  %__tmp7 = load i32, i32* %__tmp6, align 4
  store i32 %__tmp7, i32* %temp, align 4
  %__tmp8 = load i32*, i32** %arr_arg, align 4
  %__tmp9 = load i32, i32* %i, align 4
  %__tmp10 = sext i32 %__tmp9 to i64
  %__tmp11 = getelementptr inbounds i32, i32* %__tmp8, i64 %__tmp10
  %__tmp12 = load i32*, i32** %arr_arg, align 4
  %__tmp13 = load i32, i32* %j, align 4
  %__tmp14 = sext i32 %__tmp13 to i64
  %__tmp15 = getelementptr inbounds i32, i32* %__tmp12, i64 %__tmp14
  %__tmp16 = load i32, i32* %__tmp15, align 4
  store i32 %__tmp16, i32* %__tmp11, align 4
  %__tmp17 = load i32*, i32** %arr_arg, align 4
  %__tmp18 = load i32, i32* %j, align 4
  %__tmp19 = sext i32 %__tmp18 to i64
  %__tmp20 = getelementptr inbounds i32, i32* %__tmp17, i64 %__tmp19
  %__tmp21 = load i32, i32* %temp, align 4
  store i32 %__tmp21, i32* %__tmp20, align 4
  %__tmp22 = load i32, i32* %i, align 4
  %__tmp23 = add i32 %__tmp22, 1
  store i32 %__tmp23, i32* %i, align 4
  %__tmp24 = load i32, i32* %j, align 4
  %__tmp25 = sub i32 %__tmp24, 1
  store i32 %__tmp25, i32* %j, align 4
  br label %bb0
bb2:
  ret i32 0
}

define i32 @arrCopy(i32* %src, i32* %target) {
arrCopyEntry:
  %src_arg = alloca i32*, align 4
  store i32* %src, i32** %src_arg, align 4
  %target_arg = alloca i32*, align 4
  store i32* %target, i32** %target_arg, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* @n, align 4
  %__tmp2 = icmp slt i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = load i32*, i32** %target_arg, align 4
  %__tmp4 = load i32, i32* %i, align 4
  %__tmp5 = sext i32 %__tmp4 to i64
  %__tmp6 = getelementptr inbounds i32, i32* %__tmp3, i64 %__tmp5
  %__tmp7 = load i32*, i32** %src_arg, align 4
  %__tmp8 = load i32, i32* %i, align 4
  %__tmp9 = sext i32 %__tmp8 to i64
  %__tmp10 = getelementptr inbounds i32, i32* %__tmp7, i64 %__tmp9
  %__tmp11 = load i32, i32* %__tmp10, align 4
  store i32 %__tmp11, i32* %__tmp6, align 4
  %__tmp12 = load i32, i32* %i, align 4
  %__tmp13 = add i32 %__tmp12, 1
  store i32 %__tmp13, i32* %i, align 4
  br label %bb0
bb2:
  ret i32 0
}

define i32 @calSum(i32* %arr, i32 %stride) {
calSumEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %stride_arg = alloca i32, align 4
  store i32 %stride, i32* %stride_arg, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* @n, align 4
  %__tmp2 = icmp slt i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = load i32, i32* %sum, align 4
  %__tmp4 = load i32*, i32** %arr_arg, align 4
  %__tmp5 = load i32, i32* %i, align 4
  %__tmp6 = sext i32 %__tmp5 to i64
  %__tmp7 = getelementptr inbounds i32, i32* %__tmp4, i64 %__tmp6
  %__tmp8 = load i32, i32* %__tmp7, align 4
  %__tmp9 = add i32 %__tmp3, %__tmp8
  store i32 %__tmp9, i32* %sum, align 4
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = load i32, i32* %stride_arg, align 4
  %__tmp12 = srem i32 %__tmp10, %__tmp11
  %__tmp13 = load i32, i32* %stride_arg, align 4
  %__tmp14 = sub i32 %__tmp13, 1
  %__tmp15 = icmp ne i32 %__tmp12, %__tmp14
  br i1 %__tmp15, label %bb3, label %bb4
bb3:
  %__tmp16 = load i32*, i32** %arr_arg, align 4
  %__tmp17 = load i32, i32* %i, align 4
  %__tmp18 = sext i32 %__tmp17 to i64
  %__tmp19 = getelementptr inbounds i32, i32* %__tmp16, i64 %__tmp18
  store i32 0, i32* %__tmp19, align 4
  br label %bb5
bb4:
  %__tmp20 = load i32*, i32** %arr_arg, align 4
  %__tmp21 = load i32, i32* %i, align 4
  %__tmp22 = sext i32 %__tmp21 to i64
  %__tmp23 = getelementptr inbounds i32, i32* %__tmp20, i64 %__tmp22
  %__tmp24 = load i32, i32* %sum, align 4
  store i32 %__tmp24, i32* %__tmp23, align 4
  store i32 0, i32* %sum, align 4
  br label %bb5
bb5:
  %__tmp25 = load i32, i32* %i, align 4
  %__tmp26 = add i32 %__tmp25, 1
  store i32 %__tmp26, i32* %i, align 4
  br label %bb0
bb2:
  ret i32 0
}

define i32 @avgPooling(i32* %arr, i32 %stride) {
avgPoolingEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %stride_arg = alloca i32, align 4
  store i32 %stride, i32* %stride_arg, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %sum, align 4
  %lastnum = alloca i32, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* @n, align 4
  %__tmp2 = icmp slt i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = load i32, i32* %i, align 4
  %__tmp4 = load i32, i32* %stride_arg, align 4
  %__tmp5 = sub i32 %__tmp4, 1
  %__tmp6 = icmp slt i32 %__tmp3, %__tmp5
  br i1 %__tmp6, label %bb3, label %bb4
bb3:
  %__tmp7 = load i32, i32* %sum, align 4
  %__tmp8 = load i32*, i32** %arr_arg, align 4
  %__tmp9 = load i32, i32* %i, align 4
  %__tmp10 = sext i32 %__tmp9 to i64
  %__tmp11 = getelementptr inbounds i32, i32* %__tmp8, i64 %__tmp10
  %__tmp12 = load i32, i32* %__tmp11, align 4
  %__tmp13 = add i32 %__tmp7, %__tmp12
  store i32 %__tmp13, i32* %sum, align 4
  br label %bb5
bb4:
  %__tmp14 = load i32, i32* %i, align 4
  %__tmp15 = load i32, i32* %stride_arg, align 4
  %__tmp16 = sub i32 %__tmp15, 1
  %__tmp17 = icmp eq i32 %__tmp14, %__tmp16
  br i1 %__tmp17, label %bb6, label %bb7
bb6:
  %__tmp18 = load i32*, i32** %arr_arg, align 4
  %__tmp19 = getelementptr inbounds i32, i32* %__tmp18, i64 0
  %__tmp20 = load i32, i32* %__tmp19, align 4
  store i32 %__tmp20, i32* %lastnum, align 4
  %__tmp21 = load i32*, i32** %arr_arg, align 4
  %__tmp22 = getelementptr inbounds i32, i32* %__tmp21, i64 0
  %__tmp23 = load i32, i32* %sum, align 4
  %__tmp24 = load i32, i32* %stride_arg, align 4
  %__tmp25 = sdiv i32 %__tmp23, %__tmp24
  store i32 %__tmp25, i32* %__tmp22, align 4
  br label %bb8
bb7:
  %__tmp26 = load i32, i32* %sum, align 4
  %__tmp27 = load i32*, i32** %arr_arg, align 4
  %__tmp28 = load i32, i32* %i, align 4
  %__tmp29 = sext i32 %__tmp28 to i64
  %__tmp30 = getelementptr inbounds i32, i32* %__tmp27, i64 %__tmp29
  %__tmp31 = load i32, i32* %__tmp30, align 4
  %__tmp32 = add i32 %__tmp26, %__tmp31
  %__tmp33 = load i32, i32* %lastnum, align 4
  %__tmp34 = sub i32 %__tmp32, %__tmp33
  store i32 %__tmp34, i32* %sum, align 4
  %__tmp35 = load i32*, i32** %arr_arg, align 4
  %__tmp36 = load i32, i32* %i, align 4
  %__tmp37 = load i32, i32* %stride_arg, align 4
  %__tmp38 = sub i32 %__tmp36, %__tmp37
  %__tmp39 = add i32 %__tmp38, 1
  %__tmp40 = sext i32 %__tmp39 to i64
  %__tmp41 = getelementptr inbounds i32, i32* %__tmp35, i64 %__tmp40
  %__tmp42 = load i32, i32* %__tmp41, align 4
  store i32 %__tmp42, i32* %lastnum, align 4
  %__tmp43 = load i32*, i32** %arr_arg, align 4
  %__tmp44 = load i32, i32* %i, align 4
  %__tmp45 = load i32, i32* %stride_arg, align 4
  %__tmp46 = sub i32 %__tmp44, %__tmp45
  %__tmp47 = add i32 %__tmp46, 1
  %__tmp48 = sext i32 %__tmp47 to i64
  %__tmp49 = getelementptr inbounds i32, i32* %__tmp43, i64 %__tmp48
  %__tmp50 = load i32, i32* %sum, align 4
  %__tmp51 = load i32, i32* %stride_arg, align 4
  %__tmp52 = sdiv i32 %__tmp50, %__tmp51
  store i32 %__tmp52, i32* %__tmp49, align 4
  br label %bb8
bb8:
  br label %bb5
bb5:
  %__tmp53 = load i32, i32* %i, align 4
  %__tmp54 = add i32 %__tmp53, 1
  store i32 %__tmp54, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp55 = load i32, i32* @n, align 4
  %__tmp56 = load i32, i32* %stride_arg, align 4
  %__tmp57 = sub i32 %__tmp55, %__tmp56
  %__tmp58 = add i32 %__tmp57, 1
  store i32 %__tmp58, i32* %i, align 4
  br label %bb9
bb9:
  %__tmp59 = load i32, i32* %i, align 4
  %__tmp60 = load i32, i32* @n, align 4
  %__tmp61 = icmp slt i32 %__tmp59, %__tmp60
  br i1 %__tmp61, label %bb10, label %bb11
bb10:
  %__tmp62 = load i32*, i32** %arr_arg, align 4
  %__tmp63 = load i32, i32* %i, align 4
  %__tmp64 = sext i32 %__tmp63 to i64
  %__tmp65 = getelementptr inbounds i32, i32* %__tmp62, i64 %__tmp64
  store i32 0, i32* %__tmp65, align 4
  %__tmp66 = load i32, i32* %i, align 4
  %__tmp67 = add i32 %__tmp66, 1
  store i32 %__tmp67, i32* %i, align 4
  br label %bb9
bb11:
  ret i32 0
}

define i32 @main() {
mainEntry:
  store i32 32, i32* @n, align 4
  %arr = alloca [32 x i32], align 4
  store [32 x i32] zeroinitializer, [32 x i32]* %arr, align 4
  %result = alloca [32 x i32], align 4
  store [32 x i32] zeroinitializer, [32 x i32]* %result, align 4
  %__tmp0 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  store i32 7, i32* %__tmp0, align 4
  %__tmp1 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 1
  store i32 23, i32* %__tmp1, align 4
  %__tmp2 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 2
  store i32 89, i32* %__tmp2, align 4
  %__tmp3 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 3
  store i32 26, i32* %__tmp3, align 4
  %__tmp4 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 4
  store i32 282, i32* %__tmp4, align 4
  %__tmp5 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 5
  store i32 254, i32* %__tmp5, align 4
  %__tmp6 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 6
  store i32 27, i32* %__tmp6, align 4
  %__tmp7 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 7
  store i32 5, i32* %__tmp7, align 4
  %__tmp8 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 8
  store i32 83, i32* %__tmp8, align 4
  %__tmp9 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 9
  store i32 273, i32* %__tmp9, align 4
  %__tmp10 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 10
  store i32 574, i32* %__tmp10, align 4
  %__tmp11 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 11
  store i32 905, i32* %__tmp11, align 4
  %__tmp12 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 12
  store i32 354, i32* %__tmp12, align 4
  %__tmp13 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 13
  store i32 657, i32* %__tmp13, align 4
  %__tmp14 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 14
  store i32 935, i32* %__tmp14, align 4
  %__tmp15 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 15
  store i32 264, i32* %__tmp15, align 4
  %__tmp16 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 16
  store i32 639, i32* %__tmp16, align 4
  %__tmp17 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 17
  store i32 459, i32* %__tmp17, align 4
  %__tmp18 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 18
  store i32 29, i32* %__tmp18, align 4
  %__tmp19 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 19
  store i32 68, i32* %__tmp19, align 4
  %__tmp20 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 20
  store i32 929, i32* %__tmp20, align 4
  %__tmp21 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 21
  store i32 756, i32* %__tmp21, align 4
  %__tmp22 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 22
  store i32 452, i32* %__tmp22, align 4
  %__tmp23 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 23
  store i32 279, i32* %__tmp23, align 4
  %__tmp24 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 24
  store i32 58, i32* %__tmp24, align 4
  %__tmp25 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 25
  store i32 87, i32* %__tmp25, align 4
  %__tmp26 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 26
  store i32 96, i32* %__tmp26, align 4
  %__tmp27 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 27
  store i32 36, i32* %__tmp27, align 4
  %__tmp28 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 28
  store i32 39, i32* %__tmp28, align 4
  %__tmp29 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 29
  store i32 28, i32* %__tmp29, align 4
  %__tmp30 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 30
  store i32 1, i32* %__tmp30, align 4
  %__tmp31 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 31
  store i32 290, i32* %__tmp31, align 4
  %t = alloca i32, align 4
  %__tmp32 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %__tmp33 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp34 = call i32 @arrCopy(i32* %__tmp32, i32* %__tmp33)
  store i32 %__tmp34, i32* %t, align 4
  %__tmp35 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp36 = call i32 @revert(i32* %__tmp35)
  store i32 %__tmp36, i32* %t, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp37 = load i32, i32* %i, align 4
  %__tmp38 = icmp slt i32 %__tmp37, 32
  br i1 %__tmp38, label %bb1, label %bb2
bb1:
  %__tmp39 = load i32, i32* %i, align 4
  %__tmp40 = sext i32 %__tmp39 to i64
  %__tmp41 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 %__tmp40
  %__tmp42 = load i32, i32* %__tmp41, align 4
  store i32 %__tmp42, i32* %t, align 4
  %__tmp43 = load i32, i32* %t, align 4
  call void @putint(i32 %__tmp43)
  %__tmp44 = load i32, i32* %i, align 4
  %__tmp45 = add i32 %__tmp44, 1
  store i32 %__tmp45, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp46 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp47 = call i32 @bubblesort(i32* %__tmp46)
  store i32 %__tmp47, i32* %t, align 4
  store i32 0, i32* %i, align 4
  br label %bb3
bb3:
  %__tmp48 = load i32, i32* %i, align 4
  %__tmp49 = icmp slt i32 %__tmp48, 32
  br i1 %__tmp49, label %bb4, label %bb5
bb4:
  %__tmp50 = load i32, i32* %i, align 4
  %__tmp51 = sext i32 %__tmp50 to i64
  %__tmp52 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 %__tmp51
  %__tmp53 = load i32, i32* %__tmp52, align 4
  store i32 %__tmp53, i32* %t, align 4
  %__tmp54 = load i32, i32* %t, align 4
  call void @putint(i32 %__tmp54)
  %__tmp55 = load i32, i32* %i, align 4
  %__tmp56 = add i32 %__tmp55, 1
  store i32 %__tmp56, i32* %i, align 4
  br label %bb3
bb5:
  %__tmp57 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp58 = call i32 @getMid(i32* %__tmp57)
  store i32 %__tmp58, i32* %t, align 4
  %__tmp59 = load i32, i32* %t, align 4
  call void @putint(i32 %__tmp59)
  %__tmp60 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp61 = call i32 @getMost(i32* %__tmp60)
  store i32 %__tmp61, i32* %t, align 4
  %__tmp62 = load i32, i32* %t, align 4
  call void @putint(i32 %__tmp62)
  %__tmp63 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %__tmp64 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp65 = call i32 @arrCopy(i32* %__tmp63, i32* %__tmp64)
  store i32 %__tmp65, i32* %t, align 4
  %__tmp66 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp67 = call i32 @bubblesort(i32* %__tmp66)
  store i32 %__tmp67, i32* %t, align 4
  store i32 0, i32* %i, align 4
  br label %bb6
bb6:
  %__tmp68 = load i32, i32* %i, align 4
  %__tmp69 = icmp slt i32 %__tmp68, 32
  br i1 %__tmp69, label %bb7, label %bb8
bb7:
  %__tmp70 = load i32, i32* %i, align 4
  %__tmp71 = sext i32 %__tmp70 to i64
  %__tmp72 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 %__tmp71
  %__tmp73 = load i32, i32* %__tmp72, align 4
  store i32 %__tmp73, i32* %t, align 4
  %__tmp74 = load i32, i32* %t, align 4
  call void @putint(i32 %__tmp74)
  %__tmp75 = load i32, i32* %i, align 4
  %__tmp76 = add i32 %__tmp75, 1
  store i32 %__tmp76, i32* %i, align 4
  br label %bb6
bb8:
  %__tmp77 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %__tmp78 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp79 = call i32 @arrCopy(i32* %__tmp77, i32* %__tmp78)
  store i32 %__tmp79, i32* %t, align 4
  %__tmp80 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp81 = call i32 @insertsort(i32* %__tmp80)
  store i32 %__tmp81, i32* %t, align 4
  store i32 0, i32* %i, align 4
  br label %bb9
bb9:
  %__tmp82 = load i32, i32* %i, align 4
  %__tmp83 = icmp slt i32 %__tmp82, 32
  br i1 %__tmp83, label %bb10, label %bb11
bb10:
  %__tmp84 = load i32, i32* %i, align 4
  %__tmp85 = sext i32 %__tmp84 to i64
  %__tmp86 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 %__tmp85
  %__tmp87 = load i32, i32* %__tmp86, align 4
  store i32 %__tmp87, i32* %t, align 4
  %__tmp88 = load i32, i32* %t, align 4
  call void @putint(i32 %__tmp88)
  %__tmp89 = load i32, i32* %i, align 4
  %__tmp90 = add i32 %__tmp89, 1
  store i32 %__tmp90, i32* %i, align 4
  br label %bb9
bb11:
  %__tmp91 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %__tmp92 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp93 = call i32 @arrCopy(i32* %__tmp91, i32* %__tmp92)
  store i32 %__tmp93, i32* %t, align 4
  store i32 0, i32* %i, align 4
  store i32 31, i32* %t, align 4
  %__tmp94 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp95 = load i32, i32* %i, align 4
  %__tmp96 = load i32, i32* %t, align 4
  %__tmp97 = call i32 @QuickSort(i32* %__tmp94, i32 %__tmp95, i32 %__tmp96)
  store i32 %__tmp97, i32* %t, align 4
  br label %bb12
bb12:
  %__tmp98 = load i32, i32* %i, align 4
  %__tmp99 = icmp slt i32 %__tmp98, 32
  br i1 %__tmp99, label %bb13, label %bb14
bb13:
  %__tmp100 = load i32, i32* %i, align 4
  %__tmp101 = sext i32 %__tmp100 to i64
  %__tmp102 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 %__tmp101
  %__tmp103 = load i32, i32* %__tmp102, align 4
  store i32 %__tmp103, i32* %t, align 4
  %__tmp104 = load i32, i32* %t, align 4
  call void @putint(i32 %__tmp104)
  %__tmp105 = load i32, i32* %i, align 4
  %__tmp106 = add i32 %__tmp105, 1
  store i32 %__tmp106, i32* %i, align 4
  br label %bb12
bb14:
  %__tmp107 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %__tmp108 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp109 = call i32 @arrCopy(i32* %__tmp107, i32* %__tmp108)
  store i32 %__tmp109, i32* %t, align 4
  %__tmp110 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp111 = call i32 @calSum(i32* %__tmp110, i32 4)
  store i32 %__tmp111, i32* %t, align 4
  store i32 0, i32* %i, align 4
  br label %bb15
bb15:
  %__tmp112 = load i32, i32* %i, align 4
  %__tmp113 = icmp slt i32 %__tmp112, 32
  br i1 %__tmp113, label %bb16, label %bb17
bb16:
  %__tmp114 = load i32, i32* %i, align 4
  %__tmp115 = sext i32 %__tmp114 to i64
  %__tmp116 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 %__tmp115
  %__tmp117 = load i32, i32* %__tmp116, align 4
  store i32 %__tmp117, i32* %t, align 4
  %__tmp118 = load i32, i32* %t, align 4
  call void @putint(i32 %__tmp118)
  %__tmp119 = load i32, i32* %i, align 4
  %__tmp120 = add i32 %__tmp119, 1
  store i32 %__tmp120, i32* %i, align 4
  br label %bb15
bb17:
  %__tmp121 = getelementptr inbounds [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %__tmp122 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp123 = call i32 @arrCopy(i32* %__tmp121, i32* %__tmp122)
  store i32 %__tmp123, i32* %t, align 4
  %__tmp124 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %__tmp125 = call i32 @avgPooling(i32* %__tmp124, i32 3)
  store i32 %__tmp125, i32* %t, align 4
  store i32 0, i32* %i, align 4
  br label %bb18
bb18:
  %__tmp126 = load i32, i32* %i, align 4
  %__tmp127 = icmp slt i32 %__tmp126, 32
  br i1 %__tmp127, label %bb19, label %bb20
bb19:
  %__tmp128 = load i32, i32* %i, align 4
  %__tmp129 = sext i32 %__tmp128 to i64
  %__tmp130 = getelementptr inbounds [32 x i32], [32 x i32]* %result, i64 0, i64 %__tmp129
  %__tmp131 = load i32, i32* %__tmp130, align 4
  store i32 %__tmp131, i32* %t, align 4
  %__tmp132 = load i32, i32* %t, align 4
  call void @putint(i32 %__tmp132)
  %__tmp133 = load i32, i32* %i, align 4
  %__tmp134 = add i32 %__tmp133, 1
  store i32 %__tmp134, i32* %i, align 4
  br label %bb18
bb20:
  ret i32 0
}

