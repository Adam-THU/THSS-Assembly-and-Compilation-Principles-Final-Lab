; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@ints = global [10000 x i32] zeroinitializer, align 4
@intt = global i32 0, align 4
@chas = global [10000 x i32] zeroinitializer, align 4
@chat = global i32 0, align 4
@i = global i32 0, align 4
@ii = global i32 1, align 4
@c = global i32 0, align 4
@get = global [10000 x i32] zeroinitializer, align 4
@get2 = global [10000 x i32] zeroinitializer, align 4

define i32 @isdigit(i32 %x) {
isdigitEntry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %__tmp0 = load i32, i32* %x_arg, align 4
  %__tmp1 = icmp sge i32 %__tmp0, 48
  br i1 %__tmp1, label %bb3, label %bb5
bb5:
  br label %bb4
bb3:
  %__tmp2 = load i32, i32* %x_arg, align 4
  %__tmp3 = icmp sle i32 %__tmp2, 57
  br label %bb4
bb4:
  %__tmp4 = phi i1 [ 0, %bb5 ], [ %__tmp3, %bb3 ]
  br i1 %__tmp4, label %bb0, label %bb1
bb0:
  ret i32 1
bb1:
  br label %bb2
bb2:
  ret i32 0
}

define i32 @power(i32 %b, i32 %a) {
powerEntry:
  %b_arg = alloca i32, align 4
  store i32 %b, i32* %b_arg, align 4
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %result = alloca i32, align 4
  store i32 1, i32* %result, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %a_arg, align 4
  %__tmp1 = icmp ne i32 %__tmp0, 0
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %result, align 4
  %__tmp3 = load i32, i32* %b_arg, align 4
  %__tmp4 = mul i32 %__tmp2, %__tmp3
  store i32 %__tmp4, i32* %result, align 4
  %__tmp5 = load i32, i32* %a_arg, align 4
  %__tmp6 = sub i32 %__tmp5, 1
  store i32 %__tmp6, i32* %a_arg, align 4
  br label %bb0
bb2:
  %__tmp7 = load i32, i32* %result, align 4
  ret i32 %__tmp7
}

define i32 @getstr(i32* %get) {
getstrEntry:
  %get_arg = alloca i32*, align 4
  store i32* %get, i32** %get_arg, align 4
  %x = alloca i32, align 4
  %__tmp0 = call i32 @getch()
  store i32 %__tmp0, i32* %x, align 4
  %length = alloca i32, align 4
  store i32 0, i32* %length, align 4
  br label %bb0
bb0:
  %__tmp1 = load i32, i32* %x, align 4
  %__tmp2 = icmp ne i32 %__tmp1, 13
  br i1 %__tmp2, label %bb3, label %bb5
bb5:
  br label %bb4
bb3:
  %__tmp3 = load i32, i32* %x, align 4
  %__tmp4 = icmp ne i32 %__tmp3, 10
  br label %bb4
bb4:
  %__tmp5 = phi i1 [ 0, %bb5 ], [ %__tmp4, %bb3 ]
  br i1 %__tmp5, label %bb1, label %bb2
bb1:
  %__tmp6 = load i32*, i32** %get_arg, align 4
  %__tmp7 = load i32, i32* %length, align 4
  %__tmp8 = sext i32 %__tmp7 to i64
  %__tmp9 = getelementptr inbounds i32, i32* %__tmp6, i64 %__tmp8
  %__tmp10 = load i32, i32* %x, align 4
  store i32 %__tmp10, i32* %__tmp9, align 4
  %__tmp11 = load i32, i32* %length, align 4
  %__tmp12 = add i32 %__tmp11, 1
  store i32 %__tmp12, i32* %length, align 4
  %__tmp13 = call i32 @getch()
  store i32 %__tmp13, i32* %x, align 4
  br label %bb0
bb2:
  %__tmp14 = load i32, i32* %length, align 4
  ret i32 %__tmp14
}

define void @intpush(i32 %x) {
intpushEntry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %__tmp0 = load i32, i32* @intt, align 4
  %__tmp1 = add i32 %__tmp0, 1
  store i32 %__tmp1, i32* @intt, align 4
  %__tmp2 = load i32, i32* @intt, align 4
  %__tmp3 = sext i32 %__tmp2 to i64
  %__tmp4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %__tmp3
  %__tmp5 = load i32, i32* %x_arg, align 4
  store i32 %__tmp5, i32* %__tmp4, align 4
  ret void
}

define void @chapush(i32 %x) {
chapushEntry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %__tmp0 = load i32, i32* @chat, align 4
  %__tmp1 = add i32 %__tmp0, 1
  store i32 %__tmp1, i32* @chat, align 4
  %__tmp2 = load i32, i32* @chat, align 4
  %__tmp3 = sext i32 %__tmp2 to i64
  %__tmp4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp3
  %__tmp5 = load i32, i32* %x_arg, align 4
  store i32 %__tmp5, i32* %__tmp4, align 4
  ret void
}

define i32 @intpop() {
intpopEntry:
  %__tmp0 = load i32, i32* @intt, align 4
  %__tmp1 = sub i32 %__tmp0, 1
  store i32 %__tmp1, i32* @intt, align 4
  %__tmp2 = load i32, i32* @intt, align 4
  %__tmp3 = add i32 %__tmp2, 1
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %__tmp4
  %__tmp6 = load i32, i32* %__tmp5, align 4
  ret i32 %__tmp6
}

define i32 @chapop() {
chapopEntry:
  %__tmp0 = load i32, i32* @chat, align 4
  %__tmp1 = sub i32 %__tmp0, 1
  store i32 %__tmp1, i32* @chat, align 4
  %__tmp2 = load i32, i32* @chat, align 4
  %__tmp3 = add i32 %__tmp2, 1
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp4
  %__tmp6 = load i32, i32* %__tmp5, align 4
  ret i32 %__tmp6
}

define void @intadd(i32 %x) {
intaddEntry:
  %x_arg = alloca i32, align 4
  store i32 %x, i32* %x_arg, align 4
  %__tmp0 = load i32, i32* @intt, align 4
  %__tmp1 = sext i32 %__tmp0 to i64
  %__tmp2 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %__tmp1
  %__tmp3 = load i32, i32* @intt, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %__tmp4
  %__tmp6 = load i32, i32* %__tmp5, align 4
  %__tmp7 = mul i32 %__tmp6, 10
  store i32 %__tmp7, i32* %__tmp2, align 4
  %__tmp8 = load i32, i32* @intt, align 4
  %__tmp9 = sext i32 %__tmp8 to i64
  %__tmp10 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %__tmp9
  %__tmp11 = load i32, i32* @intt, align 4
  %__tmp12 = sext i32 %__tmp11 to i64
  %__tmp13 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %__tmp12
  %__tmp14 = load i32, i32* %__tmp13, align 4
  %__tmp15 = load i32, i32* %x_arg, align 4
  %__tmp16 = add i32 %__tmp14, %__tmp15
  store i32 %__tmp16, i32* %__tmp10, align 4
  ret void
}

define i32 @find() {
findEntry:
  %__tmp0 = call i32 @chapop()
  store i32 %__tmp0, i32* @c, align 4
  %__tmp1 = load i32, i32* @ii, align 4
  %__tmp2 = sext i32 %__tmp1 to i64
  %__tmp3 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp2
  store i32 32, i32* %__tmp3, align 4
  %__tmp4 = load i32, i32* @ii, align 4
  %__tmp5 = add i32 %__tmp4, 1
  %__tmp6 = sext i32 %__tmp5 to i64
  %__tmp7 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp6
  %__tmp8 = load i32, i32* @c, align 4
  store i32 %__tmp8, i32* %__tmp7, align 4
  %__tmp9 = load i32, i32* @ii, align 4
  %__tmp10 = add i32 %__tmp9, 2
  store i32 %__tmp10, i32* @ii, align 4
  %__tmp11 = load i32, i32* @chat, align 4
  %__tmp12 = icmp eq i32 %__tmp11, 0
  br i1 %__tmp12, label %bb0, label %bb1
bb0:
  ret i32 0
bb1:
  br label %bb2
bb2:
  ret i32 1
}

define i32 @main() {
mainEntry:
  store i32 0, i32* @intt, align 4
  store i32 0, i32* @chat, align 4
  %lengets = alloca i32, align 4
  %__tmp0 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 0
  %__tmp1 = call i32 @getstr(i32* %__tmp0)
  store i32 %__tmp1, i32* %lengets, align 4
  br label %bb0
bb0:
  %__tmp2 = load i32, i32* @i, align 4
  %__tmp3 = load i32, i32* %lengets, align 4
  %__tmp4 = icmp slt i32 %__tmp2, %__tmp3
  br i1 %__tmp4, label %bb1, label %bb2
bb1:
  %__tmp5 = load i32, i32* @i, align 4
  %__tmp6 = sext i32 %__tmp5 to i64
  %__tmp7 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp6
  %__tmp8 = load i32, i32* %__tmp7, align 4
  %__tmp9 = call i32 @isdigit(i32 %__tmp8)
  %__tmp10 = icmp eq i32 %__tmp9, 1
  br i1 %__tmp10, label %bb3, label %bb4
bb3:
  %__tmp11 = load i32, i32* @ii, align 4
  %__tmp12 = sext i32 %__tmp11 to i64
  %__tmp13 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp12
  %__tmp14 = load i32, i32* @i, align 4
  %__tmp15 = sext i32 %__tmp14 to i64
  %__tmp16 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp15
  %__tmp17 = load i32, i32* %__tmp16, align 4
  store i32 %__tmp17, i32* %__tmp13, align 4
  %__tmp18 = load i32, i32* @ii, align 4
  %__tmp19 = add i32 %__tmp18, 1
  store i32 %__tmp19, i32* @ii, align 4
  br label %bb5
bb4:
  %__tmp20 = load i32, i32* @i, align 4
  %__tmp21 = sext i32 %__tmp20 to i64
  %__tmp22 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp21
  %__tmp23 = load i32, i32* %__tmp22, align 4
  %__tmp24 = icmp eq i32 %__tmp23, 40
  br i1 %__tmp24, label %bb6, label %bb7
bb6:
  call void @chapush(i32 40)
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp25 = load i32, i32* @i, align 4
  %__tmp26 = sext i32 %__tmp25 to i64
  %__tmp27 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp26
  %__tmp28 = load i32, i32* %__tmp27, align 4
  %__tmp29 = icmp eq i32 %__tmp28, 94
  br i1 %__tmp29, label %bb9, label %bb10
bb9:
  call void @chapush(i32 94)
  br label %bb11
bb10:
  br label %bb11
bb11:
  %__tmp30 = load i32, i32* @i, align 4
  %__tmp31 = sext i32 %__tmp30 to i64
  %__tmp32 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp31
  %__tmp33 = load i32, i32* %__tmp32, align 4
  %__tmp34 = icmp eq i32 %__tmp33, 41
  br i1 %__tmp34, label %bb12, label %bb13
bb12:
  %__tmp35 = call i32 @chapop()
  store i32 %__tmp35, i32* @c, align 4
  br label %bb15
bb15:
  %__tmp36 = load i32, i32* @c, align 4
  %__tmp37 = icmp ne i32 %__tmp36, 40
  br i1 %__tmp37, label %bb16, label %bb17
bb16:
  %__tmp38 = load i32, i32* @ii, align 4
  %__tmp39 = sext i32 %__tmp38 to i64
  %__tmp40 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp39
  store i32 32, i32* %__tmp40, align 4
  %__tmp41 = load i32, i32* @ii, align 4
  %__tmp42 = add i32 %__tmp41, 1
  %__tmp43 = sext i32 %__tmp42 to i64
  %__tmp44 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp43
  %__tmp45 = load i32, i32* @c, align 4
  store i32 %__tmp45, i32* %__tmp44, align 4
  %__tmp46 = load i32, i32* @ii, align 4
  %__tmp47 = add i32 %__tmp46, 2
  store i32 %__tmp47, i32* @ii, align 4
  %__tmp48 = call i32 @chapop()
  store i32 %__tmp48, i32* @c, align 4
  br label %bb15
bb17:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp49 = load i32, i32* @i, align 4
  %__tmp50 = sext i32 %__tmp49 to i64
  %__tmp51 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp50
  %__tmp52 = load i32, i32* %__tmp51, align 4
  %__tmp53 = icmp eq i32 %__tmp52, 43
  br i1 %__tmp53, label %bb18, label %bb19
bb18:
  br label %bb21
bb21:
  %__tmp54 = load i32, i32* @chat, align 4
  %__tmp55 = sext i32 %__tmp54 to i64
  %__tmp56 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp55
  %__tmp57 = load i32, i32* %__tmp56, align 4
  %__tmp58 = icmp eq i32 %__tmp57, 43
  br i1 %__tmp58, label %bb26, label %bb24
bb26:
  br label %bb25
bb24:
  %__tmp59 = load i32, i32* @chat, align 4
  %__tmp60 = sext i32 %__tmp59 to i64
  %__tmp61 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp60
  %__tmp62 = load i32, i32* %__tmp61, align 4
  %__tmp63 = icmp eq i32 %__tmp62, 45
  br label %bb25
bb25:
  %__tmp64 = phi i1 [ 1, %bb26 ], [ %__tmp63, %bb24 ]
  br i1 %__tmp64, label %bb29, label %bb27
bb29:
  br label %bb28
bb27:
  %__tmp65 = load i32, i32* @chat, align 4
  %__tmp66 = sext i32 %__tmp65 to i64
  %__tmp67 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp66
  %__tmp68 = load i32, i32* %__tmp67, align 4
  %__tmp69 = icmp eq i32 %__tmp68, 42
  br label %bb28
bb28:
  %__tmp70 = phi i1 [ 1, %bb29 ], [ %__tmp69, %bb27 ]
  br i1 %__tmp70, label %bb32, label %bb30
bb32:
  br label %bb31
bb30:
  %__tmp71 = load i32, i32* @chat, align 4
  %__tmp72 = sext i32 %__tmp71 to i64
  %__tmp73 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp72
  %__tmp74 = load i32, i32* %__tmp73, align 4
  %__tmp75 = icmp eq i32 %__tmp74, 47
  br label %bb31
bb31:
  %__tmp76 = phi i1 [ 1, %bb32 ], [ %__tmp75, %bb30 ]
  br i1 %__tmp76, label %bb35, label %bb33
bb35:
  br label %bb34
bb33:
  %__tmp77 = load i32, i32* @chat, align 4
  %__tmp78 = sext i32 %__tmp77 to i64
  %__tmp79 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp78
  %__tmp80 = load i32, i32* %__tmp79, align 4
  %__tmp81 = icmp eq i32 %__tmp80, 37
  br label %bb34
bb34:
  %__tmp82 = phi i1 [ 1, %bb35 ], [ %__tmp81, %bb33 ]
  br i1 %__tmp82, label %bb38, label %bb36
bb38:
  br label %bb37
bb36:
  %__tmp83 = load i32, i32* @chat, align 4
  %__tmp84 = sext i32 %__tmp83 to i64
  %__tmp85 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp84
  %__tmp86 = load i32, i32* %__tmp85, align 4
  %__tmp87 = icmp eq i32 %__tmp86, 94
  br label %bb37
bb37:
  %__tmp88 = phi i1 [ 1, %bb38 ], [ %__tmp87, %bb36 ]
  br i1 %__tmp88, label %bb22, label %bb23
bb22:
  %__tmp89 = call i32 @find()
  %__tmp90 = icmp eq i32 %__tmp89, 0
  br i1 %__tmp90, label %bb39, label %bb40
bb39:
  br label %bb23
bb40:
  br label %bb41
bb41:
  br label %bb21
bb23:
  call void @chapush(i32 43)
  br label %bb20
bb19:
  br label %bb20
bb20:
  %__tmp91 = load i32, i32* @i, align 4
  %__tmp92 = sext i32 %__tmp91 to i64
  %__tmp93 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp92
  %__tmp94 = load i32, i32* %__tmp93, align 4
  %__tmp95 = icmp eq i32 %__tmp94, 45
  br i1 %__tmp95, label %bb42, label %bb43
bb42:
  br label %bb45
bb45:
  %__tmp96 = load i32, i32* @chat, align 4
  %__tmp97 = sext i32 %__tmp96 to i64
  %__tmp98 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp97
  %__tmp99 = load i32, i32* %__tmp98, align 4
  %__tmp100 = icmp eq i32 %__tmp99, 43
  br i1 %__tmp100, label %bb50, label %bb48
bb50:
  br label %bb49
bb48:
  %__tmp101 = load i32, i32* @chat, align 4
  %__tmp102 = sext i32 %__tmp101 to i64
  %__tmp103 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp102
  %__tmp104 = load i32, i32* %__tmp103, align 4
  %__tmp105 = icmp eq i32 %__tmp104, 45
  br label %bb49
bb49:
  %__tmp106 = phi i1 [ 1, %bb50 ], [ %__tmp105, %bb48 ]
  br i1 %__tmp106, label %bb53, label %bb51
bb53:
  br label %bb52
bb51:
  %__tmp107 = load i32, i32* @chat, align 4
  %__tmp108 = sext i32 %__tmp107 to i64
  %__tmp109 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp108
  %__tmp110 = load i32, i32* %__tmp109, align 4
  %__tmp111 = icmp eq i32 %__tmp110, 42
  br label %bb52
bb52:
  %__tmp112 = phi i1 [ 1, %bb53 ], [ %__tmp111, %bb51 ]
  br i1 %__tmp112, label %bb56, label %bb54
bb56:
  br label %bb55
bb54:
  %__tmp113 = load i32, i32* @chat, align 4
  %__tmp114 = sext i32 %__tmp113 to i64
  %__tmp115 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp114
  %__tmp116 = load i32, i32* %__tmp115, align 4
  %__tmp117 = icmp eq i32 %__tmp116, 47
  br label %bb55
bb55:
  %__tmp118 = phi i1 [ 1, %bb56 ], [ %__tmp117, %bb54 ]
  br i1 %__tmp118, label %bb59, label %bb57
bb59:
  br label %bb58
bb57:
  %__tmp119 = load i32, i32* @chat, align 4
  %__tmp120 = sext i32 %__tmp119 to i64
  %__tmp121 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp120
  %__tmp122 = load i32, i32* %__tmp121, align 4
  %__tmp123 = icmp eq i32 %__tmp122, 37
  br label %bb58
bb58:
  %__tmp124 = phi i1 [ 1, %bb59 ], [ %__tmp123, %bb57 ]
  br i1 %__tmp124, label %bb62, label %bb60
bb62:
  br label %bb61
bb60:
  %__tmp125 = load i32, i32* @chat, align 4
  %__tmp126 = sext i32 %__tmp125 to i64
  %__tmp127 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp126
  %__tmp128 = load i32, i32* %__tmp127, align 4
  %__tmp129 = icmp eq i32 %__tmp128, 94
  br label %bb61
bb61:
  %__tmp130 = phi i1 [ 1, %bb62 ], [ %__tmp129, %bb60 ]
  br i1 %__tmp130, label %bb46, label %bb47
bb46:
  %__tmp131 = call i32 @find()
  %__tmp132 = icmp eq i32 %__tmp131, 0
  br i1 %__tmp132, label %bb63, label %bb64
bb63:
  br label %bb47
bb64:
  br label %bb65
bb65:
  br label %bb45
bb47:
  call void @chapush(i32 45)
  br label %bb44
bb43:
  br label %bb44
bb44:
  %__tmp133 = load i32, i32* @i, align 4
  %__tmp134 = sext i32 %__tmp133 to i64
  %__tmp135 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp134
  %__tmp136 = load i32, i32* %__tmp135, align 4
  %__tmp137 = icmp eq i32 %__tmp136, 42
  br i1 %__tmp137, label %bb66, label %bb67
bb66:
  br label %bb69
bb69:
  %__tmp138 = load i32, i32* @chat, align 4
  %__tmp139 = sext i32 %__tmp138 to i64
  %__tmp140 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp139
  %__tmp141 = load i32, i32* %__tmp140, align 4
  %__tmp142 = icmp eq i32 %__tmp141, 42
  br i1 %__tmp142, label %bb74, label %bb72
bb74:
  br label %bb73
bb72:
  %__tmp143 = load i32, i32* @chat, align 4
  %__tmp144 = sext i32 %__tmp143 to i64
  %__tmp145 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp144
  %__tmp146 = load i32, i32* %__tmp145, align 4
  %__tmp147 = icmp eq i32 %__tmp146, 47
  br label %bb73
bb73:
  %__tmp148 = phi i1 [ 1, %bb74 ], [ %__tmp147, %bb72 ]
  br i1 %__tmp148, label %bb77, label %bb75
bb77:
  br label %bb76
bb75:
  %__tmp149 = load i32, i32* @chat, align 4
  %__tmp150 = sext i32 %__tmp149 to i64
  %__tmp151 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp150
  %__tmp152 = load i32, i32* %__tmp151, align 4
  %__tmp153 = icmp eq i32 %__tmp152, 37
  br label %bb76
bb76:
  %__tmp154 = phi i1 [ 1, %bb77 ], [ %__tmp153, %bb75 ]
  br i1 %__tmp154, label %bb80, label %bb78
bb80:
  br label %bb79
bb78:
  %__tmp155 = load i32, i32* @chat, align 4
  %__tmp156 = sext i32 %__tmp155 to i64
  %__tmp157 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp156
  %__tmp158 = load i32, i32* %__tmp157, align 4
  %__tmp159 = icmp eq i32 %__tmp158, 94
  br label %bb79
bb79:
  %__tmp160 = phi i1 [ 1, %bb80 ], [ %__tmp159, %bb78 ]
  br i1 %__tmp160, label %bb70, label %bb71
bb70:
  %__tmp161 = call i32 @find()
  %__tmp162 = icmp eq i32 %__tmp161, 0
  br i1 %__tmp162, label %bb81, label %bb82
bb81:
  br label %bb71
bb82:
  br label %bb83
bb83:
  br label %bb69
bb71:
  call void @chapush(i32 42)
  br label %bb68
bb67:
  br label %bb68
bb68:
  %__tmp163 = load i32, i32* @i, align 4
  %__tmp164 = sext i32 %__tmp163 to i64
  %__tmp165 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp164
  %__tmp166 = load i32, i32* %__tmp165, align 4
  %__tmp167 = icmp eq i32 %__tmp166, 47
  br i1 %__tmp167, label %bb84, label %bb85
bb84:
  br label %bb87
bb87:
  %__tmp168 = load i32, i32* @chat, align 4
  %__tmp169 = sext i32 %__tmp168 to i64
  %__tmp170 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp169
  %__tmp171 = load i32, i32* %__tmp170, align 4
  %__tmp172 = icmp eq i32 %__tmp171, 42
  br i1 %__tmp172, label %bb92, label %bb90
bb92:
  br label %bb91
bb90:
  %__tmp173 = load i32, i32* @chat, align 4
  %__tmp174 = sext i32 %__tmp173 to i64
  %__tmp175 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp174
  %__tmp176 = load i32, i32* %__tmp175, align 4
  %__tmp177 = icmp eq i32 %__tmp176, 47
  br label %bb91
bb91:
  %__tmp178 = phi i1 [ 1, %bb92 ], [ %__tmp177, %bb90 ]
  br i1 %__tmp178, label %bb95, label %bb93
bb95:
  br label %bb94
bb93:
  %__tmp179 = load i32, i32* @chat, align 4
  %__tmp180 = sext i32 %__tmp179 to i64
  %__tmp181 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp180
  %__tmp182 = load i32, i32* %__tmp181, align 4
  %__tmp183 = icmp eq i32 %__tmp182, 37
  br label %bb94
bb94:
  %__tmp184 = phi i1 [ 1, %bb95 ], [ %__tmp183, %bb93 ]
  br i1 %__tmp184, label %bb98, label %bb96
bb98:
  br label %bb97
bb96:
  %__tmp185 = load i32, i32* @chat, align 4
  %__tmp186 = sext i32 %__tmp185 to i64
  %__tmp187 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp186
  %__tmp188 = load i32, i32* %__tmp187, align 4
  %__tmp189 = icmp eq i32 %__tmp188, 94
  br label %bb97
bb97:
  %__tmp190 = phi i1 [ 1, %bb98 ], [ %__tmp189, %bb96 ]
  br i1 %__tmp190, label %bb88, label %bb89
bb88:
  %__tmp191 = call i32 @find()
  %__tmp192 = icmp eq i32 %__tmp191, 0
  br i1 %__tmp192, label %bb99, label %bb100
bb99:
  br label %bb89
bb100:
  br label %bb101
bb101:
  br label %bb87
bb89:
  call void @chapush(i32 47)
  br label %bb86
bb85:
  br label %bb86
bb86:
  %__tmp193 = load i32, i32* @i, align 4
  %__tmp194 = sext i32 %__tmp193 to i64
  %__tmp195 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp194
  %__tmp196 = load i32, i32* %__tmp195, align 4
  %__tmp197 = icmp eq i32 %__tmp196, 37
  br i1 %__tmp197, label %bb102, label %bb103
bb102:
  br label %bb105
bb105:
  %__tmp198 = load i32, i32* @chat, align 4
  %__tmp199 = sext i32 %__tmp198 to i64
  %__tmp200 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp199
  %__tmp201 = load i32, i32* %__tmp200, align 4
  %__tmp202 = icmp eq i32 %__tmp201, 42
  br i1 %__tmp202, label %bb110, label %bb108
bb110:
  br label %bb109
bb108:
  %__tmp203 = load i32, i32* @chat, align 4
  %__tmp204 = sext i32 %__tmp203 to i64
  %__tmp205 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp204
  %__tmp206 = load i32, i32* %__tmp205, align 4
  %__tmp207 = icmp eq i32 %__tmp206, 47
  br label %bb109
bb109:
  %__tmp208 = phi i1 [ 1, %bb110 ], [ %__tmp207, %bb108 ]
  br i1 %__tmp208, label %bb113, label %bb111
bb113:
  br label %bb112
bb111:
  %__tmp209 = load i32, i32* @chat, align 4
  %__tmp210 = sext i32 %__tmp209 to i64
  %__tmp211 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp210
  %__tmp212 = load i32, i32* %__tmp211, align 4
  %__tmp213 = icmp eq i32 %__tmp212, 37
  br label %bb112
bb112:
  %__tmp214 = phi i1 [ 1, %bb113 ], [ %__tmp213, %bb111 ]
  br i1 %__tmp214, label %bb116, label %bb114
bb116:
  br label %bb115
bb114:
  %__tmp215 = load i32, i32* @chat, align 4
  %__tmp216 = sext i32 %__tmp215 to i64
  %__tmp217 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp216
  %__tmp218 = load i32, i32* %__tmp217, align 4
  %__tmp219 = icmp eq i32 %__tmp218, 94
  br label %bb115
bb115:
  %__tmp220 = phi i1 [ 1, %bb116 ], [ %__tmp219, %bb114 ]
  br i1 %__tmp220, label %bb106, label %bb107
bb106:
  %__tmp221 = call i32 @find()
  %__tmp222 = icmp eq i32 %__tmp221, 0
  br i1 %__tmp222, label %bb117, label %bb118
bb117:
  br label %bb107
bb118:
  br label %bb119
bb119:
  br label %bb105
bb107:
  call void @chapush(i32 37)
  br label %bb104
bb103:
  br label %bb104
bb104:
  %__tmp223 = load i32, i32* @ii, align 4
  %__tmp224 = sext i32 %__tmp223 to i64
  %__tmp225 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp224
  store i32 32, i32* %__tmp225, align 4
  %__tmp226 = load i32, i32* @ii, align 4
  %__tmp227 = add i32 %__tmp226, 1
  store i32 %__tmp227, i32* @ii, align 4
  br label %bb5
bb5:
  %__tmp228 = load i32, i32* @i, align 4
  %__tmp229 = add i32 %__tmp228, 1
  store i32 %__tmp229, i32* @i, align 4
  br label %bb0
bb2:
  br label %bb120
bb120:
  %__tmp230 = load i32, i32* @chat, align 4
  %__tmp231 = icmp sgt i32 %__tmp230, 0
  br i1 %__tmp231, label %bb121, label %bb122
bb121:
  %c = alloca i32, align 4
  %__tmp232 = call i32 @chapop()
  store i32 %__tmp232, i32* %c, align 4
  %__tmp233 = load i32, i32* @ii, align 4
  %__tmp234 = sext i32 %__tmp233 to i64
  %__tmp235 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp234
  store i32 32, i32* %__tmp235, align 4
  %__tmp236 = load i32, i32* @ii, align 4
  %__tmp237 = add i32 %__tmp236, 1
  %__tmp238 = sext i32 %__tmp237 to i64
  %__tmp239 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp238
  %__tmp240 = load i32, i32* %c, align 4
  store i32 %__tmp240, i32* %__tmp239, align 4
  %__tmp241 = load i32, i32* @ii, align 4
  %__tmp242 = add i32 %__tmp241, 2
  store i32 %__tmp242, i32* @ii, align 4
  br label %bb120
bb122:
  %__tmp243 = load i32, i32* @ii, align 4
  %__tmp244 = sext i32 %__tmp243 to i64
  %__tmp245 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp244
  store i32 64, i32* %__tmp245, align 4
  store i32 1, i32* @i, align 4
  br label %bb123
bb123:
  %__tmp246 = load i32, i32* @i, align 4
  %__tmp247 = sext i32 %__tmp246 to i64
  %__tmp248 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp247
  %__tmp249 = load i32, i32* %__tmp248, align 4
  %__tmp250 = icmp ne i32 %__tmp249, 64
  br i1 %__tmp250, label %bb124, label %bb125
bb124:
  %__tmp251 = load i32, i32* @i, align 4
  %__tmp252 = sext i32 %__tmp251 to i64
  %__tmp253 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp252
  %__tmp254 = load i32, i32* %__tmp253, align 4
  %__tmp255 = icmp eq i32 %__tmp254, 43
  br i1 %__tmp255, label %bb131, label %bb129
bb131:
  br label %bb130
bb129:
  %__tmp256 = load i32, i32* @i, align 4
  %__tmp257 = sext i32 %__tmp256 to i64
  %__tmp258 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp257
  %__tmp259 = load i32, i32* %__tmp258, align 4
  %__tmp260 = icmp eq i32 %__tmp259, 45
  br label %bb130
bb130:
  %__tmp261 = phi i1 [ 1, %bb131 ], [ %__tmp260, %bb129 ]
  br i1 %__tmp261, label %bb134, label %bb132
bb134:
  br label %bb133
bb132:
  %__tmp262 = load i32, i32* @i, align 4
  %__tmp263 = sext i32 %__tmp262 to i64
  %__tmp264 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp263
  %__tmp265 = load i32, i32* %__tmp264, align 4
  %__tmp266 = icmp eq i32 %__tmp265, 42
  br label %bb133
bb133:
  %__tmp267 = phi i1 [ 1, %bb134 ], [ %__tmp266, %bb132 ]
  br i1 %__tmp267, label %bb137, label %bb135
bb137:
  br label %bb136
bb135:
  %__tmp268 = load i32, i32* @i, align 4
  %__tmp269 = sext i32 %__tmp268 to i64
  %__tmp270 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp269
  %__tmp271 = load i32, i32* %__tmp270, align 4
  %__tmp272 = icmp eq i32 %__tmp271, 47
  br label %bb136
bb136:
  %__tmp273 = phi i1 [ 1, %bb137 ], [ %__tmp272, %bb135 ]
  br i1 %__tmp273, label %bb140, label %bb138
bb140:
  br label %bb139
bb138:
  %__tmp274 = load i32, i32* @i, align 4
  %__tmp275 = sext i32 %__tmp274 to i64
  %__tmp276 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp275
  %__tmp277 = load i32, i32* %__tmp276, align 4
  %__tmp278 = icmp eq i32 %__tmp277, 37
  br label %bb139
bb139:
  %__tmp279 = phi i1 [ 1, %bb140 ], [ %__tmp278, %bb138 ]
  br i1 %__tmp279, label %bb143, label %bb141
bb143:
  br label %bb142
bb141:
  %__tmp280 = load i32, i32* @i, align 4
  %__tmp281 = sext i32 %__tmp280 to i64
  %__tmp282 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp281
  %__tmp283 = load i32, i32* %__tmp282, align 4
  %__tmp284 = icmp eq i32 %__tmp283, 94
  br label %bb142
bb142:
  %__tmp285 = phi i1 [ 1, %bb143 ], [ %__tmp284, %bb141 ]
  br i1 %__tmp285, label %bb126, label %bb127
bb126:
  %a = alloca i32, align 4
  %__tmp286 = call i32 @intpop()
  store i32 %__tmp286, i32* %a, align 4
  %b = alloca i32, align 4
  %__tmp287 = call i32 @intpop()
  store i32 %__tmp287, i32* %b, align 4
  %c.1 = alloca i32, align 4
  %__tmp288 = load i32, i32* @i, align 4
  %__tmp289 = sext i32 %__tmp288 to i64
  %__tmp290 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp289
  %__tmp291 = load i32, i32* %__tmp290, align 4
  %__tmp292 = icmp eq i32 %__tmp291, 43
  br i1 %__tmp292, label %bb144, label %bb145
bb144:
  %__tmp293 = load i32, i32* %a, align 4
  %__tmp294 = load i32, i32* %b, align 4
  %__tmp295 = add i32 %__tmp293, %__tmp294
  store i32 %__tmp295, i32* %c.1, align 4
  br label %bb146
bb145:
  br label %bb146
bb146:
  %__tmp296 = load i32, i32* @i, align 4
  %__tmp297 = sext i32 %__tmp296 to i64
  %__tmp298 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp297
  %__tmp299 = load i32, i32* %__tmp298, align 4
  %__tmp300 = icmp eq i32 %__tmp299, 45
  br i1 %__tmp300, label %bb147, label %bb148
bb147:
  %__tmp301 = load i32, i32* %b, align 4
  %__tmp302 = load i32, i32* %a, align 4
  %__tmp303 = sub i32 %__tmp301, %__tmp302
  store i32 %__tmp303, i32* %c.1, align 4
  br label %bb149
bb148:
  br label %bb149
bb149:
  %__tmp304 = load i32, i32* @i, align 4
  %__tmp305 = sext i32 %__tmp304 to i64
  %__tmp306 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp305
  %__tmp307 = load i32, i32* %__tmp306, align 4
  %__tmp308 = icmp eq i32 %__tmp307, 42
  br i1 %__tmp308, label %bb150, label %bb151
bb150:
  %__tmp309 = load i32, i32* %a, align 4
  %__tmp310 = load i32, i32* %b, align 4
  %__tmp311 = mul i32 %__tmp309, %__tmp310
  store i32 %__tmp311, i32* %c.1, align 4
  br label %bb152
bb151:
  br label %bb152
bb152:
  %__tmp312 = load i32, i32* @i, align 4
  %__tmp313 = sext i32 %__tmp312 to i64
  %__tmp314 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp313
  %__tmp315 = load i32, i32* %__tmp314, align 4
  %__tmp316 = icmp eq i32 %__tmp315, 47
  br i1 %__tmp316, label %bb153, label %bb154
bb153:
  %__tmp317 = load i32, i32* %b, align 4
  %__tmp318 = load i32, i32* %a, align 4
  %__tmp319 = sdiv i32 %__tmp317, %__tmp318
  store i32 %__tmp319, i32* %c.1, align 4
  br label %bb155
bb154:
  br label %bb155
bb155:
  %__tmp320 = load i32, i32* @i, align 4
  %__tmp321 = sext i32 %__tmp320 to i64
  %__tmp322 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp321
  %__tmp323 = load i32, i32* %__tmp322, align 4
  %__tmp324 = icmp eq i32 %__tmp323, 37
  br i1 %__tmp324, label %bb156, label %bb157
bb156:
  %__tmp325 = load i32, i32* %b, align 4
  %__tmp326 = load i32, i32* %a, align 4
  %__tmp327 = srem i32 %__tmp325, %__tmp326
  store i32 %__tmp327, i32* %c.1, align 4
  br label %bb158
bb157:
  br label %bb158
bb158:
  %__tmp328 = load i32, i32* @i, align 4
  %__tmp329 = sext i32 %__tmp328 to i64
  %__tmp330 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp329
  %__tmp331 = load i32, i32* %__tmp330, align 4
  %__tmp332 = icmp eq i32 %__tmp331, 94
  br i1 %__tmp332, label %bb159, label %bb160
bb159:
  %__tmp333 = load i32, i32* %b, align 4
  %__tmp334 = load i32, i32* %a, align 4
  %__tmp335 = call i32 @power(i32 %__tmp333, i32 %__tmp334)
  store i32 %__tmp335, i32* %c.1, align 4
  br label %bb161
bb160:
  br label %bb161
bb161:
  %__tmp336 = load i32, i32* %c.1, align 4
  call void @intpush(i32 %__tmp336)
  br label %bb128
bb127:
  %__tmp337 = load i32, i32* @i, align 4
  %__tmp338 = sext i32 %__tmp337 to i64
  %__tmp339 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp338
  %__tmp340 = load i32, i32* %__tmp339, align 4
  %__tmp341 = icmp ne i32 %__tmp340, 32
  br i1 %__tmp341, label %bb162, label %bb163
bb162:
  %__tmp342 = load i32, i32* @i, align 4
  %__tmp343 = sext i32 %__tmp342 to i64
  %__tmp344 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp343
  %__tmp345 = load i32, i32* %__tmp344, align 4
  %__tmp346 = sub i32 %__tmp345, 48
  call void @intpush(i32 %__tmp346)
  store i32 1, i32* @ii, align 4
  br label %bb165
bb165:
  %__tmp347 = load i32, i32* @i, align 4
  %__tmp348 = load i32, i32* @ii, align 4
  %__tmp349 = add i32 %__tmp347, %__tmp348
  %__tmp350 = sext i32 %__tmp349 to i64
  %__tmp351 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp350
  %__tmp352 = load i32, i32* %__tmp351, align 4
  %__tmp353 = icmp ne i32 %__tmp352, 32
  br i1 %__tmp353, label %bb166, label %bb167
bb166:
  %__tmp354 = load i32, i32* @i, align 4
  %__tmp355 = load i32, i32* @ii, align 4
  %__tmp356 = add i32 %__tmp354, %__tmp355
  %__tmp357 = sext i32 %__tmp356 to i64
  %__tmp358 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp357
  %__tmp359 = load i32, i32* %__tmp358, align 4
  %__tmp360 = sub i32 %__tmp359, 48
  call void @intadd(i32 %__tmp360)
  %__tmp361 = load i32, i32* @ii, align 4
  %__tmp362 = add i32 %__tmp361, 1
  store i32 %__tmp362, i32* @ii, align 4
  br label %bb165
bb167:
  %__tmp363 = load i32, i32* @i, align 4
  %__tmp364 = load i32, i32* @ii, align 4
  %__tmp365 = add i32 %__tmp363, %__tmp364
  %__tmp366 = sub i32 %__tmp365, 1
  store i32 %__tmp366, i32* @i, align 4
  br label %bb164
bb163:
  br label %bb164
bb164:
  br label %bb128
bb128:
  %__tmp367 = load i32, i32* @i, align 4
  %__tmp368 = add i32 %__tmp367, 1
  store i32 %__tmp368, i32* @i, align 4
  br label %bb123
bb125:
  %__tmp369 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 1
  %__tmp370 = load i32, i32* %__tmp369, align 4
  call void @putint(i32 %__tmp370)
  ret i32 0
}

