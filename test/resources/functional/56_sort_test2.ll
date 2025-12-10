; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@n = global i32 0, align 4

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
  %__tmp10 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %__tmp11 = call i32 @insertsort(i32* %__tmp10)
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

