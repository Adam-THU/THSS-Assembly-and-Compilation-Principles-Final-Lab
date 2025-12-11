; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@arr1 = global [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]] zeroinitializer, align 4
@arr2 = global [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]] zeroinitializer, align 4

define void @loop1(i32 %x, i32 %y) {
loop1Entry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %y_arg = alloca i32, align 4
  store i32 %y, i32* %y_arg, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 0, i32* %a, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = load i32, i32* %x_arg, align 4
  %__tmp2 = icmp slt i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb3, label %bb5
bb5:
  br label %bb4
bb3:
  %__tmp3 = load i32, i32* %a, align 4
  %__tmp4 = load i32, i32* %y_arg, align 4
  %__tmp5 = icmp slt i32 %__tmp3, %__tmp4
  br label %bb4
bb4:
  %__tmp6 = phi i1 [ 0, %bb5 ], [ %__tmp5, %bb3 ]
  br i1 %__tmp6, label %bb1, label %bb2
bb1:
  store i32 0, i32* %b, align 4
  br label %bb6
bb6:
  %__tmp7 = load i32, i32* %b, align 4
  %__tmp8 = icmp slt i32 %__tmp7, 2
  br i1 %__tmp8, label %bb7, label %bb8
bb7:
  store i32 0, i32* %c, align 4
  br label %bb9
bb9:
  %__tmp9 = load i32, i32* %c, align 4
  %__tmp10 = icmp slt i32 %__tmp9, 3
  br i1 %__tmp10, label %bb10, label %bb11
bb10:
  store i32 0, i32* %d, align 4
  br label %bb12
bb12:
  %__tmp11 = load i32, i32* %d, align 4
  %__tmp12 = icmp slt i32 %__tmp11, 4
  br i1 %__tmp12, label %bb13, label %bb14
bb13:
  store i32 0, i32* %e, align 4
  br label %bb15
bb15:
  %__tmp13 = load i32, i32* %e, align 4
  %__tmp14 = icmp slt i32 %__tmp13, 5
  br i1 %__tmp14, label %bb16, label %bb17
bb16:
  store i32 0, i32* %f, align 4
  br label %bb18
bb18:
  %__tmp15 = load i32, i32* %f, align 4
  %__tmp16 = icmp slt i32 %__tmp15, 6
  br i1 %__tmp16, label %bb19, label %bb20
bb19:
  store i32 0, i32* %g, align 4
  br label %bb21
bb21:
  %__tmp17 = load i32, i32* %g, align 4
  %__tmp18 = icmp slt i32 %__tmp17, 2
  br i1 %__tmp18, label %bb22, label %bb23
bb22:
  %__tmp19 = load i32, i32* %a, align 4
  %__tmp20 = sext i32 %__tmp19 to i64
  %__tmp21 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %__tmp20
  %__tmp22 = load i32, i32* %b, align 4
  %__tmp23 = sext i32 %__tmp22 to i64
  %__tmp24 = getelementptr inbounds [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]* %__tmp21, i64 0, i64 %__tmp23
  %__tmp25 = load i32, i32* %c, align 4
  %__tmp26 = sext i32 %__tmp25 to i64
  %__tmp27 = getelementptr inbounds [3 x [4 x [5 x [6 x [2 x i32]]]]], [3 x [4 x [5 x [6 x [2 x i32]]]]]* %__tmp24, i64 0, i64 %__tmp26
  %__tmp28 = load i32, i32* %d, align 4
  %__tmp29 = sext i32 %__tmp28 to i64
  %__tmp30 = getelementptr inbounds [4 x [5 x [6 x [2 x i32]]]], [4 x [5 x [6 x [2 x i32]]]]* %__tmp27, i64 0, i64 %__tmp29
  %__tmp31 = load i32, i32* %e, align 4
  %__tmp32 = sext i32 %__tmp31 to i64
  %__tmp33 = getelementptr inbounds [5 x [6 x [2 x i32]]], [5 x [6 x [2 x i32]]]* %__tmp30, i64 0, i64 %__tmp32
  %__tmp34 = load i32, i32* %f, align 4
  %__tmp35 = sext i32 %__tmp34 to i64
  %__tmp36 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %__tmp33, i64 0, i64 %__tmp35
  %__tmp37 = load i32, i32* %g, align 4
  %__tmp38 = sext i32 %__tmp37 to i64
  %__tmp39 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp36, i64 0, i64 %__tmp38
  %__tmp40 = load i32, i32* %a, align 4
  %__tmp41 = load i32, i32* %b, align 4
  %__tmp42 = add i32 %__tmp40, %__tmp41
  %__tmp43 = load i32, i32* %c, align 4
  %__tmp44 = add i32 %__tmp42, %__tmp43
  %__tmp45 = load i32, i32* %d, align 4
  %__tmp46 = add i32 %__tmp44, %__tmp45
  %__tmp47 = load i32, i32* %e, align 4
  %__tmp48 = add i32 %__tmp46, %__tmp47
  %__tmp49 = load i32, i32* %f, align 4
  %__tmp50 = add i32 %__tmp48, %__tmp49
  %__tmp51 = load i32, i32* %g, align 4
  %__tmp52 = add i32 %__tmp50, %__tmp51
  %__tmp53 = load i32, i32* %x_arg, align 4
  %__tmp54 = add i32 %__tmp52, %__tmp53
  %__tmp55 = load i32, i32* %y_arg, align 4
  %__tmp56 = add i32 %__tmp54, %__tmp55
  store i32 %__tmp56, i32* %__tmp39, align 4
  %__tmp57 = load i32, i32* %g, align 4
  %__tmp58 = add i32 %__tmp57, 1
  store i32 %__tmp58, i32* %g, align 4
  br label %bb21
bb23:
  %__tmp59 = load i32, i32* %f, align 4
  %__tmp60 = add i32 %__tmp59, 1
  store i32 %__tmp60, i32* %f, align 4
  br label %bb18
bb20:
  %__tmp61 = load i32, i32* %e, align 4
  %__tmp62 = add i32 %__tmp61, 1
  store i32 %__tmp62, i32* %e, align 4
  br label %bb15
bb17:
  %__tmp63 = load i32, i32* %d, align 4
  %__tmp64 = add i32 %__tmp63, 1
  store i32 %__tmp64, i32* %d, align 4
  br label %bb12
bb14:
  %__tmp65 = load i32, i32* %c, align 4
  %__tmp66 = add i32 %__tmp65, 1
  store i32 %__tmp66, i32* %c, align 4
  br label %bb9
bb11:
  %__tmp67 = load i32, i32* %b, align 4
  %__tmp68 = add i32 %__tmp67, 1
  store i32 %__tmp68, i32* %b, align 4
  br label %bb6
bb8:
  %__tmp69 = load i32, i32* %a, align 4
  %__tmp70 = add i32 %__tmp69, 1
  store i32 %__tmp70, i32* %a, align 4
  br label %bb0
bb2:
  ret void
}

define void @loop2() {
loop2Entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 0, i32* %a, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 10
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  store i32 0, i32* %b, align 4
  br label %bb3
bb3:
  %__tmp2 = load i32, i32* %b, align 4
  %__tmp3 = icmp slt i32 %__tmp2, 2
  br i1 %__tmp3, label %bb4, label %bb5
bb4:
  store i32 0, i32* %c, align 4
  br label %bb6
bb6:
  %__tmp4 = load i32, i32* %c, align 4
  %__tmp5 = icmp slt i32 %__tmp4, 3
  br i1 %__tmp5, label %bb7, label %bb8
bb7:
  store i32 0, i32* %d, align 4
  br label %bb9
bb9:
  %__tmp6 = load i32, i32* %d, align 4
  %__tmp7 = icmp slt i32 %__tmp6, 2
  br i1 %__tmp7, label %bb10, label %bb11
bb10:
  store i32 0, i32* %e, align 4
  br label %bb12
bb12:
  %__tmp8 = load i32, i32* %e, align 4
  %__tmp9 = icmp slt i32 %__tmp8, 4
  br i1 %__tmp9, label %bb13, label %bb14
bb13:
  store i32 0, i32* %f, align 4
  br label %bb15
bb15:
  %__tmp10 = load i32, i32* %f, align 4
  %__tmp11 = icmp slt i32 %__tmp10, 8
  br i1 %__tmp11, label %bb16, label %bb17
bb16:
  store i32 0, i32* %g, align 4
  br label %bb18
bb18:
  %__tmp12 = load i32, i32* %g, align 4
  %__tmp13 = icmp slt i32 %__tmp12, 7
  br i1 %__tmp13, label %bb19, label %bb20
bb19:
  %__tmp14 = load i32, i32* %a, align 4
  %__tmp15 = sext i32 %__tmp14 to i64
  %__tmp16 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %__tmp15
  %__tmp17 = load i32, i32* %b, align 4
  %__tmp18 = sext i32 %__tmp17 to i64
  %__tmp19 = getelementptr inbounds [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]* %__tmp16, i64 0, i64 %__tmp18
  %__tmp20 = load i32, i32* %c, align 4
  %__tmp21 = sext i32 %__tmp20 to i64
  %__tmp22 = getelementptr inbounds [3 x [2 x [4 x [8 x [7 x i32]]]]], [3 x [2 x [4 x [8 x [7 x i32]]]]]* %__tmp19, i64 0, i64 %__tmp21
  %__tmp23 = load i32, i32* %d, align 4
  %__tmp24 = sext i32 %__tmp23 to i64
  %__tmp25 = getelementptr inbounds [2 x [4 x [8 x [7 x i32]]]], [2 x [4 x [8 x [7 x i32]]]]* %__tmp22, i64 0, i64 %__tmp24
  %__tmp26 = load i32, i32* %e, align 4
  %__tmp27 = sext i32 %__tmp26 to i64
  %__tmp28 = getelementptr inbounds [4 x [8 x [7 x i32]]], [4 x [8 x [7 x i32]]]* %__tmp25, i64 0, i64 %__tmp27
  %__tmp29 = load i32, i32* %f, align 4
  %__tmp30 = sext i32 %__tmp29 to i64
  %__tmp31 = getelementptr inbounds [8 x [7 x i32]], [8 x [7 x i32]]* %__tmp28, i64 0, i64 %__tmp30
  %__tmp32 = load i32, i32* %g, align 4
  %__tmp33 = sext i32 %__tmp32 to i64
  %__tmp34 = getelementptr inbounds [7 x i32], [7 x i32]* %__tmp31, i64 0, i64 %__tmp33
  %__tmp35 = load i32, i32* %a, align 4
  %__tmp36 = load i32, i32* %b, align 4
  %__tmp37 = add i32 %__tmp35, %__tmp36
  %__tmp38 = load i32, i32* %d, align 4
  %__tmp39 = add i32 %__tmp37, %__tmp38
  %__tmp40 = load i32, i32* %g, align 4
  %__tmp41 = add i32 %__tmp39, %__tmp40
  store i32 %__tmp41, i32* %__tmp34, align 4
  %__tmp42 = load i32, i32* %g, align 4
  %__tmp43 = add i32 %__tmp42, 1
  store i32 %__tmp43, i32* %g, align 4
  br label %bb18
bb20:
  %__tmp44 = load i32, i32* %f, align 4
  %__tmp45 = add i32 %__tmp44, 1
  store i32 %__tmp45, i32* %f, align 4
  br label %bb15
bb17:
  %__tmp46 = load i32, i32* %e, align 4
  %__tmp47 = add i32 %__tmp46, 1
  store i32 %__tmp47, i32* %e, align 4
  br label %bb12
bb14:
  %__tmp48 = load i32, i32* %d, align 4
  %__tmp49 = add i32 %__tmp48, 1
  store i32 %__tmp49, i32* %d, align 4
  br label %bb9
bb11:
  %__tmp50 = load i32, i32* %c, align 4
  %__tmp51 = add i32 %__tmp50, 1
  store i32 %__tmp51, i32* %c, align 4
  br label %bb6
bb8:
  %__tmp52 = load i32, i32* %b, align 4
  %__tmp53 = add i32 %__tmp52, 1
  store i32 %__tmp53, i32* %b, align 4
  br label %bb3
bb5:
  %__tmp54 = load i32, i32* %a, align 4
  %__tmp55 = add i32 %__tmp54, 1
  store i32 %__tmp55, i32* %a, align 4
  br label %bb0
bb2:
  ret void
}

define i32 @loop3(i32 %h, i32 %i, i32 %j, i32 %k, i32 %l, i32 %m, i32 %n) {
loop3Entry:
  %h_arg = alloca i32, align 4
  store i32 %h, i32* %h_arg, align 4
  %i_arg = alloca i32, align 4
  store i32 %i, i32* %i_arg, align 4
  %j_arg = alloca i32, align 4
  store i32 %j, i32* %j_arg, align 4
  %k_arg = alloca i32, align 4
  store i32 %k, i32* %k_arg, align 4
  %l_arg = alloca i32, align 4
  store i32 %l, i32* %l_arg, align 4
  %m_arg = alloca i32, align 4
  store i32 %m, i32* %m_arg, align 4
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %ans = alloca i32, align 4
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %a, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 10
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  store i32 0, i32* %b, align 4
  br label %bb3
bb3:
  %__tmp2 = load i32, i32* %b, align 4
  %__tmp3 = icmp slt i32 %__tmp2, 100
  br i1 %__tmp3, label %bb4, label %bb5
bb4:
  store i32 0, i32* %c, align 4
  br label %bb6
bb6:
  %__tmp4 = load i32, i32* %c, align 4
  %__tmp5 = icmp slt i32 %__tmp4, 1000
  br i1 %__tmp5, label %bb7, label %bb8
bb7:
  store i32 0, i32* %d, align 4
  br label %bb9
bb9:
  %__tmp6 = load i32, i32* %d, align 4
  %__tmp7 = icmp slt i32 %__tmp6, 10000
  br i1 %__tmp7, label %bb10, label %bb11
bb10:
  store i32 0, i32* %e, align 4
  br label %bb12
bb12:
  %__tmp8 = load i32, i32* %e, align 4
  %__tmp9 = icmp slt i32 %__tmp8, 100000
  br i1 %__tmp9, label %bb13, label %bb14
bb13:
  store i32 0, i32* %f, align 4
  br label %bb15
bb15:
  %__tmp10 = load i32, i32* %f, align 4
  %__tmp11 = icmp slt i32 %__tmp10, 1000000
  br i1 %__tmp11, label %bb16, label %bb17
bb16:
  store i32 0, i32* %g, align 4
  br label %bb18
bb18:
  %__tmp12 = load i32, i32* %g, align 4
  %__tmp13 = icmp slt i32 %__tmp12, 10000000
  br i1 %__tmp13, label %bb19, label %bb20
bb19:
  %__tmp14 = load i32, i32* %ans, align 4
  %__tmp15 = srem i32 %__tmp14, 817
  %__tmp16 = load i32, i32* %a, align 4
  %__tmp17 = sext i32 %__tmp16 to i64
  %__tmp18 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %__tmp17
  %__tmp19 = load i32, i32* %b, align 4
  %__tmp20 = sext i32 %__tmp19 to i64
  %__tmp21 = getelementptr inbounds [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]* %__tmp18, i64 0, i64 %__tmp20
  %__tmp22 = load i32, i32* %c, align 4
  %__tmp23 = sext i32 %__tmp22 to i64
  %__tmp24 = getelementptr inbounds [3 x [4 x [5 x [6 x [2 x i32]]]]], [3 x [4 x [5 x [6 x [2 x i32]]]]]* %__tmp21, i64 0, i64 %__tmp23
  %__tmp25 = load i32, i32* %d, align 4
  %__tmp26 = sext i32 %__tmp25 to i64
  %__tmp27 = getelementptr inbounds [4 x [5 x [6 x [2 x i32]]]], [4 x [5 x [6 x [2 x i32]]]]* %__tmp24, i64 0, i64 %__tmp26
  %__tmp28 = load i32, i32* %e, align 4
  %__tmp29 = sext i32 %__tmp28 to i64
  %__tmp30 = getelementptr inbounds [5 x [6 x [2 x i32]]], [5 x [6 x [2 x i32]]]* %__tmp27, i64 0, i64 %__tmp29
  %__tmp31 = load i32, i32* %f, align 4
  %__tmp32 = sext i32 %__tmp31 to i64
  %__tmp33 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %__tmp30, i64 0, i64 %__tmp32
  %__tmp34 = load i32, i32* %g, align 4
  %__tmp35 = sext i32 %__tmp34 to i64
  %__tmp36 = getelementptr inbounds [2 x i32], [2 x i32]* %__tmp33, i64 0, i64 %__tmp35
  %__tmp37 = load i32, i32* %__tmp36, align 4
  %__tmp38 = add i32 %__tmp15, %__tmp37
  %__tmp39 = load i32, i32* %a, align 4
  %__tmp40 = sext i32 %__tmp39 to i64
  %__tmp41 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %__tmp40
  %__tmp42 = load i32, i32* %b, align 4
  %__tmp43 = sext i32 %__tmp42 to i64
  %__tmp44 = getelementptr inbounds [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]* %__tmp41, i64 0, i64 %__tmp43
  %__tmp45 = load i32, i32* %c, align 4
  %__tmp46 = sext i32 %__tmp45 to i64
  %__tmp47 = getelementptr inbounds [3 x [2 x [4 x [8 x [7 x i32]]]]], [3 x [2 x [4 x [8 x [7 x i32]]]]]* %__tmp44, i64 0, i64 %__tmp46
  %__tmp48 = load i32, i32* %d, align 4
  %__tmp49 = sext i32 %__tmp48 to i64
  %__tmp50 = getelementptr inbounds [2 x [4 x [8 x [7 x i32]]]], [2 x [4 x [8 x [7 x i32]]]]* %__tmp47, i64 0, i64 %__tmp49
  %__tmp51 = load i32, i32* %e, align 4
  %__tmp52 = sext i32 %__tmp51 to i64
  %__tmp53 = getelementptr inbounds [4 x [8 x [7 x i32]]], [4 x [8 x [7 x i32]]]* %__tmp50, i64 0, i64 %__tmp52
  %__tmp54 = load i32, i32* %f, align 4
  %__tmp55 = sext i32 %__tmp54 to i64
  %__tmp56 = getelementptr inbounds [8 x [7 x i32]], [8 x [7 x i32]]* %__tmp53, i64 0, i64 %__tmp55
  %__tmp57 = load i32, i32* %g, align 4
  %__tmp58 = sext i32 %__tmp57 to i64
  %__tmp59 = getelementptr inbounds [7 x i32], [7 x i32]* %__tmp56, i64 0, i64 %__tmp58
  %__tmp60 = load i32, i32* %__tmp59, align 4
  %__tmp61 = add i32 %__tmp38, %__tmp60
  store i32 %__tmp61, i32* %ans, align 4
  %__tmp62 = load i32, i32* %g, align 4
  %__tmp63 = add i32 %__tmp62, 1
  store i32 %__tmp63, i32* %g, align 4
  %__tmp64 = load i32, i32* %g, align 4
  %__tmp65 = load i32, i32* %n_arg, align 4
  %__tmp66 = icmp sge i32 %__tmp64, %__tmp65
  br i1 %__tmp66, label %bb21, label %bb22
bb21:
  br label %bb20
bb22:
  br label %bb23
bb23:
  br label %bb18
bb20:
  %__tmp67 = load i32, i32* %f, align 4
  %__tmp68 = add i32 %__tmp67, 1
  store i32 %__tmp68, i32* %f, align 4
  %__tmp69 = load i32, i32* %f, align 4
  %__tmp70 = load i32, i32* %m_arg, align 4
  %__tmp71 = icmp sge i32 %__tmp69, %__tmp70
  br i1 %__tmp71, label %bb24, label %bb25
bb24:
  br label %bb17
bb25:
  br label %bb26
bb26:
  br label %bb15
bb17:
  %__tmp72 = load i32, i32* %e, align 4
  %__tmp73 = add i32 %__tmp72, 1
  store i32 %__tmp73, i32* %e, align 4
  %__tmp74 = load i32, i32* %e, align 4
  %__tmp75 = load i32, i32* %l_arg, align 4
  %__tmp76 = icmp sge i32 %__tmp74, %__tmp75
  br i1 %__tmp76, label %bb27, label %bb28
bb27:
  br label %bb14
bb28:
  br label %bb29
bb29:
  br label %bb12
bb14:
  %__tmp77 = load i32, i32* %d, align 4
  %__tmp78 = add i32 %__tmp77, 1
  store i32 %__tmp78, i32* %d, align 4
  %__tmp79 = load i32, i32* %d, align 4
  %__tmp80 = load i32, i32* %k_arg, align 4
  %__tmp81 = icmp sge i32 %__tmp79, %__tmp80
  br i1 %__tmp81, label %bb30, label %bb31
bb30:
  br label %bb11
bb31:
  br label %bb32
bb32:
  br label %bb9
bb11:
  %__tmp82 = load i32, i32* %c, align 4
  %__tmp83 = add i32 %__tmp82, 1
  store i32 %__tmp83, i32* %c, align 4
  %__tmp84 = load i32, i32* %c, align 4
  %__tmp85 = load i32, i32* %j_arg, align 4
  %__tmp86 = icmp sge i32 %__tmp84, %__tmp85
  br i1 %__tmp86, label %bb33, label %bb34
bb33:
  br label %bb8
bb34:
  br label %bb35
bb35:
  br label %bb6
bb8:
  %__tmp87 = load i32, i32* %b, align 4
  %__tmp88 = add i32 %__tmp87, 1
  store i32 %__tmp88, i32* %b, align 4
  %__tmp89 = load i32, i32* %b, align 4
  %__tmp90 = load i32, i32* %i_arg, align 4
  %__tmp91 = icmp sge i32 %__tmp89, %__tmp90
  br i1 %__tmp91, label %bb36, label %bb37
bb36:
  br label %bb5
bb37:
  br label %bb38
bb38:
  br label %bb3
bb5:
  %__tmp92 = load i32, i32* %a, align 4
  %__tmp93 = add i32 %__tmp92, 1
  store i32 %__tmp93, i32* %a, align 4
  %__tmp94 = load i32, i32* %a, align 4
  %__tmp95 = load i32, i32* %h_arg, align 4
  %__tmp96 = icmp sge i32 %__tmp94, %__tmp95
  br i1 %__tmp96, label %bb39, label %bb40
bb39:
  br label %bb2
bb40:
  br label %bb41
bb41:
  br label %bb0
bb2:
  %__tmp97 = load i32, i32* %ans, align 4
  ret i32 %__tmp97
}

define i32 @main() {
mainEntry:
  %x = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %x, align 4
  %y = alloca i32, align 4
  %__tmp1 = call i32 @getint()
  store i32 %__tmp1, i32* %y, align 4
  %h = alloca i32, align 4
  %__tmp2 = call i32 @getint()
  store i32 %__tmp2, i32* %h, align 4
  %i = alloca i32, align 4
  %__tmp3 = call i32 @getint()
  store i32 %__tmp3, i32* %i, align 4
  %j = alloca i32, align 4
  %__tmp4 = call i32 @getint()
  store i32 %__tmp4, i32* %j, align 4
  %k = alloca i32, align 4
  %__tmp5 = call i32 @getint()
  store i32 %__tmp5, i32* %k, align 4
  %l = alloca i32, align 4
  %__tmp6 = call i32 @getint()
  store i32 %__tmp6, i32* %l, align 4
  %m = alloca i32, align 4
  %__tmp7 = call i32 @getint()
  store i32 %__tmp7, i32* %m, align 4
  %n = alloca i32, align 4
  %__tmp8 = call i32 @getint()
  store i32 %__tmp8, i32* %n, align 4
  %__tmp9 = load i32, i32* %x, align 4
  %__tmp10 = load i32, i32* %y, align 4
  call void @loop1(i32 %__tmp9, i32 %__tmp10)
  call void @loop2()
  %__tmp11 = load i32, i32* %h, align 4
  %__tmp12 = load i32, i32* %i, align 4
  %__tmp13 = load i32, i32* %j, align 4
  %__tmp14 = load i32, i32* %k, align 4
  %__tmp15 = load i32, i32* %l, align 4
  %__tmp16 = load i32, i32* %m, align 4
  %__tmp17 = load i32, i32* %n, align 4
  %__tmp18 = call i32 @loop3(i32 %__tmp11, i32 %__tmp12, i32 %__tmp13, i32 %__tmp14, i32 %__tmp15, i32 %__tmp16, i32 %__tmp17)
  ret i32 %__tmp18
}

