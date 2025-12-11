; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@INF = global i32 65535, align 4
@e = global [16 x [16 x i32]] zeroinitializer, align 4
@book = global [16 x i32] zeroinitializer, align 4
@dis = global [16 x i32] zeroinitializer, align 4
@n = global i32 0, align 4
@m = global i32 0, align 4
@v1 = global i32 0, align 4
@v2 = global i32 0, align 4
@w = global i32 0, align 4

define void @Dijkstra() {
DijkstraEntry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %i, align 4
  %__tmp1 = load i32, i32* @n, align 4
  %__tmp2 = icmp sle i32 %__tmp0, %__tmp1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = load i32, i32* %i, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %__tmp4
  %__tmp6 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 1
  %__tmp7 = load i32, i32* %i, align 4
  %__tmp8 = sext i32 %__tmp7 to i64
  %__tmp9 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp6, i64 0, i64 %__tmp8
  %__tmp10 = load i32, i32* %__tmp9, align 4
  store i32 %__tmp10, i32* %__tmp5, align 4
  %__tmp11 = load i32, i32* %i, align 4
  %__tmp12 = sext i32 %__tmp11 to i64
  %__tmp13 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %__tmp12
  store i32 0, i32* %__tmp13, align 4
  %__tmp14 = load i32, i32* %i, align 4
  %__tmp15 = add i32 %__tmp14, 1
  store i32 %__tmp15, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp16 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 1
  store i32 1, i32* %__tmp16, align 4
  store i32 1, i32* %i, align 4
  br label %bb3
bb3:
  %__tmp17 = load i32, i32* %i, align 4
  %__tmp18 = load i32, i32* @n, align 4
  %__tmp19 = sub i32 %__tmp18, 1
  %__tmp20 = icmp sle i32 %__tmp17, %__tmp19
  br i1 %__tmp20, label %bb4, label %bb5
bb4:
  %min_num = alloca i32, align 4
  store i32 65535, i32* %min_num, align 4
  %min_index = alloca i32, align 4
  store i32 0, i32* %min_index, align 4
  %k = alloca i32, align 4
  store i32 1, i32* %k, align 4
  br label %bb6
bb6:
  %__tmp21 = load i32, i32* %k, align 4
  %__tmp22 = load i32, i32* @n, align 4
  %__tmp23 = icmp sle i32 %__tmp21, %__tmp22
  br i1 %__tmp23, label %bb7, label %bb8
bb7:
  %__tmp24 = load i32, i32* %min_num, align 4
  %__tmp25 = load i32, i32* %k, align 4
  %__tmp26 = sext i32 %__tmp25 to i64
  %__tmp27 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %__tmp26
  %__tmp28 = load i32, i32* %__tmp27, align 4
  %__tmp29 = icmp sgt i32 %__tmp24, %__tmp28
  br i1 %__tmp29, label %bb12, label %bb14
bb14:
  br label %bb13
bb12:
  %__tmp30 = load i32, i32* %k, align 4
  %__tmp31 = sext i32 %__tmp30 to i64
  %__tmp32 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %__tmp31
  %__tmp33 = load i32, i32* %__tmp32, align 4
  %__tmp34 = icmp eq i32 %__tmp33, 0
  br label %bb13
bb13:
  %__tmp35 = phi i1 [ 0, %bb14 ], [ %__tmp34, %bb12 ]
  br i1 %__tmp35, label %bb9, label %bb10
bb9:
  %__tmp36 = load i32, i32* %k, align 4
  %__tmp37 = sext i32 %__tmp36 to i64
  %__tmp38 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %__tmp37
  %__tmp39 = load i32, i32* %__tmp38, align 4
  store i32 %__tmp39, i32* %min_num, align 4
  %__tmp40 = load i32, i32* %k, align 4
  store i32 %__tmp40, i32* %min_index, align 4
  br label %bb11
bb10:
  br label %bb11
bb11:
  %__tmp41 = load i32, i32* %k, align 4
  %__tmp42 = add i32 %__tmp41, 1
  store i32 %__tmp42, i32* %k, align 4
  br label %bb6
bb8:
  %__tmp43 = load i32, i32* %min_index, align 4
  %__tmp44 = sext i32 %__tmp43 to i64
  %__tmp45 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %__tmp44
  store i32 1, i32* %__tmp45, align 4
  %j.1 = alloca i32, align 4
  store i32 1, i32* %j.1, align 4
  br label %bb15
bb15:
  %__tmp46 = load i32, i32* %j.1, align 4
  %__tmp47 = load i32, i32* @n, align 4
  %__tmp48 = icmp sle i32 %__tmp46, %__tmp47
  br i1 %__tmp48, label %bb16, label %bb17
bb16:
  %__tmp49 = load i32, i32* %min_index, align 4
  %__tmp50 = sext i32 %__tmp49 to i64
  %__tmp51 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %__tmp50
  %__tmp52 = load i32, i32* %j.1, align 4
  %__tmp53 = sext i32 %__tmp52 to i64
  %__tmp54 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp51, i64 0, i64 %__tmp53
  %__tmp55 = load i32, i32* %__tmp54, align 4
  %__tmp56 = icmp slt i32 %__tmp55, 65535
  br i1 %__tmp56, label %bb18, label %bb19
bb18:
  %__tmp57 = load i32, i32* %j.1, align 4
  %__tmp58 = sext i32 %__tmp57 to i64
  %__tmp59 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %__tmp58
  %__tmp60 = load i32, i32* %__tmp59, align 4
  %__tmp61 = load i32, i32* %min_index, align 4
  %__tmp62 = sext i32 %__tmp61 to i64
  %__tmp63 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %__tmp62
  %__tmp64 = load i32, i32* %__tmp63, align 4
  %__tmp65 = load i32, i32* %min_index, align 4
  %__tmp66 = sext i32 %__tmp65 to i64
  %__tmp67 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %__tmp66
  %__tmp68 = load i32, i32* %j.1, align 4
  %__tmp69 = sext i32 %__tmp68 to i64
  %__tmp70 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp67, i64 0, i64 %__tmp69
  %__tmp71 = load i32, i32* %__tmp70, align 4
  %__tmp72 = add i32 %__tmp64, %__tmp71
  %__tmp73 = icmp sgt i32 %__tmp60, %__tmp72
  br i1 %__tmp73, label %bb21, label %bb22
bb21:
  %__tmp74 = load i32, i32* %j.1, align 4
  %__tmp75 = sext i32 %__tmp74 to i64
  %__tmp76 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %__tmp75
  %__tmp77 = load i32, i32* %min_index, align 4
  %__tmp78 = sext i32 %__tmp77 to i64
  %__tmp79 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %__tmp78
  %__tmp80 = load i32, i32* %__tmp79, align 4
  %__tmp81 = load i32, i32* %min_index, align 4
  %__tmp82 = sext i32 %__tmp81 to i64
  %__tmp83 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %__tmp82
  %__tmp84 = load i32, i32* %j.1, align 4
  %__tmp85 = sext i32 %__tmp84 to i64
  %__tmp86 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp83, i64 0, i64 %__tmp85
  %__tmp87 = load i32, i32* %__tmp86, align 4
  %__tmp88 = add i32 %__tmp80, %__tmp87
  store i32 %__tmp88, i32* %__tmp76, align 4
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %__tmp89 = load i32, i32* %j.1, align 4
  %__tmp90 = add i32 %__tmp89, 1
  store i32 %__tmp90, i32* %j.1, align 4
  br label %bb15
bb17:
  %__tmp91 = load i32, i32* %i, align 4
  %__tmp92 = add i32 %__tmp91, 1
  store i32 %__tmp92, i32* %i, align 4
  br label %bb3
bb5:
  ret void
}

define i32 @main() {
mainEntry:
  %i = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* @n, align 4
  %__tmp1 = call i32 @getint()
  store i32 %__tmp1, i32* @m, align 4
  store i32 1, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = load i32, i32* @n, align 4
  %__tmp4 = icmp sle i32 %__tmp2, %__tmp3
  br i1 %__tmp4, label %bb1, label %bb2
bb1:
  %j = alloca i32, align 4
  store i32 1, i32* %j, align 4
  br label %bb3
bb3:
  %__tmp5 = load i32, i32* %j, align 4
  %__tmp6 = load i32, i32* @n, align 4
  %__tmp7 = icmp sle i32 %__tmp5, %__tmp6
  br i1 %__tmp7, label %bb4, label %bb5
bb4:
  %__tmp8 = load i32, i32* %i, align 4
  %__tmp9 = load i32, i32* %j, align 4
  %__tmp10 = icmp eq i32 %__tmp8, %__tmp9
  br i1 %__tmp10, label %bb6, label %bb7
bb6:
  %__tmp11 = load i32, i32* %i, align 4
  %__tmp12 = sext i32 %__tmp11 to i64
  %__tmp13 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %__tmp12
  %__tmp14 = load i32, i32* %j, align 4
  %__tmp15 = sext i32 %__tmp14 to i64
  %__tmp16 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp13, i64 0, i64 %__tmp15
  store i32 0, i32* %__tmp16, align 4
  br label %bb8
bb7:
  %__tmp17 = load i32, i32* %i, align 4
  %__tmp18 = sext i32 %__tmp17 to i64
  %__tmp19 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %__tmp18
  %__tmp20 = load i32, i32* %j, align 4
  %__tmp21 = sext i32 %__tmp20 to i64
  %__tmp22 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp19, i64 0, i64 %__tmp21
  store i32 65535, i32* %__tmp22, align 4
  br label %bb8
bb8:
  %__tmp23 = load i32, i32* %j, align 4
  %__tmp24 = add i32 %__tmp23, 1
  store i32 %__tmp24, i32* %j, align 4
  br label %bb3
bb5:
  %__tmp25 = load i32, i32* %i, align 4
  %__tmp26 = add i32 %__tmp25, 1
  store i32 %__tmp26, i32* %i, align 4
  br label %bb0
bb2:
  store i32 1, i32* %i, align 4
  br label %bb9
bb9:
  %__tmp27 = load i32, i32* %i, align 4
  %__tmp28 = load i32, i32* @m, align 4
  %__tmp29 = icmp sle i32 %__tmp27, %__tmp28
  br i1 %__tmp29, label %bb10, label %bb11
bb10:
  %u = alloca i32, align 4
  %__tmp30 = call i32 @getint()
  store i32 %__tmp30, i32* %u, align 4
  %v = alloca i32, align 4
  %__tmp31 = call i32 @getint()
  store i32 %__tmp31, i32* %v, align 4
  %__tmp32 = load i32, i32* %u, align 4
  %__tmp33 = sext i32 %__tmp32 to i64
  %__tmp34 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %__tmp33
  %__tmp35 = load i32, i32* %v, align 4
  %__tmp36 = sext i32 %__tmp35 to i64
  %__tmp37 = getelementptr inbounds [16 x i32], [16 x i32]* %__tmp34, i64 0, i64 %__tmp36
  %__tmp38 = call i32 @getint()
  store i32 %__tmp38, i32* %__tmp37, align 4
  %__tmp39 = load i32, i32* %i, align 4
  %__tmp40 = add i32 %__tmp39, 1
  store i32 %__tmp40, i32* %i, align 4
  br label %bb9
bb11:
  call void @Dijkstra()
  store i32 1, i32* %i, align 4
  br label %bb12
bb12:
  %__tmp41 = load i32, i32* %i, align 4
  %__tmp42 = load i32, i32* @n, align 4
  %__tmp43 = icmp sle i32 %__tmp41, %__tmp42
  br i1 %__tmp43, label %bb13, label %bb14
bb13:
  %__tmp44 = load i32, i32* %i, align 4
  %__tmp45 = sext i32 %__tmp44 to i64
  %__tmp46 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %__tmp45
  %__tmp47 = load i32, i32* %__tmp46, align 4
  call void @putint(i32 %__tmp47)
  call void @putch(i32 32)
  %__tmp48 = load i32, i32* %i, align 4
  %__tmp49 = add i32 %__tmp48, 1
  store i32 %__tmp49, i32* %i, align 4
  br label %bb12
bb14:
  call void @putch(i32 10)
  ret i32 0
}

