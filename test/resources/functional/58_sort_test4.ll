; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@n = global i32 0, align 4

define i32 @select_sort(i32* %A, i32 %n) {
select_sortEntry:
  %A_arg = alloca i32*, align 4
  store i32* %A, i32** %A_arg, align 4
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* %n_arg, align 4
  %__tmp2 = sub i32 %__tmp1, 1
  %__tmp3 = icmp slt i32 %__tmp0, %__tmp2
  br i1 %__tmp3, label %bb1, label %bb2
bb1:
  %__tmp4 = load i32, i32* %i, align 4
  store i32 %__tmp4, i32* %min, align 4
  %__tmp5 = load i32, i32* %i, align 4
  %__tmp6 = add i32 %__tmp5, 1
  store i32 %__tmp6, i32* %j, align 4
  br label %bb3
bb3:
  %__tmp7 = load i32, i32* %j, align 4
  %__tmp8 = load i32, i32* %n_arg, align 4
  %__tmp9 = icmp slt i32 %__tmp7, %__tmp8
  br i1 %__tmp9, label %bb4, label %bb5
bb4:
  %__tmp10 = load i32*, i32** %A_arg, align 4
  %__tmp11 = load i32, i32* %min, align 4
  %__tmp12 = sext i32 %__tmp11 to i64
  %__tmp13 = getelementptr inbounds i32, i32* %__tmp10, i64 %__tmp12
  %__tmp14 = load i32, i32* %__tmp13, align 4
  %__tmp15 = load i32*, i32** %A_arg, align 4
  %__tmp16 = load i32, i32* %j, align 4
  %__tmp17 = sext i32 %__tmp16 to i64
  %__tmp18 = getelementptr inbounds i32, i32* %__tmp15, i64 %__tmp17
  %__tmp19 = load i32, i32* %__tmp18, align 4
  %__tmp20 = icmp sgt i32 %__tmp14, %__tmp19
  br i1 %__tmp20, label %bb6, label %bb7
bb6:
  %__tmp21 = load i32, i32* %j, align 4
  store i32 %__tmp21, i32* %min, align 4
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp22 = load i32, i32* %j, align 4
  %__tmp23 = add i32 %__tmp22, 1
  store i32 %__tmp23, i32* %j, align 4
  br label %bb3
bb5:
  %__tmp24 = load i32, i32* %min, align 4
  %__tmp25 = load i32, i32* %i, align 4
  %__tmp26 = icmp ne i32 %__tmp24, %__tmp25
  br i1 %__tmp26, label %bb9, label %bb10
bb9:
  %tmp = alloca i32, align 4
  %__tmp27 = load i32*, i32** %A_arg, align 4
  %__tmp28 = load i32, i32* %min, align 4
  %__tmp29 = sext i32 %__tmp28 to i64
  %__tmp30 = getelementptr inbounds i32, i32* %__tmp27, i64 %__tmp29
  %__tmp31 = load i32, i32* %__tmp30, align 4
  store i32 %__tmp31, i32* %tmp, align 4
  %__tmp32 = load i32*, i32** %A_arg, align 4
  %__tmp33 = load i32, i32* %min, align 4
  %__tmp34 = sext i32 %__tmp33 to i64
  %__tmp35 = getelementptr inbounds i32, i32* %__tmp32, i64 %__tmp34
  %__tmp36 = load i32*, i32** %A_arg, align 4
  %__tmp37 = load i32, i32* %i, align 4
  %__tmp38 = sext i32 %__tmp37 to i64
  %__tmp39 = getelementptr inbounds i32, i32* %__tmp36, i64 %__tmp38
  %__tmp40 = load i32, i32* %__tmp39, align 4
  store i32 %__tmp40, i32* %__tmp35, align 4
  %__tmp41 = load i32*, i32** %A_arg, align 4
  %__tmp42 = load i32, i32* %i, align 4
  %__tmp43 = sext i32 %__tmp42 to i64
  %__tmp44 = getelementptr inbounds i32, i32* %__tmp41, i64 %__tmp43
  %__tmp45 = load i32, i32* %tmp, align 4
  store i32 %__tmp45, i32* %__tmp44, align 4
  br label %bb11
bb10:
  br label %bb11
bb11:
  %__tmp46 = load i32, i32* %i, align 4
  %__tmp47 = add i32 %__tmp46, 1
  store i32 %__tmp47, i32* %i, align 4
  br label %bb0
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
  %__tmp10 = load i32, i32* @n, align 4
  %__tmp11 = call i32 @select_sort([10 x i32]* %a, i32 %__tmp10)
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

