; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @func1(i32 %x, i32 %y, i32 %z) {
func1Entry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %y_arg = alloca i32, align 4
  store i32 %y, i32* %y_arg, align 4
  %z_arg = alloca i32, align 4
  store i32 %z, i32* %z_arg, align 4
  %__tmp0 = load i32, i32* %z_arg, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 0
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32, i32* %x_arg, align 4
  %__tmp3 = load i32, i32* %y_arg, align 4
  %__tmp4 = mul i32 %__tmp2, %__tmp3
  ret i32 %__tmp4
bb1:
  %__tmp5 = load i32, i32* %x_arg, align 4
  %__tmp6 = load i32, i32* %y_arg, align 4
  %__tmp7 = load i32, i32* %z_arg, align 4
  %__tmp8 = sub i32 %__tmp6, %__tmp7
  %__tmp9 = call i32 @func1(i32 %__tmp5, i32 %__tmp8, i32 0)
  ret i32 %__tmp9
bb2:
  ret i32 0
}

define i32 @func2(i32 %x, i32 %y) {
func2Entry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %y_arg = alloca i32, align 4
  store i32 %y, i32* %y_arg, align 4
  %__tmp0 = load i32, i32* %y_arg, align 4
  %__tmp1 = trunc i32 %__tmp0 to i1
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32, i32* %x_arg, align 4
  %__tmp3 = load i32, i32* %y_arg, align 4
  %__tmp4 = srem i32 %__tmp2, %__tmp3
  %__tmp5 = call i32 @func2(i32 %__tmp4, i32 0)
  ret i32 %__tmp5
bb1:
  %__tmp6 = load i32, i32* %x_arg, align 4
  ret i32 %__tmp6
bb2:
  ret i32 0
}

define i32 @func3(i32 %x, i32 %y) {
func3Entry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %y_arg = alloca i32, align 4
  store i32 %y, i32* %y_arg, align 4
  %__tmp0 = load i32, i32* %y_arg, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 0
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32, i32* %x_arg, align 4
  %__tmp3 = add i32 %__tmp2, 1
  ret i32 %__tmp3
bb1:
  %__tmp4 = load i32, i32* %x_arg, align 4
  %__tmp5 = load i32, i32* %y_arg, align 4
  %__tmp6 = add i32 %__tmp4, %__tmp5
  %__tmp7 = call i32 @func3(i32 %__tmp6, i32 0)
  ret i32 %__tmp7
bb2:
  ret i32 0
}

define i32 @func4(i32 %x, i32 %y, i32 %z) {
func4Entry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %y_arg = alloca i32, align 4
  store i32 %y, i32* %y_arg, align 4
  %z_arg = alloca i32, align 4
  store i32 %z, i32* %z_arg, align 4
  %__tmp0 = load i32, i32* %x_arg, align 4
  %__tmp1 = trunc i32 %__tmp0 to i1
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32, i32* %y_arg, align 4
  ret i32 %__tmp2
bb1:
  %__tmp3 = load i32, i32* %z_arg, align 4
  ret i32 %__tmp3
bb2:
  ret i32 0
}

define i32 @func5(i32 %x) {
func5Entry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %__tmp0 = load i32, i32* %x_arg, align 4
  %__tmp1 = sub i32 0, %__tmp0
  ret i32 %__tmp1
}

define i32 @func6(i32 %x, i32 %y) {
func6Entry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %y_arg = alloca i32, align 4
  store i32 %y, i32* %y_arg, align 4
  %__tmp0 = load i32, i32* %x_arg, align 4
  %__tmp1 = icmp ne i32 %__tmp0, 0
  br i1 %__tmp1, label %bb3, label %bb5
bb5:
  br label %bb4
bb3:
  %__tmp2 = load i32, i32* %y_arg, align 4
  %__tmp3 = icmp ne i32 %__tmp2, 0
  br label %bb4
bb4:
  %__tmp4 = phi i1 [ 0, %bb5 ], [ %__tmp3, %bb3 ]
  br i1 %__tmp4, label %bb0, label %bb1
bb0:
  ret i32 1
bb1:
  ret i32 0
bb2:
  ret i32 0
}

define i32 @func7(i32 %x) {
func7Entry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %__tmp0 = load i32, i32* %x_arg, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 0
  %__tmp2 = zext i1 %__tmp1 to i32
  %__tmp3 = trunc i32 %__tmp2 to i1
  br i1 %__tmp3, label %bb0, label %bb1
bb0:
  ret i32 1
bb1:
  ret i32 0
bb2:
  ret i32 0
}

define i32 @main() {
mainEntry:
  %i1 = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %i1, align 4
  %i2 = alloca i32, align 4
  %__tmp1 = call i32 @getint()
  store i32 %__tmp1, i32* %i2, align 4
  %i3 = alloca i32, align 4
  %__tmp2 = call i32 @getint()
  store i32 %__tmp2, i32* %i3, align 4
  %i4 = alloca i32, align 4
  %__tmp3 = call i32 @getint()
  store i32 %__tmp3, i32* %i4, align 4
  %arr = alloca [10 x i32], align 4
  store [10 x i32] zeroinitializer, [10 x i32]* %arr, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp4 = load i32, i32* %i, align 4
  %__tmp5 = icmp slt i32 %__tmp4, 10
  br i1 %__tmp5, label %bb1, label %bb2
bb1:
  %__tmp6 = load i32, i32* %i, align 4
  %__tmp7 = sext i32 %__tmp6 to i64
  %__tmp8 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 %__tmp7
  %__tmp9 = call i32 @getint()
  store i32 %__tmp9, i32* %__tmp8, align 4
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = add i32 %__tmp10, 1
  store i32 %__tmp11, i32* %i, align 4
  br label %bb0
bb2:
  %a = alloca i32, align 4
  %__tmp12 = load i32, i32* %i1, align 4
  %__tmp13 = call i32 @func7(i32 %__tmp12)
  %__tmp14 = load i32, i32* %i2, align 4
  %__tmp15 = call i32 @func5(i32 %__tmp14)
  %__tmp16 = call i32 @func6(i32 %__tmp13, i32 %__tmp15)
  %__tmp17 = load i32, i32* %i3, align 4
  %__tmp18 = call i32 @func2(i32 %__tmp16, i32 %__tmp17)
  %__tmp19 = load i32, i32* %i4, align 4
  %__tmp20 = call i32 @func3(i32 %__tmp18, i32 %__tmp19)
  %__tmp21 = call i32 @func5(i32 %__tmp20)
  %__tmp22 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 0
  %__tmp23 = load i32, i32* %__tmp22, align 4
  %__tmp24 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 1
  %__tmp25 = load i32, i32* %__tmp24, align 4
  %__tmp26 = call i32 @func5(i32 %__tmp25)
  %__tmp27 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 2
  %__tmp28 = load i32, i32* %__tmp27, align 4
  %__tmp29 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 3
  %__tmp30 = load i32, i32* %__tmp29, align 4
  %__tmp31 = call i32 @func7(i32 %__tmp30)
  %__tmp32 = call i32 @func6(i32 %__tmp28, i32 %__tmp31)
  %__tmp33 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 4
  %__tmp34 = load i32, i32* %__tmp33, align 4
  %__tmp35 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 5
  %__tmp36 = load i32, i32* %__tmp35, align 4
  %__tmp37 = call i32 @func7(i32 %__tmp36)
  %__tmp38 = call i32 @func2(i32 %__tmp34, i32 %__tmp37)
  %__tmp39 = call i32 @func4(i32 %__tmp26, i32 %__tmp32, i32 %__tmp38)
  %__tmp40 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 6
  %__tmp41 = load i32, i32* %__tmp40, align 4
  %__tmp42 = call i32 @func3(i32 %__tmp39, i32 %__tmp41)
  %__tmp43 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 7
  %__tmp44 = load i32, i32* %__tmp43, align 4
  %__tmp45 = call i32 @func2(i32 %__tmp42, i32 %__tmp44)
  %__tmp46 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 8
  %__tmp47 = load i32, i32* %__tmp46, align 4
  %__tmp48 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 9
  %__tmp49 = load i32, i32* %__tmp48, align 4
  %__tmp50 = call i32 @func7(i32 %__tmp49)
  %__tmp51 = call i32 @func3(i32 %__tmp47, i32 %__tmp50)
  %__tmp52 = load i32, i32* %i1, align 4
  %__tmp53 = call i32 @func1(i32 %__tmp45, i32 %__tmp51, i32 %__tmp52)
  %__tmp54 = call i32 @func4(i32 %__tmp21, i32 %__tmp23, i32 %__tmp53)
  %__tmp55 = load i32, i32* %i2, align 4
  %__tmp56 = load i32, i32* %i3, align 4
  %__tmp57 = call i32 @func7(i32 %__tmp56)
  %__tmp58 = load i32, i32* %i4, align 4
  %__tmp59 = call i32 @func3(i32 %__tmp57, i32 %__tmp58)
  %__tmp60 = call i32 @func2(i32 %__tmp55, i32 %__tmp59)
  %__tmp61 = call i32 @func3(i32 %__tmp54, i32 %__tmp60)
  %__tmp62 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 0
  %__tmp63 = load i32, i32* %__tmp62, align 4
  %__tmp64 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 1
  %__tmp65 = load i32, i32* %__tmp64, align 4
  %__tmp66 = call i32 @func1(i32 %__tmp61, i32 %__tmp63, i32 %__tmp65)
  %__tmp67 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 2
  %__tmp68 = load i32, i32* %__tmp67, align 4
  %__tmp69 = call i32 @func2(i32 %__tmp66, i32 %__tmp68)
  %__tmp70 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 3
  %__tmp71 = load i32, i32* %__tmp70, align 4
  %__tmp72 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 4
  %__tmp73 = load i32, i32* %__tmp72, align 4
  %__tmp74 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 5
  %__tmp75 = load i32, i32* %__tmp74, align 4
  %__tmp76 = call i32 @func5(i32 %__tmp75)
  %__tmp77 = call i32 @func3(i32 %__tmp73, i32 %__tmp76)
  %__tmp78 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 6
  %__tmp79 = load i32, i32* %__tmp78, align 4
  %__tmp80 = call i32 @func5(i32 %__tmp79)
  %__tmp81 = call i32 @func2(i32 %__tmp77, i32 %__tmp80)
  %__tmp82 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 7
  %__tmp83 = load i32, i32* %__tmp82, align 4
  %__tmp84 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 8
  %__tmp85 = load i32, i32* %__tmp84, align 4
  %__tmp86 = call i32 @func7(i32 %__tmp85)
  %__tmp87 = call i32 @func1(i32 %__tmp81, i32 %__tmp83, i32 %__tmp86)
  %__tmp88 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 9
  %__tmp89 = load i32, i32* %__tmp88, align 4
  %__tmp90 = call i32 @func5(i32 %__tmp89)
  %__tmp91 = call i32 @func2(i32 %__tmp87, i32 %__tmp90)
  %__tmp92 = load i32, i32* %i1, align 4
  %__tmp93 = call i32 @func3(i32 %__tmp91, i32 %__tmp92)
  %__tmp94 = call i32 @func1(i32 %__tmp69, i32 %__tmp71, i32 %__tmp93)
  store i32 %__tmp94, i32* %a, align 4
  %__tmp95 = load i32, i32* %a, align 4
  ret i32 %__tmp95
}

