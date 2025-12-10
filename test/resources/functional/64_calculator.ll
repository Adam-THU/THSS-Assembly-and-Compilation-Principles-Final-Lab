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
  %__tmp25 = call i32 @chapush(i32 40)
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp26 = load i32, i32* @i, align 4
  %__tmp27 = sext i32 %__tmp26 to i64
  %__tmp28 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp27
  %__tmp29 = load i32, i32* %__tmp28, align 4
  %__tmp30 = icmp eq i32 %__tmp29, 94
  br i1 %__tmp30, label %bb9, label %bb10
bb9:
  %__tmp31 = call i32 @chapush(i32 94)
  br label %bb11
bb10:
  br label %bb11
bb11:
  %__tmp32 = load i32, i32* @i, align 4
  %__tmp33 = sext i32 %__tmp32 to i64
  %__tmp34 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp33
  %__tmp35 = load i32, i32* %__tmp34, align 4
  %__tmp36 = icmp eq i32 %__tmp35, 41
  br i1 %__tmp36, label %bb12, label %bb13
bb12:
  %__tmp37 = call i32 @chapop()
  store i32 %__tmp37, i32* @c, align 4
  br label %bb15
bb15:
  %__tmp38 = load i32, i32* @c, align 4
  %__tmp39 = icmp ne i32 %__tmp38, 40
  br i1 %__tmp39, label %bb16, label %bb17
bb16:
  %__tmp40 = load i32, i32* @ii, align 4
  %__tmp41 = sext i32 %__tmp40 to i64
  %__tmp42 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp41
  store i32 32, i32* %__tmp42, align 4
  %__tmp43 = load i32, i32* @ii, align 4
  %__tmp44 = add i32 %__tmp43, 1
  %__tmp45 = sext i32 %__tmp44 to i64
  %__tmp46 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp45
  %__tmp47 = load i32, i32* @c, align 4
  store i32 %__tmp47, i32* %__tmp46, align 4
  %__tmp48 = load i32, i32* @ii, align 4
  %__tmp49 = add i32 %__tmp48, 2
  store i32 %__tmp49, i32* @ii, align 4
  %__tmp50 = call i32 @chapop()
  store i32 %__tmp50, i32* @c, align 4
  br label %bb15
bb17:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp51 = load i32, i32* @i, align 4
  %__tmp52 = sext i32 %__tmp51 to i64
  %__tmp53 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp52
  %__tmp54 = load i32, i32* %__tmp53, align 4
  %__tmp55 = icmp eq i32 %__tmp54, 43
  br i1 %__tmp55, label %bb18, label %bb19
bb18:
  br label %bb21
bb21:
  %__tmp56 = load i32, i32* @chat, align 4
  %__tmp57 = sext i32 %__tmp56 to i64
  %__tmp58 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp57
  %__tmp59 = load i32, i32* %__tmp58, align 4
  %__tmp60 = icmp eq i32 %__tmp59, 43
  br i1 %__tmp60, label %bb26, label %bb24
bb26:
  br label %bb25
bb24:
  %__tmp61 = load i32, i32* @chat, align 4
  %__tmp62 = sext i32 %__tmp61 to i64
  %__tmp63 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp62
  %__tmp64 = load i32, i32* %__tmp63, align 4
  %__tmp65 = icmp eq i32 %__tmp64, 45
  br label %bb25
bb25:
  %__tmp66 = phi i1 [ 1, %bb26 ], [ %__tmp65, %bb24 ]
  br i1 %__tmp66, label %bb29, label %bb27
bb29:
  br label %bb28
bb27:
  %__tmp67 = load i32, i32* @chat, align 4
  %__tmp68 = sext i32 %__tmp67 to i64
  %__tmp69 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp68
  %__tmp70 = load i32, i32* %__tmp69, align 4
  %__tmp71 = icmp eq i32 %__tmp70, 42
  br label %bb28
bb28:
  %__tmp72 = phi i1 [ 1, %bb29 ], [ %__tmp71, %bb27 ]
  br i1 %__tmp72, label %bb32, label %bb30
bb32:
  br label %bb31
bb30:
  %__tmp73 = load i32, i32* @chat, align 4
  %__tmp74 = sext i32 %__tmp73 to i64
  %__tmp75 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp74
  %__tmp76 = load i32, i32* %__tmp75, align 4
  %__tmp77 = icmp eq i32 %__tmp76, 47
  br label %bb31
bb31:
  %__tmp78 = phi i1 [ 1, %bb32 ], [ %__tmp77, %bb30 ]
  br i1 %__tmp78, label %bb35, label %bb33
bb35:
  br label %bb34
bb33:
  %__tmp79 = load i32, i32* @chat, align 4
  %__tmp80 = sext i32 %__tmp79 to i64
  %__tmp81 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp80
  %__tmp82 = load i32, i32* %__tmp81, align 4
  %__tmp83 = icmp eq i32 %__tmp82, 37
  br label %bb34
bb34:
  %__tmp84 = phi i1 [ 1, %bb35 ], [ %__tmp83, %bb33 ]
  br i1 %__tmp84, label %bb38, label %bb36
bb38:
  br label %bb37
bb36:
  %__tmp85 = load i32, i32* @chat, align 4
  %__tmp86 = sext i32 %__tmp85 to i64
  %__tmp87 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp86
  %__tmp88 = load i32, i32* %__tmp87, align 4
  %__tmp89 = icmp eq i32 %__tmp88, 94
  br label %bb37
bb37:
  %__tmp90 = phi i1 [ 1, %bb38 ], [ %__tmp89, %bb36 ]
  br i1 %__tmp90, label %bb22, label %bb23
bb22:
  %__tmp91 = call i32 @find()
  %__tmp92 = icmp eq i32 %__tmp91, 0
  br i1 %__tmp92, label %bb39, label %bb40
bb39:
  br label %bb23
bb40:
  br label %bb41
bb41:
  br label %bb21
bb23:
  %__tmp93 = call i32 @chapush(i32 43)
  br label %bb20
bb19:
  br label %bb20
bb20:
  %__tmp94 = load i32, i32* @i, align 4
  %__tmp95 = sext i32 %__tmp94 to i64
  %__tmp96 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp95
  %__tmp97 = load i32, i32* %__tmp96, align 4
  %__tmp98 = icmp eq i32 %__tmp97, 45
  br i1 %__tmp98, label %bb42, label %bb43
bb42:
  br label %bb45
bb45:
  %__tmp99 = load i32, i32* @chat, align 4
  %__tmp100 = sext i32 %__tmp99 to i64
  %__tmp101 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp100
  %__tmp102 = load i32, i32* %__tmp101, align 4
  %__tmp103 = icmp eq i32 %__tmp102, 43
  br i1 %__tmp103, label %bb50, label %bb48
bb50:
  br label %bb49
bb48:
  %__tmp104 = load i32, i32* @chat, align 4
  %__tmp105 = sext i32 %__tmp104 to i64
  %__tmp106 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp105
  %__tmp107 = load i32, i32* %__tmp106, align 4
  %__tmp108 = icmp eq i32 %__tmp107, 45
  br label %bb49
bb49:
  %__tmp109 = phi i1 [ 1, %bb50 ], [ %__tmp108, %bb48 ]
  br i1 %__tmp109, label %bb53, label %bb51
bb53:
  br label %bb52
bb51:
  %__tmp110 = load i32, i32* @chat, align 4
  %__tmp111 = sext i32 %__tmp110 to i64
  %__tmp112 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp111
  %__tmp113 = load i32, i32* %__tmp112, align 4
  %__tmp114 = icmp eq i32 %__tmp113, 42
  br label %bb52
bb52:
  %__tmp115 = phi i1 [ 1, %bb53 ], [ %__tmp114, %bb51 ]
  br i1 %__tmp115, label %bb56, label %bb54
bb56:
  br label %bb55
bb54:
  %__tmp116 = load i32, i32* @chat, align 4
  %__tmp117 = sext i32 %__tmp116 to i64
  %__tmp118 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp117
  %__tmp119 = load i32, i32* %__tmp118, align 4
  %__tmp120 = icmp eq i32 %__tmp119, 47
  br label %bb55
bb55:
  %__tmp121 = phi i1 [ 1, %bb56 ], [ %__tmp120, %bb54 ]
  br i1 %__tmp121, label %bb59, label %bb57
bb59:
  br label %bb58
bb57:
  %__tmp122 = load i32, i32* @chat, align 4
  %__tmp123 = sext i32 %__tmp122 to i64
  %__tmp124 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp123
  %__tmp125 = load i32, i32* %__tmp124, align 4
  %__tmp126 = icmp eq i32 %__tmp125, 37
  br label %bb58
bb58:
  %__tmp127 = phi i1 [ 1, %bb59 ], [ %__tmp126, %bb57 ]
  br i1 %__tmp127, label %bb62, label %bb60
bb62:
  br label %bb61
bb60:
  %__tmp128 = load i32, i32* @chat, align 4
  %__tmp129 = sext i32 %__tmp128 to i64
  %__tmp130 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp129
  %__tmp131 = load i32, i32* %__tmp130, align 4
  %__tmp132 = icmp eq i32 %__tmp131, 94
  br label %bb61
bb61:
  %__tmp133 = phi i1 [ 1, %bb62 ], [ %__tmp132, %bb60 ]
  br i1 %__tmp133, label %bb46, label %bb47
bb46:
  %__tmp134 = call i32 @find()
  %__tmp135 = icmp eq i32 %__tmp134, 0
  br i1 %__tmp135, label %bb63, label %bb64
bb63:
  br label %bb47
bb64:
  br label %bb65
bb65:
  br label %bb45
bb47:
  %__tmp136 = call i32 @chapush(i32 45)
  br label %bb44
bb43:
  br label %bb44
bb44:
  %__tmp137 = load i32, i32* @i, align 4
  %__tmp138 = sext i32 %__tmp137 to i64
  %__tmp139 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp138
  %__tmp140 = load i32, i32* %__tmp139, align 4
  %__tmp141 = icmp eq i32 %__tmp140, 42
  br i1 %__tmp141, label %bb66, label %bb67
bb66:
  br label %bb69
bb69:
  %__tmp142 = load i32, i32* @chat, align 4
  %__tmp143 = sext i32 %__tmp142 to i64
  %__tmp144 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp143
  %__tmp145 = load i32, i32* %__tmp144, align 4
  %__tmp146 = icmp eq i32 %__tmp145, 42
  br i1 %__tmp146, label %bb74, label %bb72
bb74:
  br label %bb73
bb72:
  %__tmp147 = load i32, i32* @chat, align 4
  %__tmp148 = sext i32 %__tmp147 to i64
  %__tmp149 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp148
  %__tmp150 = load i32, i32* %__tmp149, align 4
  %__tmp151 = icmp eq i32 %__tmp150, 47
  br label %bb73
bb73:
  %__tmp152 = phi i1 [ 1, %bb74 ], [ %__tmp151, %bb72 ]
  br i1 %__tmp152, label %bb77, label %bb75
bb77:
  br label %bb76
bb75:
  %__tmp153 = load i32, i32* @chat, align 4
  %__tmp154 = sext i32 %__tmp153 to i64
  %__tmp155 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp154
  %__tmp156 = load i32, i32* %__tmp155, align 4
  %__tmp157 = icmp eq i32 %__tmp156, 37
  br label %bb76
bb76:
  %__tmp158 = phi i1 [ 1, %bb77 ], [ %__tmp157, %bb75 ]
  br i1 %__tmp158, label %bb80, label %bb78
bb80:
  br label %bb79
bb78:
  %__tmp159 = load i32, i32* @chat, align 4
  %__tmp160 = sext i32 %__tmp159 to i64
  %__tmp161 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp160
  %__tmp162 = load i32, i32* %__tmp161, align 4
  %__tmp163 = icmp eq i32 %__tmp162, 94
  br label %bb79
bb79:
  %__tmp164 = phi i1 [ 1, %bb80 ], [ %__tmp163, %bb78 ]
  br i1 %__tmp164, label %bb70, label %bb71
bb70:
  %__tmp165 = call i32 @find()
  %__tmp166 = icmp eq i32 %__tmp165, 0
  br i1 %__tmp166, label %bb81, label %bb82
bb81:
  br label %bb71
bb82:
  br label %bb83
bb83:
  br label %bb69
bb71:
  %__tmp167 = call i32 @chapush(i32 42)
  br label %bb68
bb67:
  br label %bb68
bb68:
  %__tmp168 = load i32, i32* @i, align 4
  %__tmp169 = sext i32 %__tmp168 to i64
  %__tmp170 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp169
  %__tmp171 = load i32, i32* %__tmp170, align 4
  %__tmp172 = icmp eq i32 %__tmp171, 47
  br i1 %__tmp172, label %bb84, label %bb85
bb84:
  br label %bb87
bb87:
  %__tmp173 = load i32, i32* @chat, align 4
  %__tmp174 = sext i32 %__tmp173 to i64
  %__tmp175 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp174
  %__tmp176 = load i32, i32* %__tmp175, align 4
  %__tmp177 = icmp eq i32 %__tmp176, 42
  br i1 %__tmp177, label %bb92, label %bb90
bb92:
  br label %bb91
bb90:
  %__tmp178 = load i32, i32* @chat, align 4
  %__tmp179 = sext i32 %__tmp178 to i64
  %__tmp180 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp179
  %__tmp181 = load i32, i32* %__tmp180, align 4
  %__tmp182 = icmp eq i32 %__tmp181, 47
  br label %bb91
bb91:
  %__tmp183 = phi i1 [ 1, %bb92 ], [ %__tmp182, %bb90 ]
  br i1 %__tmp183, label %bb95, label %bb93
bb95:
  br label %bb94
bb93:
  %__tmp184 = load i32, i32* @chat, align 4
  %__tmp185 = sext i32 %__tmp184 to i64
  %__tmp186 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp185
  %__tmp187 = load i32, i32* %__tmp186, align 4
  %__tmp188 = icmp eq i32 %__tmp187, 37
  br label %bb94
bb94:
  %__tmp189 = phi i1 [ 1, %bb95 ], [ %__tmp188, %bb93 ]
  br i1 %__tmp189, label %bb98, label %bb96
bb98:
  br label %bb97
bb96:
  %__tmp190 = load i32, i32* @chat, align 4
  %__tmp191 = sext i32 %__tmp190 to i64
  %__tmp192 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp191
  %__tmp193 = load i32, i32* %__tmp192, align 4
  %__tmp194 = icmp eq i32 %__tmp193, 94
  br label %bb97
bb97:
  %__tmp195 = phi i1 [ 1, %bb98 ], [ %__tmp194, %bb96 ]
  br i1 %__tmp195, label %bb88, label %bb89
bb88:
  %__tmp196 = call i32 @find()
  %__tmp197 = icmp eq i32 %__tmp196, 0
  br i1 %__tmp197, label %bb99, label %bb100
bb99:
  br label %bb89
bb100:
  br label %bb101
bb101:
  br label %bb87
bb89:
  %__tmp198 = call i32 @chapush(i32 47)
  br label %bb86
bb85:
  br label %bb86
bb86:
  %__tmp199 = load i32, i32* @i, align 4
  %__tmp200 = sext i32 %__tmp199 to i64
  %__tmp201 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp200
  %__tmp202 = load i32, i32* %__tmp201, align 4
  %__tmp203 = icmp eq i32 %__tmp202, 37
  br i1 %__tmp203, label %bb102, label %bb103
bb102:
  br label %bb105
bb105:
  %__tmp204 = load i32, i32* @chat, align 4
  %__tmp205 = sext i32 %__tmp204 to i64
  %__tmp206 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp205
  %__tmp207 = load i32, i32* %__tmp206, align 4
  %__tmp208 = icmp eq i32 %__tmp207, 42
  br i1 %__tmp208, label %bb110, label %bb108
bb110:
  br label %bb109
bb108:
  %__tmp209 = load i32, i32* @chat, align 4
  %__tmp210 = sext i32 %__tmp209 to i64
  %__tmp211 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp210
  %__tmp212 = load i32, i32* %__tmp211, align 4
  %__tmp213 = icmp eq i32 %__tmp212, 47
  br label %bb109
bb109:
  %__tmp214 = phi i1 [ 1, %bb110 ], [ %__tmp213, %bb108 ]
  br i1 %__tmp214, label %bb113, label %bb111
bb113:
  br label %bb112
bb111:
  %__tmp215 = load i32, i32* @chat, align 4
  %__tmp216 = sext i32 %__tmp215 to i64
  %__tmp217 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp216
  %__tmp218 = load i32, i32* %__tmp217, align 4
  %__tmp219 = icmp eq i32 %__tmp218, 37
  br label %bb112
bb112:
  %__tmp220 = phi i1 [ 1, %bb113 ], [ %__tmp219, %bb111 ]
  br i1 %__tmp220, label %bb116, label %bb114
bb116:
  br label %bb115
bb114:
  %__tmp221 = load i32, i32* @chat, align 4
  %__tmp222 = sext i32 %__tmp221 to i64
  %__tmp223 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp222
  %__tmp224 = load i32, i32* %__tmp223, align 4
  %__tmp225 = icmp eq i32 %__tmp224, 94
  br label %bb115
bb115:
  %__tmp226 = phi i1 [ 1, %bb116 ], [ %__tmp225, %bb114 ]
  br i1 %__tmp226, label %bb106, label %bb107
bb106:
  %__tmp227 = call i32 @find()
  %__tmp228 = icmp eq i32 %__tmp227, 0
  br i1 %__tmp228, label %bb117, label %bb118
bb117:
  br label %bb107
bb118:
  br label %bb119
bb119:
  br label %bb105
bb107:
  %__tmp229 = call i32 @chapush(i32 37)
  br label %bb104
bb103:
  br label %bb104
bb104:
  %__tmp230 = load i32, i32* @ii, align 4
  %__tmp231 = sext i32 %__tmp230 to i64
  %__tmp232 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp231
  store i32 32, i32* %__tmp232, align 4
  %__tmp233 = load i32, i32* @ii, align 4
  %__tmp234 = add i32 %__tmp233, 1
  store i32 %__tmp234, i32* @ii, align 4
  br label %bb5
bb5:
  %__tmp235 = load i32, i32* @i, align 4
  %__tmp236 = add i32 %__tmp235, 1
  store i32 %__tmp236, i32* @i, align 4
  br label %bb0
bb2:
  br label %bb120
bb120:
  %__tmp237 = load i32, i32* @chat, align 4
  %__tmp238 = icmp sgt i32 %__tmp237, 0
  br i1 %__tmp238, label %bb121, label %bb122
bb121:
  %c = alloca i32, align 4
  %__tmp239 = call i32 @chapop()
  store i32 %__tmp239, i32* %c, align 4
  %__tmp240 = load i32, i32* @ii, align 4
  %__tmp241 = sext i32 %__tmp240 to i64
  %__tmp242 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp241
  store i32 32, i32* %__tmp242, align 4
  %__tmp243 = load i32, i32* @ii, align 4
  %__tmp244 = add i32 %__tmp243, 1
  %__tmp245 = sext i32 %__tmp244 to i64
  %__tmp246 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp245
  %__tmp247 = load i32, i32* %c, align 4
  store i32 %__tmp247, i32* %__tmp246, align 4
  %__tmp248 = load i32, i32* @ii, align 4
  %__tmp249 = add i32 %__tmp248, 2
  store i32 %__tmp249, i32* @ii, align 4
  br label %bb120
bb122:
  %__tmp250 = load i32, i32* @ii, align 4
  %__tmp251 = sext i32 %__tmp250 to i64
  %__tmp252 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp251
  store i32 64, i32* %__tmp252, align 4
  store i32 1, i32* @i, align 4
  br label %bb123
bb123:
  %__tmp253 = load i32, i32* @i, align 4
  %__tmp254 = sext i32 %__tmp253 to i64
  %__tmp255 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp254
  %__tmp256 = load i32, i32* %__tmp255, align 4
  %__tmp257 = icmp ne i32 %__tmp256, 64
  br i1 %__tmp257, label %bb124, label %bb125
bb124:
  %__tmp258 = load i32, i32* @i, align 4
  %__tmp259 = sext i32 %__tmp258 to i64
  %__tmp260 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp259
  %__tmp261 = load i32, i32* %__tmp260, align 4
  %__tmp262 = icmp eq i32 %__tmp261, 43
  br i1 %__tmp262, label %bb131, label %bb129
bb131:
  br label %bb130
bb129:
  %__tmp263 = load i32, i32* @i, align 4
  %__tmp264 = sext i32 %__tmp263 to i64
  %__tmp265 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp264
  %__tmp266 = load i32, i32* %__tmp265, align 4
  %__tmp267 = icmp eq i32 %__tmp266, 45
  br label %bb130
bb130:
  %__tmp268 = phi i1 [ 1, %bb131 ], [ %__tmp267, %bb129 ]
  br i1 %__tmp268, label %bb134, label %bb132
bb134:
  br label %bb133
bb132:
  %__tmp269 = load i32, i32* @i, align 4
  %__tmp270 = sext i32 %__tmp269 to i64
  %__tmp271 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp270
  %__tmp272 = load i32, i32* %__tmp271, align 4
  %__tmp273 = icmp eq i32 %__tmp272, 42
  br label %bb133
bb133:
  %__tmp274 = phi i1 [ 1, %bb134 ], [ %__tmp273, %bb132 ]
  br i1 %__tmp274, label %bb137, label %bb135
bb137:
  br label %bb136
bb135:
  %__tmp275 = load i32, i32* @i, align 4
  %__tmp276 = sext i32 %__tmp275 to i64
  %__tmp277 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp276
  %__tmp278 = load i32, i32* %__tmp277, align 4
  %__tmp279 = icmp eq i32 %__tmp278, 47
  br label %bb136
bb136:
  %__tmp280 = phi i1 [ 1, %bb137 ], [ %__tmp279, %bb135 ]
  br i1 %__tmp280, label %bb140, label %bb138
bb140:
  br label %bb139
bb138:
  %__tmp281 = load i32, i32* @i, align 4
  %__tmp282 = sext i32 %__tmp281 to i64
  %__tmp283 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp282
  %__tmp284 = load i32, i32* %__tmp283, align 4
  %__tmp285 = icmp eq i32 %__tmp284, 37
  br label %bb139
bb139:
  %__tmp286 = phi i1 [ 1, %bb140 ], [ %__tmp285, %bb138 ]
  br i1 %__tmp286, label %bb143, label %bb141
bb143:
  br label %bb142
bb141:
  %__tmp287 = load i32, i32* @i, align 4
  %__tmp288 = sext i32 %__tmp287 to i64
  %__tmp289 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp288
  %__tmp290 = load i32, i32* %__tmp289, align 4
  %__tmp291 = icmp eq i32 %__tmp290, 94
  br label %bb142
bb142:
  %__tmp292 = phi i1 [ 1, %bb143 ], [ %__tmp291, %bb141 ]
  br i1 %__tmp292, label %bb126, label %bb127
bb126:
  %a = alloca i32, align 4
  %__tmp293 = call i32 @intpop()
  store i32 %__tmp293, i32* %a, align 4
  %b = alloca i32, align 4
  %__tmp294 = call i32 @intpop()
  store i32 %__tmp294, i32* %b, align 4
  %c.1 = alloca i32, align 4
  %__tmp295 = load i32, i32* @i, align 4
  %__tmp296 = sext i32 %__tmp295 to i64
  %__tmp297 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp296
  %__tmp298 = load i32, i32* %__tmp297, align 4
  %__tmp299 = icmp eq i32 %__tmp298, 43
  br i1 %__tmp299, label %bb144, label %bb145
bb144:
  %__tmp300 = load i32, i32* %a, align 4
  %__tmp301 = load i32, i32* %b, align 4
  %__tmp302 = add i32 %__tmp300, %__tmp301
  store i32 %__tmp302, i32* %c.1, align 4
  br label %bb146
bb145:
  br label %bb146
bb146:
  %__tmp303 = load i32, i32* @i, align 4
  %__tmp304 = sext i32 %__tmp303 to i64
  %__tmp305 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp304
  %__tmp306 = load i32, i32* %__tmp305, align 4
  %__tmp307 = icmp eq i32 %__tmp306, 45
  br i1 %__tmp307, label %bb147, label %bb148
bb147:
  %__tmp308 = load i32, i32* %b, align 4
  %__tmp309 = load i32, i32* %a, align 4
  %__tmp310 = sub i32 %__tmp308, %__tmp309
  store i32 %__tmp310, i32* %c.1, align 4
  br label %bb149
bb148:
  br label %bb149
bb149:
  %__tmp311 = load i32, i32* @i, align 4
  %__tmp312 = sext i32 %__tmp311 to i64
  %__tmp313 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp312
  %__tmp314 = load i32, i32* %__tmp313, align 4
  %__tmp315 = icmp eq i32 %__tmp314, 42
  br i1 %__tmp315, label %bb150, label %bb151
bb150:
  %__tmp316 = load i32, i32* %a, align 4
  %__tmp317 = load i32, i32* %b, align 4
  %__tmp318 = mul i32 %__tmp316, %__tmp317
  store i32 %__tmp318, i32* %c.1, align 4
  br label %bb152
bb151:
  br label %bb152
bb152:
  %__tmp319 = load i32, i32* @i, align 4
  %__tmp320 = sext i32 %__tmp319 to i64
  %__tmp321 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp320
  %__tmp322 = load i32, i32* %__tmp321, align 4
  %__tmp323 = icmp eq i32 %__tmp322, 47
  br i1 %__tmp323, label %bb153, label %bb154
bb153:
  %__tmp324 = load i32, i32* %b, align 4
  %__tmp325 = load i32, i32* %a, align 4
  %__tmp326 = sdiv i32 %__tmp324, %__tmp325
  store i32 %__tmp326, i32* %c.1, align 4
  br label %bb155
bb154:
  br label %bb155
bb155:
  %__tmp327 = load i32, i32* @i, align 4
  %__tmp328 = sext i32 %__tmp327 to i64
  %__tmp329 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp328
  %__tmp330 = load i32, i32* %__tmp329, align 4
  %__tmp331 = icmp eq i32 %__tmp330, 37
  br i1 %__tmp331, label %bb156, label %bb157
bb156:
  %__tmp332 = load i32, i32* %b, align 4
  %__tmp333 = load i32, i32* %a, align 4
  %__tmp334 = srem i32 %__tmp332, %__tmp333
  store i32 %__tmp334, i32* %c.1, align 4
  br label %bb158
bb157:
  br label %bb158
bb158:
  %__tmp335 = load i32, i32* @i, align 4
  %__tmp336 = sext i32 %__tmp335 to i64
  %__tmp337 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp336
  %__tmp338 = load i32, i32* %__tmp337, align 4
  %__tmp339 = icmp eq i32 %__tmp338, 94
  br i1 %__tmp339, label %bb159, label %bb160
bb159:
  %__tmp340 = load i32, i32* %b, align 4
  %__tmp341 = load i32, i32* %a, align 4
  %__tmp342 = call i32 @power(i32 %__tmp340, i32 %__tmp341)
  store i32 %__tmp342, i32* %c.1, align 4
  br label %bb161
bb160:
  br label %bb161
bb161:
  %__tmp343 = load i32, i32* %c.1, align 4
  %__tmp344 = call i32 @intpush(i32 %__tmp343)
  br label %bb128
bb127:
  %__tmp345 = load i32, i32* @i, align 4
  %__tmp346 = sext i32 %__tmp345 to i64
  %__tmp347 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp346
  %__tmp348 = load i32, i32* %__tmp347, align 4
  %__tmp349 = icmp ne i32 %__tmp348, 32
  br i1 %__tmp349, label %bb162, label %bb163
bb162:
  %__tmp350 = load i32, i32* @i, align 4
  %__tmp351 = sext i32 %__tmp350 to i64
  %__tmp352 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp351
  %__tmp353 = load i32, i32* %__tmp352, align 4
  %__tmp354 = sub i32 %__tmp353, 48
  %__tmp355 = call i32 @intpush(i32 %__tmp354)
  store i32 1, i32* @ii, align 4
  br label %bb165
bb165:
  %__tmp356 = load i32, i32* @i, align 4
  %__tmp357 = load i32, i32* @ii, align 4
  %__tmp358 = add i32 %__tmp356, %__tmp357
  %__tmp359 = sext i32 %__tmp358 to i64
  %__tmp360 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp359
  %__tmp361 = load i32, i32* %__tmp360, align 4
  %__tmp362 = icmp ne i32 %__tmp361, 32
  br i1 %__tmp362, label %bb166, label %bb167
bb166:
  %__tmp363 = load i32, i32* @i, align 4
  %__tmp364 = load i32, i32* @ii, align 4
  %__tmp365 = add i32 %__tmp363, %__tmp364
  %__tmp366 = sext i32 %__tmp365 to i64
  %__tmp367 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp366
  %__tmp368 = load i32, i32* %__tmp367, align 4
  %__tmp369 = sub i32 %__tmp368, 48
  %__tmp370 = call i32 @intadd(i32 %__tmp369)
  %__tmp371 = load i32, i32* @ii, align 4
  %__tmp372 = add i32 %__tmp371, 1
  store i32 %__tmp372, i32* @ii, align 4
  br label %bb165
bb167:
  %__tmp373 = load i32, i32* @i, align 4
  %__tmp374 = load i32, i32* @ii, align 4
  %__tmp375 = add i32 %__tmp373, %__tmp374
  %__tmp376 = sub i32 %__tmp375, 1
  store i32 %__tmp376, i32* @i, align 4
  br label %bb164
bb163:
  br label %bb164
bb164:
  br label %bb128
bb128:
  %__tmp377 = load i32, i32* @i, align 4
  %__tmp378 = add i32 %__tmp377, 1
  store i32 %__tmp378, i32* @i, align 4
  br label %bb123
bb125:
  %__tmp379 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 1
  %__tmp380 = load i32, i32* %__tmp379, align 4
  %__tmp381 = call i32 @putint(i32 %__tmp380)
  ret i32 0
}

