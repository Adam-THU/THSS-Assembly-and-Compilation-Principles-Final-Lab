; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@b = global i32 5, align 4
@c = global [4 x i32] [i32 6, i32 7, i32 8, i32 9], align 4

define i32 @main() {
mainEntry:
  %a = alloca i32, align 4
  store i32 1, i32* %a, align 4
  %a.1 = alloca i32, align 4
  store i32 2, i32* %a.1, align 4
  store i32 3, i32* %a.1, align 4
  %__tmp0 = load i32, i32* %a.1, align 4
  call void @putint(i32 %__tmp0)
  %__tmp1 = load i32, i32* %a.1, align 4
  call void @putint(i32 %__tmp1)
  %__tmp2 = load i32, i32* %a, align 4
  call void @putint(i32 %__tmp2)
  call void @putch(i32 10)
  br label %bb0
bb0:
  %__tmp3 = load i32, i32* %a, align 4
  %__tmp4 = icmp slt i32 %__tmp3, 5
  br i1 %__tmp4, label %bb1, label %bb2
bb1:
  %a.2 = alloca i32, align 4
  store i32 0, i32* %a.2, align 4
  %__tmp5 = load i32, i32* %a.2, align 4
  %__tmp6 = add i32 %__tmp5, 1
  store i32 %__tmp6, i32* %a.2, align 4
  %__tmp7 = load i32, i32* %a.2, align 4
  %__tmp8 = icmp ne i32 %__tmp7, 0
  br i1 %__tmp8, label %bb3, label %bb4
bb3:
  br label %bb2
bb4:
  br label %bb5
bb5:
  br label %bb0
bb2:
  %__tmp9 = load i32, i32* %a, align 4
  call void @putint(i32 %__tmp9)
  call void @putch(i32 10)
  %__tmp10 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 2
  store i32 1, i32* %__tmp10, align 4
  %c = alloca [2 x [8 x i32]], align 4
  store [2 x [8 x i32]] zeroinitializer, [2 x [8 x i32]]* %c, align 4
  %__tmp11 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0
  %__tmp12 = getelementptr inbounds [8 x i32], [8 x i32]* %__tmp11, i64 0, i64 0
  store i32 0, i32* %__tmp12, align 4
  %__tmp13 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0
  %__tmp14 = getelementptr inbounds [8 x i32], [8 x i32]* %__tmp13, i64 0, i64 1
  store i32 9, i32* %__tmp14, align 4
  %__tmp15 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1
  %__tmp16 = getelementptr inbounds [8 x i32], [8 x i32]* %__tmp15, i64 0, i64 0
  store i32 8, i32* %__tmp16, align 4
  %__tmp17 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1
  %__tmp18 = getelementptr inbounds [8 x i32], [8 x i32]* %__tmp17, i64 0, i64 1
  store i32 3, i32* %__tmp18, align 4
  %b = alloca i32, align 4
  store i32 2, i32* %b, align 4
  %__tmp19 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 2
  %__tmp20 = load i32, i32* %__tmp19, align 4
  %__tmp21 = icmp ne i32 %__tmp20, 0
  br i1 %__tmp21, label %bb6, label %bb7
bb6:
  %c.1 = alloca [7 x [1 x [5 x i32]]], align 4
  store [7 x [1 x [5 x i32]]] zeroinitializer, [7 x [1 x [5 x i32]]]* %c.1, align 4
  %__tmp22 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 2
  %__tmp23 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp22, i64 0, i64 0
  %__tmp24 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp23, i64 0, i64 0
  store i32 2, i32* %__tmp24, align 4
  %__tmp25 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 2
  %__tmp26 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp25, i64 0, i64 0
  %__tmp27 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp26, i64 0, i64 1
  store i32 1, i32* %__tmp27, align 4
  %__tmp28 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 2
  %__tmp29 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp28, i64 0, i64 0
  %__tmp30 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp29, i64 0, i64 2
  store i32 8, i32* %__tmp30, align 4
  %__tmp31 = load i32, i32* %b, align 4
  %__tmp32 = sext i32 %__tmp31 to i64
  %__tmp33 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 %__tmp32
  %__tmp34 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp33, i64 0, i64 0
  %__tmp35 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp34, i64 0, i64 0
  %__tmp36 = load i32, i32* %__tmp35, align 4
  call void @putint(i32 %__tmp36)
  %__tmp37 = load i32, i32* %b, align 4
  %__tmp38 = sext i32 %__tmp37 to i64
  %__tmp39 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 %__tmp38
  %__tmp40 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp39, i64 0, i64 0
  %__tmp41 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp40, i64 0, i64 1
  %__tmp42 = load i32, i32* %__tmp41, align 4
  call void @putint(i32 %__tmp42)
  %__tmp43 = load i32, i32* %b, align 4
  %__tmp44 = sext i32 %__tmp43 to i64
  %__tmp45 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 %__tmp44
  %__tmp46 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp45, i64 0, i64 0
  %__tmp47 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp46, i64 0, i64 2
  %__tmp48 = load i32, i32* %__tmp47, align 4
  call void @putint(i32 %__tmp48)
  br label %bb8
bb7:
  br label %bb8
bb8:
  call void @putch(i32 10)
  %__tmp49 = load i32, i32* @b, align 4
  call void @putint(i32 %__tmp49)
  call void @putch(i32 10)
  %__tmp50 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 0
  %__tmp51 = load i32, i32* %__tmp50, align 4
  call void @putint(i32 %__tmp51)
  %__tmp52 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 1
  %__tmp53 = load i32, i32* %__tmp52, align 4
  call void @putint(i32 %__tmp53)
  %__tmp54 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 2
  %__tmp55 = load i32, i32* %__tmp54, align 4
  call void @putint(i32 %__tmp55)
  %__tmp56 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 3
  %__tmp57 = load i32, i32* %__tmp56, align 4
  call void @putint(i32 %__tmp57)
  call void @putch(i32 10)
  ret i32 0
}

