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
  %__tmp0 = call i32 @getstr([10000 x i32]* @get)
  store i32 %__tmp0, i32* %lengets, align 4
  br label %bb0
bb0:
  %__tmp1 = load i32, i32* @i, align 4
  %__tmp2 = load i32, i32* %lengets, align 4
  %__tmp3 = icmp slt i32 %__tmp1, %__tmp2
  br i1 %__tmp3, label %bb1, label %bb2
bb1:
  %__tmp4 = load i32, i32* @i, align 4
  %__tmp5 = sext i32 %__tmp4 to i64
  %__tmp6 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp5
  %__tmp7 = load i32, i32* %__tmp6, align 4
  %__tmp8 = call i32 @isdigit(i32 %__tmp7)
  %__tmp9 = icmp eq i32 %__tmp8, 1
  br i1 %__tmp9, label %bb3, label %bb4
bb3:
  %__tmp10 = load i32, i32* @ii, align 4
  %__tmp11 = sext i32 %__tmp10 to i64
  %__tmp12 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp11
  %__tmp13 = load i32, i32* @i, align 4
  %__tmp14 = sext i32 %__tmp13 to i64
  %__tmp15 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp14
  %__tmp16 = load i32, i32* %__tmp15, align 4
  store i32 %__tmp16, i32* %__tmp12, align 4
  %__tmp17 = load i32, i32* @ii, align 4
  %__tmp18 = add i32 %__tmp17, 1
  store i32 %__tmp18, i32* @ii, align 4
  br label %bb5
bb4:
  %__tmp19 = load i32, i32* @i, align 4
  %__tmp20 = sext i32 %__tmp19 to i64
  %__tmp21 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp20
  %__tmp22 = load i32, i32* %__tmp21, align 4
  %__tmp23 = icmp eq i32 %__tmp22, 40
  br i1 %__tmp23, label %bb6, label %bb7
bb6:
  %__tmp24 = call i32 @chapush(i32 40)
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
  %__tmp30 = call i32 @chapush(i32 94)
  br label %bb11
bb10:
  br label %bb11
bb11:
  %__tmp31 = load i32, i32* @i, align 4
  %__tmp32 = sext i32 %__tmp31 to i64
  %__tmp33 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp32
  %__tmp34 = load i32, i32* %__tmp33, align 4
  %__tmp35 = icmp eq i32 %__tmp34, 41
  br i1 %__tmp35, label %bb12, label %bb13
bb12:
  %__tmp36 = call i32 @chapop()
  store i32 %__tmp36, i32* @c, align 4
  br label %bb15
bb15:
  %__tmp37 = load i32, i32* @c, align 4
  %__tmp38 = icmp ne i32 %__tmp37, 40
  br i1 %__tmp38, label %bb16, label %bb17
bb16:
  %__tmp39 = load i32, i32* @ii, align 4
  %__tmp40 = sext i32 %__tmp39 to i64
  %__tmp41 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp40
  store i32 32, i32* %__tmp41, align 4
  %__tmp42 = load i32, i32* @ii, align 4
  %__tmp43 = add i32 %__tmp42, 1
  %__tmp44 = sext i32 %__tmp43 to i64
  %__tmp45 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp44
  %__tmp46 = load i32, i32* @c, align 4
  store i32 %__tmp46, i32* %__tmp45, align 4
  %__tmp47 = load i32, i32* @ii, align 4
  %__tmp48 = add i32 %__tmp47, 2
  store i32 %__tmp48, i32* @ii, align 4
  %__tmp49 = call i32 @chapop()
  store i32 %__tmp49, i32* @c, align 4
  br label %bb15
bb17:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp50 = load i32, i32* @i, align 4
  %__tmp51 = sext i32 %__tmp50 to i64
  %__tmp52 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp51
  %__tmp53 = load i32, i32* %__tmp52, align 4
  %__tmp54 = icmp eq i32 %__tmp53, 43
  br i1 %__tmp54, label %bb18, label %bb19
bb18:
  br label %bb21
bb21:
  %__tmp55 = load i32, i32* @chat, align 4
  %__tmp56 = sext i32 %__tmp55 to i64
  %__tmp57 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp56
  %__tmp58 = load i32, i32* %__tmp57, align 4
  %__tmp59 = icmp eq i32 %__tmp58, 43
  br i1 %__tmp59, label %bb26, label %bb24
bb26:
  br label %bb25
bb24:
  %__tmp60 = load i32, i32* @chat, align 4
  %__tmp61 = sext i32 %__tmp60 to i64
  %__tmp62 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp61
  %__tmp63 = load i32, i32* %__tmp62, align 4
  %__tmp64 = icmp eq i32 %__tmp63, 45
  br label %bb25
bb25:
  %__tmp65 = phi i1 [ 1, %bb26 ], [ %__tmp64, %bb24 ]
  br i1 %__tmp65, label %bb29, label %bb27
bb29:
  br label %bb28
bb27:
  %__tmp66 = load i32, i32* @chat, align 4
  %__tmp67 = sext i32 %__tmp66 to i64
  %__tmp68 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp67
  %__tmp69 = load i32, i32* %__tmp68, align 4
  %__tmp70 = icmp eq i32 %__tmp69, 42
  br label %bb28
bb28:
  %__tmp71 = phi i1 [ 1, %bb29 ], [ %__tmp70, %bb27 ]
  br i1 %__tmp71, label %bb32, label %bb30
bb32:
  br label %bb31
bb30:
  %__tmp72 = load i32, i32* @chat, align 4
  %__tmp73 = sext i32 %__tmp72 to i64
  %__tmp74 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp73
  %__tmp75 = load i32, i32* %__tmp74, align 4
  %__tmp76 = icmp eq i32 %__tmp75, 47
  br label %bb31
bb31:
  %__tmp77 = phi i1 [ 1, %bb32 ], [ %__tmp76, %bb30 ]
  br i1 %__tmp77, label %bb35, label %bb33
bb35:
  br label %bb34
bb33:
  %__tmp78 = load i32, i32* @chat, align 4
  %__tmp79 = sext i32 %__tmp78 to i64
  %__tmp80 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp79
  %__tmp81 = load i32, i32* %__tmp80, align 4
  %__tmp82 = icmp eq i32 %__tmp81, 37
  br label %bb34
bb34:
  %__tmp83 = phi i1 [ 1, %bb35 ], [ %__tmp82, %bb33 ]
  br i1 %__tmp83, label %bb38, label %bb36
bb38:
  br label %bb37
bb36:
  %__tmp84 = load i32, i32* @chat, align 4
  %__tmp85 = sext i32 %__tmp84 to i64
  %__tmp86 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp85
  %__tmp87 = load i32, i32* %__tmp86, align 4
  %__tmp88 = icmp eq i32 %__tmp87, 94
  br label %bb37
bb37:
  %__tmp89 = phi i1 [ 1, %bb38 ], [ %__tmp88, %bb36 ]
  br i1 %__tmp89, label %bb22, label %bb23
bb22:
  %__tmp90 = call i32 @find()
  %__tmp91 = icmp eq i32 %__tmp90, 0
  br i1 %__tmp91, label %bb39, label %bb40
bb39:
  br label %bb23
bb40:
  br label %bb41
bb41:
  br label %bb21
bb23:
  %__tmp92 = call i32 @chapush(i32 43)
  br label %bb20
bb19:
  br label %bb20
bb20:
  %__tmp93 = load i32, i32* @i, align 4
  %__tmp94 = sext i32 %__tmp93 to i64
  %__tmp95 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp94
  %__tmp96 = load i32, i32* %__tmp95, align 4
  %__tmp97 = icmp eq i32 %__tmp96, 45
  br i1 %__tmp97, label %bb42, label %bb43
bb42:
  br label %bb45
bb45:
  %__tmp98 = load i32, i32* @chat, align 4
  %__tmp99 = sext i32 %__tmp98 to i64
  %__tmp100 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp99
  %__tmp101 = load i32, i32* %__tmp100, align 4
  %__tmp102 = icmp eq i32 %__tmp101, 43
  br i1 %__tmp102, label %bb50, label %bb48
bb50:
  br label %bb49
bb48:
  %__tmp103 = load i32, i32* @chat, align 4
  %__tmp104 = sext i32 %__tmp103 to i64
  %__tmp105 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp104
  %__tmp106 = load i32, i32* %__tmp105, align 4
  %__tmp107 = icmp eq i32 %__tmp106, 45
  br label %bb49
bb49:
  %__tmp108 = phi i1 [ 1, %bb50 ], [ %__tmp107, %bb48 ]
  br i1 %__tmp108, label %bb53, label %bb51
bb53:
  br label %bb52
bb51:
  %__tmp109 = load i32, i32* @chat, align 4
  %__tmp110 = sext i32 %__tmp109 to i64
  %__tmp111 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp110
  %__tmp112 = load i32, i32* %__tmp111, align 4
  %__tmp113 = icmp eq i32 %__tmp112, 42
  br label %bb52
bb52:
  %__tmp114 = phi i1 [ 1, %bb53 ], [ %__tmp113, %bb51 ]
  br i1 %__tmp114, label %bb56, label %bb54
bb56:
  br label %bb55
bb54:
  %__tmp115 = load i32, i32* @chat, align 4
  %__tmp116 = sext i32 %__tmp115 to i64
  %__tmp117 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp116
  %__tmp118 = load i32, i32* %__tmp117, align 4
  %__tmp119 = icmp eq i32 %__tmp118, 47
  br label %bb55
bb55:
  %__tmp120 = phi i1 [ 1, %bb56 ], [ %__tmp119, %bb54 ]
  br i1 %__tmp120, label %bb59, label %bb57
bb59:
  br label %bb58
bb57:
  %__tmp121 = load i32, i32* @chat, align 4
  %__tmp122 = sext i32 %__tmp121 to i64
  %__tmp123 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp122
  %__tmp124 = load i32, i32* %__tmp123, align 4
  %__tmp125 = icmp eq i32 %__tmp124, 37
  br label %bb58
bb58:
  %__tmp126 = phi i1 [ 1, %bb59 ], [ %__tmp125, %bb57 ]
  br i1 %__tmp126, label %bb62, label %bb60
bb62:
  br label %bb61
bb60:
  %__tmp127 = load i32, i32* @chat, align 4
  %__tmp128 = sext i32 %__tmp127 to i64
  %__tmp129 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp128
  %__tmp130 = load i32, i32* %__tmp129, align 4
  %__tmp131 = icmp eq i32 %__tmp130, 94
  br label %bb61
bb61:
  %__tmp132 = phi i1 [ 1, %bb62 ], [ %__tmp131, %bb60 ]
  br i1 %__tmp132, label %bb46, label %bb47
bb46:
  %__tmp133 = call i32 @find()
  %__tmp134 = icmp eq i32 %__tmp133, 0
  br i1 %__tmp134, label %bb63, label %bb64
bb63:
  br label %bb47
bb64:
  br label %bb65
bb65:
  br label %bb45
bb47:
  %__tmp135 = call i32 @chapush(i32 45)
  br label %bb44
bb43:
  br label %bb44
bb44:
  %__tmp136 = load i32, i32* @i, align 4
  %__tmp137 = sext i32 %__tmp136 to i64
  %__tmp138 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp137
  %__tmp139 = load i32, i32* %__tmp138, align 4
  %__tmp140 = icmp eq i32 %__tmp139, 42
  br i1 %__tmp140, label %bb66, label %bb67
bb66:
  br label %bb69
bb69:
  %__tmp141 = load i32, i32* @chat, align 4
  %__tmp142 = sext i32 %__tmp141 to i64
  %__tmp143 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp142
  %__tmp144 = load i32, i32* %__tmp143, align 4
  %__tmp145 = icmp eq i32 %__tmp144, 42
  br i1 %__tmp145, label %bb74, label %bb72
bb74:
  br label %bb73
bb72:
  %__tmp146 = load i32, i32* @chat, align 4
  %__tmp147 = sext i32 %__tmp146 to i64
  %__tmp148 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp147
  %__tmp149 = load i32, i32* %__tmp148, align 4
  %__tmp150 = icmp eq i32 %__tmp149, 47
  br label %bb73
bb73:
  %__tmp151 = phi i1 [ 1, %bb74 ], [ %__tmp150, %bb72 ]
  br i1 %__tmp151, label %bb77, label %bb75
bb77:
  br label %bb76
bb75:
  %__tmp152 = load i32, i32* @chat, align 4
  %__tmp153 = sext i32 %__tmp152 to i64
  %__tmp154 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp153
  %__tmp155 = load i32, i32* %__tmp154, align 4
  %__tmp156 = icmp eq i32 %__tmp155, 37
  br label %bb76
bb76:
  %__tmp157 = phi i1 [ 1, %bb77 ], [ %__tmp156, %bb75 ]
  br i1 %__tmp157, label %bb80, label %bb78
bb80:
  br label %bb79
bb78:
  %__tmp158 = load i32, i32* @chat, align 4
  %__tmp159 = sext i32 %__tmp158 to i64
  %__tmp160 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp159
  %__tmp161 = load i32, i32* %__tmp160, align 4
  %__tmp162 = icmp eq i32 %__tmp161, 94
  br label %bb79
bb79:
  %__tmp163 = phi i1 [ 1, %bb80 ], [ %__tmp162, %bb78 ]
  br i1 %__tmp163, label %bb70, label %bb71
bb70:
  %__tmp164 = call i32 @find()
  %__tmp165 = icmp eq i32 %__tmp164, 0
  br i1 %__tmp165, label %bb81, label %bb82
bb81:
  br label %bb71
bb82:
  br label %bb83
bb83:
  br label %bb69
bb71:
  %__tmp166 = call i32 @chapush(i32 42)
  br label %bb68
bb67:
  br label %bb68
bb68:
  %__tmp167 = load i32, i32* @i, align 4
  %__tmp168 = sext i32 %__tmp167 to i64
  %__tmp169 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp168
  %__tmp170 = load i32, i32* %__tmp169, align 4
  %__tmp171 = icmp eq i32 %__tmp170, 47
  br i1 %__tmp171, label %bb84, label %bb85
bb84:
  br label %bb87
bb87:
  %__tmp172 = load i32, i32* @chat, align 4
  %__tmp173 = sext i32 %__tmp172 to i64
  %__tmp174 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp173
  %__tmp175 = load i32, i32* %__tmp174, align 4
  %__tmp176 = icmp eq i32 %__tmp175, 42
  br i1 %__tmp176, label %bb92, label %bb90
bb92:
  br label %bb91
bb90:
  %__tmp177 = load i32, i32* @chat, align 4
  %__tmp178 = sext i32 %__tmp177 to i64
  %__tmp179 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp178
  %__tmp180 = load i32, i32* %__tmp179, align 4
  %__tmp181 = icmp eq i32 %__tmp180, 47
  br label %bb91
bb91:
  %__tmp182 = phi i1 [ 1, %bb92 ], [ %__tmp181, %bb90 ]
  br i1 %__tmp182, label %bb95, label %bb93
bb95:
  br label %bb94
bb93:
  %__tmp183 = load i32, i32* @chat, align 4
  %__tmp184 = sext i32 %__tmp183 to i64
  %__tmp185 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp184
  %__tmp186 = load i32, i32* %__tmp185, align 4
  %__tmp187 = icmp eq i32 %__tmp186, 37
  br label %bb94
bb94:
  %__tmp188 = phi i1 [ 1, %bb95 ], [ %__tmp187, %bb93 ]
  br i1 %__tmp188, label %bb98, label %bb96
bb98:
  br label %bb97
bb96:
  %__tmp189 = load i32, i32* @chat, align 4
  %__tmp190 = sext i32 %__tmp189 to i64
  %__tmp191 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp190
  %__tmp192 = load i32, i32* %__tmp191, align 4
  %__tmp193 = icmp eq i32 %__tmp192, 94
  br label %bb97
bb97:
  %__tmp194 = phi i1 [ 1, %bb98 ], [ %__tmp193, %bb96 ]
  br i1 %__tmp194, label %bb88, label %bb89
bb88:
  %__tmp195 = call i32 @find()
  %__tmp196 = icmp eq i32 %__tmp195, 0
  br i1 %__tmp196, label %bb99, label %bb100
bb99:
  br label %bb89
bb100:
  br label %bb101
bb101:
  br label %bb87
bb89:
  %__tmp197 = call i32 @chapush(i32 47)
  br label %bb86
bb85:
  br label %bb86
bb86:
  %__tmp198 = load i32, i32* @i, align 4
  %__tmp199 = sext i32 %__tmp198 to i64
  %__tmp200 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %__tmp199
  %__tmp201 = load i32, i32* %__tmp200, align 4
  %__tmp202 = icmp eq i32 %__tmp201, 37
  br i1 %__tmp202, label %bb102, label %bb103
bb102:
  br label %bb105
bb105:
  %__tmp203 = load i32, i32* @chat, align 4
  %__tmp204 = sext i32 %__tmp203 to i64
  %__tmp205 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp204
  %__tmp206 = load i32, i32* %__tmp205, align 4
  %__tmp207 = icmp eq i32 %__tmp206, 42
  br i1 %__tmp207, label %bb110, label %bb108
bb110:
  br label %bb109
bb108:
  %__tmp208 = load i32, i32* @chat, align 4
  %__tmp209 = sext i32 %__tmp208 to i64
  %__tmp210 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp209
  %__tmp211 = load i32, i32* %__tmp210, align 4
  %__tmp212 = icmp eq i32 %__tmp211, 47
  br label %bb109
bb109:
  %__tmp213 = phi i1 [ 1, %bb110 ], [ %__tmp212, %bb108 ]
  br i1 %__tmp213, label %bb113, label %bb111
bb113:
  br label %bb112
bb111:
  %__tmp214 = load i32, i32* @chat, align 4
  %__tmp215 = sext i32 %__tmp214 to i64
  %__tmp216 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp215
  %__tmp217 = load i32, i32* %__tmp216, align 4
  %__tmp218 = icmp eq i32 %__tmp217, 37
  br label %bb112
bb112:
  %__tmp219 = phi i1 [ 1, %bb113 ], [ %__tmp218, %bb111 ]
  br i1 %__tmp219, label %bb116, label %bb114
bb116:
  br label %bb115
bb114:
  %__tmp220 = load i32, i32* @chat, align 4
  %__tmp221 = sext i32 %__tmp220 to i64
  %__tmp222 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %__tmp221
  %__tmp223 = load i32, i32* %__tmp222, align 4
  %__tmp224 = icmp eq i32 %__tmp223, 94
  br label %bb115
bb115:
  %__tmp225 = phi i1 [ 1, %bb116 ], [ %__tmp224, %bb114 ]
  br i1 %__tmp225, label %bb106, label %bb107
bb106:
  %__tmp226 = call i32 @find()
  %__tmp227 = icmp eq i32 %__tmp226, 0
  br i1 %__tmp227, label %bb117, label %bb118
bb117:
  br label %bb107
bb118:
  br label %bb119
bb119:
  br label %bb105
bb107:
  %__tmp228 = call i32 @chapush(i32 37)
  br label %bb104
bb103:
  br label %bb104
bb104:
  %__tmp229 = load i32, i32* @ii, align 4
  %__tmp230 = sext i32 %__tmp229 to i64
  %__tmp231 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp230
  store i32 32, i32* %__tmp231, align 4
  %__tmp232 = load i32, i32* @ii, align 4
  %__tmp233 = add i32 %__tmp232, 1
  store i32 %__tmp233, i32* @ii, align 4
  br label %bb5
bb5:
  %__tmp234 = load i32, i32* @i, align 4
  %__tmp235 = add i32 %__tmp234, 1
  store i32 %__tmp235, i32* @i, align 4
  br label %bb0
bb2:
  br label %bb120
bb120:
  %__tmp236 = load i32, i32* @chat, align 4
  %__tmp237 = icmp sgt i32 %__tmp236, 0
  br i1 %__tmp237, label %bb121, label %bb122
bb121:
  %c = alloca i32, align 4
  %__tmp238 = call i32 @chapop()
  store i32 %__tmp238, i32* %c, align 4
  %__tmp239 = load i32, i32* @ii, align 4
  %__tmp240 = sext i32 %__tmp239 to i64
  %__tmp241 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp240
  store i32 32, i32* %__tmp241, align 4
  %__tmp242 = load i32, i32* @ii, align 4
  %__tmp243 = add i32 %__tmp242, 1
  %__tmp244 = sext i32 %__tmp243 to i64
  %__tmp245 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp244
  %__tmp246 = load i32, i32* %c, align 4
  store i32 %__tmp246, i32* %__tmp245, align 4
  %__tmp247 = load i32, i32* @ii, align 4
  %__tmp248 = add i32 %__tmp247, 2
  store i32 %__tmp248, i32* @ii, align 4
  br label %bb120
bb122:
  %__tmp249 = load i32, i32* @ii, align 4
  %__tmp250 = sext i32 %__tmp249 to i64
  %__tmp251 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp250
  store i32 64, i32* %__tmp251, align 4
  store i32 1, i32* @i, align 4
  br label %bb123
bb123:
  %__tmp252 = load i32, i32* @i, align 4
  %__tmp253 = sext i32 %__tmp252 to i64
  %__tmp254 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp253
  %__tmp255 = load i32, i32* %__tmp254, align 4
  %__tmp256 = icmp ne i32 %__tmp255, 64
  br i1 %__tmp256, label %bb124, label %bb125
bb124:
  %__tmp257 = load i32, i32* @i, align 4
  %__tmp258 = sext i32 %__tmp257 to i64
  %__tmp259 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp258
  %__tmp260 = load i32, i32* %__tmp259, align 4
  %__tmp261 = icmp eq i32 %__tmp260, 43
  br i1 %__tmp261, label %bb131, label %bb129
bb131:
  br label %bb130
bb129:
  %__tmp262 = load i32, i32* @i, align 4
  %__tmp263 = sext i32 %__tmp262 to i64
  %__tmp264 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp263
  %__tmp265 = load i32, i32* %__tmp264, align 4
  %__tmp266 = icmp eq i32 %__tmp265, 45
  br label %bb130
bb130:
  %__tmp267 = phi i1 [ 1, %bb131 ], [ %__tmp266, %bb129 ]
  br i1 %__tmp267, label %bb134, label %bb132
bb134:
  br label %bb133
bb132:
  %__tmp268 = load i32, i32* @i, align 4
  %__tmp269 = sext i32 %__tmp268 to i64
  %__tmp270 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp269
  %__tmp271 = load i32, i32* %__tmp270, align 4
  %__tmp272 = icmp eq i32 %__tmp271, 42
  br label %bb133
bb133:
  %__tmp273 = phi i1 [ 1, %bb134 ], [ %__tmp272, %bb132 ]
  br i1 %__tmp273, label %bb137, label %bb135
bb137:
  br label %bb136
bb135:
  %__tmp274 = load i32, i32* @i, align 4
  %__tmp275 = sext i32 %__tmp274 to i64
  %__tmp276 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp275
  %__tmp277 = load i32, i32* %__tmp276, align 4
  %__tmp278 = icmp eq i32 %__tmp277, 47
  br label %bb136
bb136:
  %__tmp279 = phi i1 [ 1, %bb137 ], [ %__tmp278, %bb135 ]
  br i1 %__tmp279, label %bb140, label %bb138
bb140:
  br label %bb139
bb138:
  %__tmp280 = load i32, i32* @i, align 4
  %__tmp281 = sext i32 %__tmp280 to i64
  %__tmp282 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp281
  %__tmp283 = load i32, i32* %__tmp282, align 4
  %__tmp284 = icmp eq i32 %__tmp283, 37
  br label %bb139
bb139:
  %__tmp285 = phi i1 [ 1, %bb140 ], [ %__tmp284, %bb138 ]
  br i1 %__tmp285, label %bb143, label %bb141
bb143:
  br label %bb142
bb141:
  %__tmp286 = load i32, i32* @i, align 4
  %__tmp287 = sext i32 %__tmp286 to i64
  %__tmp288 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp287
  %__tmp289 = load i32, i32* %__tmp288, align 4
  %__tmp290 = icmp eq i32 %__tmp289, 94
  br label %bb142
bb142:
  %__tmp291 = phi i1 [ 1, %bb143 ], [ %__tmp290, %bb141 ]
  br i1 %__tmp291, label %bb126, label %bb127
bb126:
  %a = alloca i32, align 4
  %__tmp292 = call i32 @intpop()
  store i32 %__tmp292, i32* %a, align 4
  %b = alloca i32, align 4
  %__tmp293 = call i32 @intpop()
  store i32 %__tmp293, i32* %b, align 4
  %c.1 = alloca i32, align 4
  %__tmp294 = load i32, i32* @i, align 4
  %__tmp295 = sext i32 %__tmp294 to i64
  %__tmp296 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp295
  %__tmp297 = load i32, i32* %__tmp296, align 4
  %__tmp298 = icmp eq i32 %__tmp297, 43
  br i1 %__tmp298, label %bb144, label %bb145
bb144:
  %__tmp299 = load i32, i32* %a, align 4
  %__tmp300 = load i32, i32* %b, align 4
  %__tmp301 = add i32 %__tmp299, %__tmp300
  store i32 %__tmp301, i32* %c.1, align 4
  br label %bb146
bb145:
  br label %bb146
bb146:
  %__tmp302 = load i32, i32* @i, align 4
  %__tmp303 = sext i32 %__tmp302 to i64
  %__tmp304 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp303
  %__tmp305 = load i32, i32* %__tmp304, align 4
  %__tmp306 = icmp eq i32 %__tmp305, 45
  br i1 %__tmp306, label %bb147, label %bb148
bb147:
  %__tmp307 = load i32, i32* %b, align 4
  %__tmp308 = load i32, i32* %a, align 4
  %__tmp309 = sub i32 %__tmp307, %__tmp308
  store i32 %__tmp309, i32* %c.1, align 4
  br label %bb149
bb148:
  br label %bb149
bb149:
  %__tmp310 = load i32, i32* @i, align 4
  %__tmp311 = sext i32 %__tmp310 to i64
  %__tmp312 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp311
  %__tmp313 = load i32, i32* %__tmp312, align 4
  %__tmp314 = icmp eq i32 %__tmp313, 42
  br i1 %__tmp314, label %bb150, label %bb151
bb150:
  %__tmp315 = load i32, i32* %a, align 4
  %__tmp316 = load i32, i32* %b, align 4
  %__tmp317 = mul i32 %__tmp315, %__tmp316
  store i32 %__tmp317, i32* %c.1, align 4
  br label %bb152
bb151:
  br label %bb152
bb152:
  %__tmp318 = load i32, i32* @i, align 4
  %__tmp319 = sext i32 %__tmp318 to i64
  %__tmp320 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp319
  %__tmp321 = load i32, i32* %__tmp320, align 4
  %__tmp322 = icmp eq i32 %__tmp321, 47
  br i1 %__tmp322, label %bb153, label %bb154
bb153:
  %__tmp323 = load i32, i32* %b, align 4
  %__tmp324 = load i32, i32* %a, align 4
  %__tmp325 = sdiv i32 %__tmp323, %__tmp324
  store i32 %__tmp325, i32* %c.1, align 4
  br label %bb155
bb154:
  br label %bb155
bb155:
  %__tmp326 = load i32, i32* @i, align 4
  %__tmp327 = sext i32 %__tmp326 to i64
  %__tmp328 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp327
  %__tmp329 = load i32, i32* %__tmp328, align 4
  %__tmp330 = icmp eq i32 %__tmp329, 37
  br i1 %__tmp330, label %bb156, label %bb157
bb156:
  %__tmp331 = load i32, i32* %b, align 4
  %__tmp332 = load i32, i32* %a, align 4
  %__tmp333 = srem i32 %__tmp331, %__tmp332
  store i32 %__tmp333, i32* %c.1, align 4
  br label %bb158
bb157:
  br label %bb158
bb158:
  %__tmp334 = load i32, i32* @i, align 4
  %__tmp335 = sext i32 %__tmp334 to i64
  %__tmp336 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp335
  %__tmp337 = load i32, i32* %__tmp336, align 4
  %__tmp338 = icmp eq i32 %__tmp337, 94
  br i1 %__tmp338, label %bb159, label %bb160
bb159:
  %__tmp339 = load i32, i32* %b, align 4
  %__tmp340 = load i32, i32* %a, align 4
  %__tmp341 = call i32 @power(i32 %__tmp339, i32 %__tmp340)
  store i32 %__tmp341, i32* %c.1, align 4
  br label %bb161
bb160:
  br label %bb161
bb161:
  %__tmp342 = load i32, i32* %c.1, align 4
  %__tmp343 = call i32 @intpush(i32 %__tmp342)
  br label %bb128
bb127:
  %__tmp344 = load i32, i32* @i, align 4
  %__tmp345 = sext i32 %__tmp344 to i64
  %__tmp346 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp345
  %__tmp347 = load i32, i32* %__tmp346, align 4
  %__tmp348 = icmp ne i32 %__tmp347, 32
  br i1 %__tmp348, label %bb162, label %bb163
bb162:
  %__tmp349 = load i32, i32* @i, align 4
  %__tmp350 = sext i32 %__tmp349 to i64
  %__tmp351 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp350
  %__tmp352 = load i32, i32* %__tmp351, align 4
  %__tmp353 = sub i32 %__tmp352, 48
  %__tmp354 = call i32 @intpush(i32 %__tmp353)
  store i32 1, i32* @ii, align 4
  br label %bb165
bb165:
  %__tmp355 = load i32, i32* @i, align 4
  %__tmp356 = load i32, i32* @ii, align 4
  %__tmp357 = add i32 %__tmp355, %__tmp356
  %__tmp358 = sext i32 %__tmp357 to i64
  %__tmp359 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp358
  %__tmp360 = load i32, i32* %__tmp359, align 4
  %__tmp361 = icmp ne i32 %__tmp360, 32
  br i1 %__tmp361, label %bb166, label %bb167
bb166:
  %__tmp362 = load i32, i32* @i, align 4
  %__tmp363 = load i32, i32* @ii, align 4
  %__tmp364 = add i32 %__tmp362, %__tmp363
  %__tmp365 = sext i32 %__tmp364 to i64
  %__tmp366 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %__tmp365
  %__tmp367 = load i32, i32* %__tmp366, align 4
  %__tmp368 = sub i32 %__tmp367, 48
  %__tmp369 = call i32 @intadd(i32 %__tmp368)
  %__tmp370 = load i32, i32* @ii, align 4
  %__tmp371 = add i32 %__tmp370, 1
  store i32 %__tmp371, i32* @ii, align 4
  br label %bb165
bb167:
  %__tmp372 = load i32, i32* @i, align 4
  %__tmp373 = load i32, i32* @ii, align 4
  %__tmp374 = add i32 %__tmp372, %__tmp373
  %__tmp375 = sub i32 %__tmp374, 1
  store i32 %__tmp375, i32* @i, align 4
  br label %bb164
bb163:
  br label %bb164
bb164:
  br label %bb128
bb128:
  %__tmp376 = load i32, i32* @i, align 4
  %__tmp377 = add i32 %__tmp376, 1
  store i32 %__tmp377, i32* @i, align 4
  br label %bb123
bb125:
  %__tmp378 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 1
  %__tmp379 = load i32, i32* %__tmp378, align 4
  %__tmp380 = call i32 @putint(i32 %__tmp379)
  ret i32 0
}

