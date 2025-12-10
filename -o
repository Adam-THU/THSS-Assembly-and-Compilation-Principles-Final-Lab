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
  %__tmp1 = call i32 @putint(i32 %__tmp0)
  %__tmp2 = load i32, i32* %a.1, align 4
  %__tmp3 = call i32 @putint(i32 %__tmp2)
  %__tmp4 = load i32, i32* %a, align 4
  %__tmp5 = call i32 @putint(i32 %__tmp4)
  %__tmp6 = call i32 @putch(i32 10)
  br label %bb0
bb0:
  %__tmp7 = load i32, i32* %a, align 4
  %__tmp8 = icmp slt i32 %__tmp7, 5
  br i1 %__tmp8, label %bb1, label %bb2
bb1:
  %a.2 = alloca i32, align 4
  store i32 0, i32* %a.2, align 4
  %__tmp9 = load i32, i32* %a.2, align 4
  %__tmp10 = add i32 %__tmp9, 1
  store i32 %__tmp10, i32* %a.2, align 4
  %__tmp11 = load i32, i32* %a.2, align 4
  %__tmp12 = trunc i32 %__tmp11 to i1
  br i1 %__tmp12, label %bb3, label %bb4
bb3:
  br label %bb2
bb4:
  br label %bb5
bb5:
  br label %bb0
bb2:
  %__tmp13 = load i32, i32* %a, align 4
  %__tmp14 = call i32 @putint(i32 %__tmp13)
  %__tmp15 = call i32 @putch(i32 10)
  %__tmp16 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 2
  store i32 1, i32* %__tmp16, align 4
  %c = alloca [2 x [8 x i32]], align 4
  store [2 x [8 x i32]] zeroinitializer, [2 x [8 x i32]]* %c, align 4
  %__tmp17 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0
  %__tmp18 = getelementptr inbounds [8 x i32], [8 x i32]* %__tmp17, i64 0, i64 0
  store i32 0, i32* %__tmp18, align 4
  %__tmp19 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0
  %__tmp20 = getelementptr inbounds [8 x i32], [8 x i32]* %__tmp19, i64 0, i64 1
  store i32 9, i32* %__tmp20, align 4
  %__tmp21 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0
  %__tmp22 = getelementptr inbounds [8 x i32], [8 x i32]* %__tmp21, i64 0, i64 2
  store i32 8, i32* %__tmp22, align 4
  %__tmp23 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0
  %__tmp24 = getelementptr inbounds [8 x i32], [8 x i32]* %__tmp23, i64 0, i64 3
  store i32 3, i32* %__tmp24, align 4
  %b = alloca i32, align 4
  store i32 2, i32* %b, align 4
  %__tmp25 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 2
  %__tmp26 = load i32, i32* %__tmp25, align 4
  %__tmp27 = trunc i32 %__tmp26 to i1
  br i1 %__tmp27, label %bb6, label %bb7
bb6:
  %c.1 = alloca [7 x [1 x [5 x i32]]], align 4
  store [7 x [1 x [5 x i32]]] zeroinitializer, [7 x [1 x [5 x i32]]]* %c.1, align 4
  %__tmp28 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 0
  %__tmp29 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp28, i64 0, i64 0
  %__tmp30 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp29, i64 0, i64 0
  store i32 2, i32* %__tmp30, align 4
  %__tmp31 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 0
  %__tmp32 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp31, i64 0, i64 0
  %__tmp33 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp32, i64 0, i64 1
  store i32 1, i32* %__tmp33, align 4
  %__tmp34 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 0
  %__tmp35 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp34, i64 0, i64 0
  %__tmp36 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp35, i64 0, i64 2
  store i32 8, i32* %__tmp36, align 4
  %__tmp37 = load i32, i32* %b, align 4
  %__tmp38 = sext i32 %__tmp37 to i64
  %__tmp39 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 %__tmp38
  %__tmp40 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp39, i64 0, i64 0
  %__tmp41 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp40, i64 0, i64 0
  %__tmp42 = load i32, i32* %__tmp41, align 4
  %__tmp43 = call i32 @putint(i32 %__tmp42)
  %__tmp44 = load i32, i32* %b, align 4
  %__tmp45 = sext i32 %__tmp44 to i64
  %__tmp46 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 %__tmp45
  %__tmp47 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp46, i64 0, i64 0
  %__tmp48 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp47, i64 0, i64 1
  %__tmp49 = load i32, i32* %__tmp48, align 4
  %__tmp50 = call i32 @putint(i32 %__tmp49)
  %__tmp51 = load i32, i32* %b, align 4
  %__tmp52 = sext i32 %__tmp51 to i64
  %__tmp53 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 %__tmp52
  %__tmp54 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %__tmp53, i64 0, i64 0
  %__tmp55 = getelementptr inbounds [5 x i32], [5 x i32]* %__tmp54, i64 0, i64 2
  %__tmp56 = load i32, i32* %__tmp55, align 4
  %__tmp57 = call i32 @putint(i32 %__tmp56)
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp58 = call i32 @putch(i32 10)
  %__tmp59 = load i32, i32* @b, align 4
  %__tmp60 = call i32 @putint(i32 %__tmp59)
  %__tmp61 = call i32 @putch(i32 10)
  %__tmp62 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 0
  %__tmp63 = load i32, i32* %__tmp62, align 4
  %__tmp64 = call i32 @putint(i32 %__tmp63)
  %__tmp65 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 1
  %__tmp66 = load i32, i32* %__tmp65, align 4
  %__tmp67 = call i32 @putint(i32 %__tmp66)
  %__tmp68 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 2
  %__tmp69 = load i32, i32* %__tmp68, align 4
  %__tmp70 = call i32 @putint(i32 %__tmp69)
  %__tmp71 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i64 0, i64 3
  %__tmp72 = load i32, i32* %__tmp71, align 4
  %__tmp73 = call i32 @putint(i32 %__tmp72)
  %__tmp74 = call i32 @putch(i32 10)
  ret i32 0
}

