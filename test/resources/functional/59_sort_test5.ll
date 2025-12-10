; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@n = global i32 0, align 4

define i32 @swap(i32* %array, i32 %i, i32 %j) {
swapEntry:
  %array_arg = alloca i32*, align 4
  store i32* %array, i32** %array_arg, align 4
  %i_arg = alloca i32, align 4
  store i32 %i, i32* %i_arg, align 4
  %j_arg = alloca i32, align 4
  store i32 %j, i32* %j_arg, align 4
  %temp = alloca i32, align 4
  %__tmp0 = load i32*, i32** %array_arg, align 4
  %__tmp1 = load i32, i32* %i_arg, align 4
  %__tmp2 = sext i32 %__tmp1 to i64
  %__tmp3 = getelementptr inbounds i32, i32* %__tmp0, i64 %__tmp2
  %__tmp4 = load i32, i32* %__tmp3, align 4
  store i32 %__tmp4, i32* %temp, align 4
  %__tmp5 = load i32*, i32** %array_arg, align 4
  %__tmp6 = load i32, i32* %i_arg, align 4
  %__tmp7 = sext i32 %__tmp6 to i64
  %__tmp8 = getelementptr inbounds i32, i32* %__tmp5, i64 %__tmp7
  %__tmp9 = load i32*, i32** %array_arg, align 4
  %__tmp10 = load i32, i32* %j_arg, align 4
  %__tmp11 = sext i32 %__tmp10 to i64
  %__tmp12 = getelementptr inbounds i32, i32* %__tmp9, i64 %__tmp11
  %__tmp13 = load i32, i32* %__tmp12, align 4
  store i32 %__tmp13, i32* %__tmp8, align 4
  %__tmp14 = load i32*, i32** %array_arg, align 4
  %__tmp15 = load i32, i32* %j_arg, align 4
  %__tmp16 = sext i32 %__tmp15 to i64
  %__tmp17 = getelementptr inbounds i32, i32* %__tmp14, i64 %__tmp16
  %__tmp18 = load i32, i32* %temp, align 4
  store i32 %__tmp18, i32* %__tmp17, align 4
  ret i32 0
}

define i32 @heap_ajust(i32* %arr, i32 %start, i32 %end) {
heap_ajustEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %start_arg = alloca i32, align 4
  store i32 %start, i32* %start_arg, align 4
  %end_arg = alloca i32, align 4
  store i32 %end, i32* %end_arg, align 4
  %dad = alloca i32, align 4
  %__tmp0 = load i32, i32* %start_arg, align 4
  store i32 %__tmp0, i32* %dad, align 4
  %son = alloca i32, align 4
  %__tmp1 = load i32, i32* %dad, align 4
  %__tmp2 = mul i32 %__tmp1, 2
  %__tmp3 = add i32 %__tmp2, 1
  store i32 %__tmp3, i32* %son, align 4
  br label %bb0
bb0:
  %__tmp4 = load i32, i32* %son, align 4
  %__tmp5 = load i32, i32* %end_arg, align 4
  %__tmp6 = add i32 %__tmp5, 1
  %__tmp7 = icmp slt i32 %__tmp4, %__tmp6
  br i1 %__tmp7, label %bb1, label %bb2
bb1:
  %__tmp8 = load i32, i32* %son, align 4
  %__tmp9 = load i32, i32* %end_arg, align 4
  %__tmp10 = icmp slt i32 %__tmp8, %__tmp9
  br i1 %__tmp10, label %bb6, label %bb8
bb8:
  br label %bb7
bb6:
  %__tmp11 = load i32*, i32** %arr_arg, align 4
  %__tmp12 = load i32, i32* %son, align 4
  %__tmp13 = sext i32 %__tmp12 to i64
  %__tmp14 = getelementptr inbounds i32, i32* %__tmp11, i64 %__tmp13
  %__tmp15 = load i32, i32* %__tmp14, align 4
  %__tmp16 = load i32*, i32** %arr_arg, align 4
  %__tmp17 = load i32, i32* %son, align 4
  %__tmp18 = add i32 %__tmp17, 1
  %__tmp19 = sext i32 %__tmp18 to i64
  %__tmp20 = getelementptr inbounds i32, i32* %__tmp16, i64 %__tmp19
  %__tmp21 = load i32, i32* %__tmp20, align 4
  %__tmp22 = icmp slt i32 %__tmp15, %__tmp21
  br label %bb7
bb7:
  %__tmp23 = phi i1 [ 0, %bb8 ], [ %__tmp22, %bb6 ]
  br i1 %__tmp23, label %bb3, label %bb4
bb3:
  %__tmp24 = load i32, i32* %son, align 4
  %__tmp25 = add i32 %__tmp24, 1
  store i32 %__tmp25, i32* %son, align 4
  br label %bb5
bb4:
  br label %bb5
bb5:
  %__tmp26 = load i32*, i32** %arr_arg, align 4
  %__tmp27 = load i32, i32* %dad, align 4
  %__tmp28 = sext i32 %__tmp27 to i64
  %__tmp29 = getelementptr inbounds i32, i32* %__tmp26, i64 %__tmp28
  %__tmp30 = load i32, i32* %__tmp29, align 4
  %__tmp31 = load i32*, i32** %arr_arg, align 4
  %__tmp32 = load i32, i32* %son, align 4
  %__tmp33 = sext i32 %__tmp32 to i64
  %__tmp34 = getelementptr inbounds i32, i32* %__tmp31, i64 %__tmp33
  %__tmp35 = load i32, i32* %__tmp34, align 4
  %__tmp36 = icmp sgt i32 %__tmp30, %__tmp35
  br i1 %__tmp36, label %bb9, label %bb10
bb9:
  ret i32 0
bb10:
  %__tmp37 = load i32*, i32** %arr_arg, align 4
  %__tmp38 = load i32, i32* %dad, align 4
  %__tmp39 = load i32, i32* %son, align 4
  %__tmp40 = call i32 @swap(i32* %__tmp37, i32 %__tmp38, i32 %__tmp39)
  store i32 %__tmp40, i32* %dad, align 4
  %__tmp41 = load i32, i32* %son, align 4
  store i32 %__tmp41, i32* %dad, align 4
  %__tmp42 = load i32, i32* %dad, align 4
  %__tmp43 = mul i32 %__tmp42, 2
  %__tmp44 = add i32 %__tmp43, 1
  store i32 %__tmp44, i32* %son, align 4
  br label %bb11
bb11:
  br label %bb0
bb2:
  ret i32 0
}

define i32 @heap_sort(i32* %arr, i32 %len) {
heap_sortEntry:
  %arr_arg = alloca i32*, align 4
  store i32* %arr, i32** %arr_arg, align 4
  %len_arg = alloca i32, align 4
  store i32 %len, i32* %len_arg, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__tmp0 = load i32, i32* %len_arg, align 4
  %__tmp1 = sdiv i32 %__tmp0, 2
  %__tmp2 = sub i32 %__tmp1, 1
  store i32 %__tmp2, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp3 = load i32, i32* %i, align 4
  %__tmp4 = icmp sgt i32 %__tmp3, -1
  br i1 %__tmp4, label %bb1, label %bb2
bb1:
  %__tmp5 = load i32, i32* %len_arg, align 4
  %__tmp6 = sub i32 %__tmp5, 1
  store i32 %__tmp6, i32* %tmp, align 4
  %__tmp7 = load i32*, i32** %arr_arg, align 4
  %__tmp8 = load i32, i32* %i, align 4
  %__tmp9 = load i32, i32* %tmp, align 4
  %__tmp10 = call i32 @heap_ajust(i32* %__tmp7, i32 %__tmp8, i32 %__tmp9)
  store i32 %__tmp10, i32* %tmp, align 4
  %__tmp11 = load i32, i32* %i, align 4
  %__tmp12 = sub i32 %__tmp11, 1
  store i32 %__tmp12, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp13 = load i32, i32* %len_arg, align 4
  %__tmp14 = sub i32 %__tmp13, 1
  store i32 %__tmp14, i32* %i, align 4
  br label %bb3
bb3:
  %__tmp15 = load i32, i32* %i, align 4
  %__tmp16 = icmp sgt i32 %__tmp15, 0
  br i1 %__tmp16, label %bb4, label %bb5
bb4:
  %tmp0 = alloca i32, align 4
  store i32 0, i32* %tmp0, align 4
  %__tmp17 = load i32*, i32** %arr_arg, align 4
  %__tmp18 = load i32, i32* %tmp0, align 4
  %__tmp19 = load i32, i32* %i, align 4
  %__tmp20 = call i32 @swap(i32* %__tmp17, i32 %__tmp18, i32 %__tmp19)
  store i32 %__tmp20, i32* %tmp, align 4
  %__tmp21 = load i32, i32* %i, align 4
  %__tmp22 = sub i32 %__tmp21, 1
  store i32 %__tmp22, i32* %tmp, align 4
  %__tmp23 = load i32*, i32** %arr_arg, align 4
  %__tmp24 = load i32, i32* %tmp0, align 4
  %__tmp25 = load i32, i32* %tmp, align 4
  %__tmp26 = call i32 @heap_ajust(i32* %__tmp23, i32 %__tmp24, i32 %__tmp25)
  store i32 %__tmp26, i32* %tmp, align 4
  %__tmp27 = load i32, i32* %i, align 4
  %__tmp28 = sub i32 %__tmp27, 1
  store i32 %__tmp28, i32* %i, align 4
  br label %bb3
bb5:
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
  %__tmp10 = load i32, i32* @n, align 4
  %__tmp11 = call i32 @heap_sort([10 x i32]* %a, i32 %__tmp10)
  store i32 %__tmp11, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp12 = load i32, i32* %i, align 4
  %__tmp13 = load i32, i32* @n, align 4
  %__tmp14 = icmp slt i32 %__tmp12, %__tmp13
  br i1 %__tmp14, label %bb1, label %bb2
bb1:
  %tmp = alloca i32, align 4
  %__tmp15 = load i32, i32* %i, align 4
  %__tmp16 = sext i32 %__tmp15 to i64
  %__tmp17 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %__tmp16
  %__tmp18 = load i32, i32* %__tmp17, align 4
  store i32 %__tmp18, i32* %tmp, align 4
  %__tmp19 = load i32, i32* %tmp, align 4
  %__tmp20 = call i32 @putint(i32 %__tmp19)
  store i32 10, i32* %tmp, align 4
  %__tmp21 = load i32, i32* %tmp, align 4
  %__tmp22 = call i32 @putch(i32 %__tmp21)
  %__tmp23 = load i32, i32* %i, align 4
  %__tmp24 = add i32 %__tmp23, 1
  store i32 %__tmp24, i32* %i, align 4
  br label %bb0
bb2:
  ret i32 0
}

