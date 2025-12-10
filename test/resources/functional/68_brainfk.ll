; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@TAPE_LEN = global i32 65536, align 4
@BUFFER_LEN = global i32 32768, align 4
@tape = global [65536 x i32] zeroinitializer, align 4
@program = global [32768 x i32] zeroinitializer, align 4
@ptr = global i32 0, align 4

define void @read_program() {
read_programEntry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %len = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %len, align 4
  br label %bb0
bb0:
  %__tmp1 = load i32, i32* %i, align 4
  %__tmp2 = load i32, i32* %len, align 4
  %__tmp3 = icmp slt i32 %__tmp1, %__tmp2
  br i1 %__tmp3, label %bb1, label %bb2
bb1:
  %__tmp4 = load i32, i32* %i, align 4
  %__tmp5 = sext i32 %__tmp4 to i64
  %__tmp6 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i64 0, i64 %__tmp5
  %__tmp7 = call i32 @getch()
  store i32 %__tmp7, i32* %__tmp6, align 4
  %__tmp8 = load i32, i32* %i, align 4
  %__tmp9 = add i32 %__tmp8, 1
  store i32 %__tmp9, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = sext i32 %__tmp10 to i64
  %__tmp12 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i64 0, i64 %__tmp11
  store i32 0, i32* %__tmp12, align 4
  ret void
}

define void @interpret(i32* %input) {
interpretEntry:
  %input_arg = alloca i32*, align 4
  store i32* %input, i32** %input_arg, align 4
  %cur_char = alloca i32, align 4
  %loop = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32*, i32** %input_arg, align 4
  %__tmp1 = load i32, i32* %i, align 4
  %__tmp2 = sext i32 %__tmp1 to i64
  %__tmp3 = getelementptr inbounds i32, i32* %__tmp0, i64 %__tmp2
  %__tmp4 = load i32, i32* %__tmp3, align 4
  %__tmp5 = trunc i32 %__tmp4 to i1
  br i1 %__tmp5, label %bb1, label %bb2
bb1:
  %__tmp6 = load i32*, i32** %input_arg, align 4
  %__tmp7 = load i32, i32* %i, align 4
  %__tmp8 = sext i32 %__tmp7 to i64
  %__tmp9 = getelementptr inbounds i32, i32* %__tmp6, i64 %__tmp8
  %__tmp10 = load i32, i32* %__tmp9, align 4
  store i32 %__tmp10, i32* %cur_char, align 4
  %__tmp11 = load i32, i32* %cur_char, align 4
  %__tmp12 = icmp eq i32 %__tmp11, 62
  br i1 %__tmp12, label %bb3, label %bb4
bb3:
  %__tmp13 = load i32, i32* @ptr, align 4
  %__tmp14 = add i32 %__tmp13, 1
  store i32 %__tmp14, i32* @ptr, align 4
  br label %bb5
bb4:
  %__tmp15 = load i32, i32* %cur_char, align 4
  %__tmp16 = icmp eq i32 %__tmp15, 60
  br i1 %__tmp16, label %bb6, label %bb7
bb6:
  %__tmp17 = load i32, i32* @ptr, align 4
  %__tmp18 = sub i32 %__tmp17, 1
  store i32 %__tmp18, i32* @ptr, align 4
  br label %bb8
bb7:
  %__tmp19 = load i32, i32* %cur_char, align 4
  %__tmp20 = icmp eq i32 %__tmp19, 43
  br i1 %__tmp20, label %bb9, label %bb10
bb9:
  %__tmp21 = load i32, i32* @ptr, align 4
  %__tmp22 = sext i32 %__tmp21 to i64
  %__tmp23 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %__tmp22
  %__tmp24 = load i32, i32* @ptr, align 4
  %__tmp25 = sext i32 %__tmp24 to i64
  %__tmp26 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %__tmp25
  %__tmp27 = load i32, i32* %__tmp26, align 4
  %__tmp28 = add i32 %__tmp27, 1
  store i32 %__tmp28, i32* %__tmp23, align 4
  br label %bb11
bb10:
  %__tmp29 = load i32, i32* %cur_char, align 4
  %__tmp30 = icmp eq i32 %__tmp29, 45
  br i1 %__tmp30, label %bb12, label %bb13
bb12:
  %__tmp31 = load i32, i32* @ptr, align 4
  %__tmp32 = sext i32 %__tmp31 to i64
  %__tmp33 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %__tmp32
  %__tmp34 = load i32, i32* @ptr, align 4
  %__tmp35 = sext i32 %__tmp34 to i64
  %__tmp36 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %__tmp35
  %__tmp37 = load i32, i32* %__tmp36, align 4
  %__tmp38 = sub i32 %__tmp37, 1
  store i32 %__tmp38, i32* %__tmp33, align 4
  br label %bb14
bb13:
  %__tmp39 = load i32, i32* %cur_char, align 4
  %__tmp40 = icmp eq i32 %__tmp39, 46
  br i1 %__tmp40, label %bb15, label %bb16
bb15:
  %__tmp41 = load i32, i32* @ptr, align 4
  %__tmp42 = sext i32 %__tmp41 to i64
  %__tmp43 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %__tmp42
  %__tmp44 = load i32, i32* %__tmp43, align 4
  call void @putch(i32 %__tmp44)
  br label %bb17
bb16:
  %__tmp45 = load i32, i32* %cur_char, align 4
  %__tmp46 = icmp eq i32 %__tmp45, 44
  br i1 %__tmp46, label %bb18, label %bb19
bb18:
  %__tmp47 = load i32, i32* @ptr, align 4
  %__tmp48 = sext i32 %__tmp47 to i64
  %__tmp49 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %__tmp48
  %__tmp50 = call i32 @getch()
  store i32 %__tmp50, i32* %__tmp49, align 4
  br label %bb20
bb19:
  %__tmp51 = load i32, i32* %cur_char, align 4
  %__tmp52 = icmp eq i32 %__tmp51, 93
  br i1 %__tmp52, label %bb24, label %bb26
bb26:
  br label %bb25
bb24:
  %__tmp53 = load i32, i32* @ptr, align 4
  %__tmp54 = sext i32 %__tmp53 to i64
  %__tmp55 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %__tmp54
  %__tmp56 = load i32, i32* %__tmp55, align 4
  %__tmp57 = icmp ne i32 %__tmp56, 0
  br label %bb25
bb25:
  %__tmp58 = phi i1 [ 0, %bb26 ], [ %__tmp57, %bb24 ]
  br i1 %__tmp58, label %bb21, label %bb22
bb21:
  store i32 1, i32* %loop, align 4
  br label %bb27
bb27:
  %__tmp59 = load i32, i32* %loop, align 4
  %__tmp60 = icmp sgt i32 %__tmp59, 0
  br i1 %__tmp60, label %bb28, label %bb29
bb28:
  %__tmp61 = load i32, i32* %i, align 4
  %__tmp62 = sub i32 %__tmp61, 1
  store i32 %__tmp62, i32* %i, align 4
  %__tmp63 = load i32*, i32** %input_arg, align 4
  %__tmp64 = load i32, i32* %i, align 4
  %__tmp65 = sext i32 %__tmp64 to i64
  %__tmp66 = getelementptr inbounds i32, i32* %__tmp63, i64 %__tmp65
  %__tmp67 = load i32, i32* %__tmp66, align 4
  store i32 %__tmp67, i32* %cur_char, align 4
  %__tmp68 = load i32, i32* %cur_char, align 4
  %__tmp69 = icmp eq i32 %__tmp68, 91
  br i1 %__tmp69, label %bb30, label %bb31
bb30:
  %__tmp70 = load i32, i32* %loop, align 4
  %__tmp71 = sub i32 %__tmp70, 1
  store i32 %__tmp71, i32* %loop, align 4
  br label %bb32
bb31:
  %__tmp72 = load i32, i32* %cur_char, align 4
  %__tmp73 = icmp eq i32 %__tmp72, 93
  br i1 %__tmp73, label %bb33, label %bb34
bb33:
  %__tmp74 = load i32, i32* %loop, align 4
  %__tmp75 = add i32 %__tmp74, 1
  store i32 %__tmp75, i32* %loop, align 4
  br label %bb35
bb34:
  br label %bb35
bb35:
  br label %bb32
bb32:
  br label %bb27
bb29:
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb20
bb20:
  br label %bb17
bb17:
  br label %bb14
bb14:
  br label %bb11
bb11:
  br label %bb8
bb8:
  br label %bb5
bb5:
  %__tmp76 = load i32, i32* %i, align 4
  %__tmp77 = add i32 %__tmp76, 1
  store i32 %__tmp77, i32* %i, align 4
  br label %bb0
bb2:
  ret void
}

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @read_program()
  %__tmp1 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i64 0, i64 0
  %__tmp2 = call i32 @interpret(i32* %__tmp1)
  ret i32 0
}

