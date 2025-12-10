; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@TOKEN_NUM = global i32 0, align 4
@TOKEN_OTHER = global i32 1, align 4
@last_char = global i32 32, align 4
@num = global i32 0, align 4
@other = global i32 0, align 4
@cur_token = global i32 0, align 4

define i32 @next_char() {
next_charEntry:
  %__tmp0 = call i32 @getch()
  store i32 %__tmp0, i32* @last_char, align 4
  %__tmp1 = load i32, i32* @last_char, align 4
  ret i32 %__tmp1
}

define i32 @is_space(i32 %c) {
is_spaceEntry:
  %c_arg = alloca i32, align 4
  store i32 %c, i32* %c_arg, align 4
  %__tmp0 = load i32, i32* %c_arg, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 32
  br i1 %__tmp1, label %bb5, label %bb3
bb5:
  br label %bb4
bb3:
  %__tmp2 = load i32, i32* %c_arg, align 4
  %__tmp3 = icmp eq i32 %__tmp2, 10
  br label %bb4
bb4:
  %__tmp4 = phi i1 [ 1, %bb5 ], [ %__tmp3, %bb3 ]
  br i1 %__tmp4, label %bb0, label %bb1
bb0:
  ret i32 1
bb1:
  ret i32 0
bb2:
  ret i32 0
}

define i32 @is_num(i32 %c) {
is_numEntry:
  %c_arg = alloca i32, align 4
  store i32 %c, i32* %c_arg, align 4
  %__tmp0 = load i32, i32* %c_arg, align 4
  %__tmp1 = icmp sge i32 %__tmp0, 48
  br i1 %__tmp1, label %bb3, label %bb5
bb5:
  br label %bb4
bb3:
  %__tmp2 = load i32, i32* %c_arg, align 4
  %__tmp3 = icmp sle i32 %__tmp2, 57
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

define i32 @next_token() {
next_tokenEntry:
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* @last_char, align 4
  %__tmp1 = call i32 @is_space(i32 %__tmp0)
  %__tmp2 = trunc i32 %__tmp1 to i1
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %__tmp3 = call i32 @next_char()
  br label %bb0
bb2:
  %__tmp4 = load i32, i32* @last_char, align 4
  %__tmp5 = call i32 @is_num(i32 %__tmp4)
  %__tmp6 = trunc i32 %__tmp5 to i1
  br i1 %__tmp6, label %bb3, label %bb4
bb3:
  %__tmp7 = load i32, i32* @last_char, align 4
  %__tmp8 = sub i32 %__tmp7, 48
  store i32 %__tmp8, i32* @num, align 4
  br label %bb6
bb6:
  %__tmp9 = call i32 @next_char()
  %__tmp10 = call i32 @is_num(i32 %__tmp9)
  %__tmp11 = trunc i32 %__tmp10 to i1
  br i1 %__tmp11, label %bb7, label %bb8
bb7:
  %__tmp12 = load i32, i32* @num, align 4
  %__tmp13 = mul i32 %__tmp12, 10
  %__tmp14 = load i32, i32* @last_char, align 4
  %__tmp15 = add i32 %__tmp13, %__tmp14
  %__tmp16 = sub i32 %__tmp15, 48
  store i32 %__tmp16, i32* @num, align 4
  br label %bb6
bb8:
  store i32 0, i32* @cur_token, align 4
  br label %bb5
bb4:
  %__tmp17 = load i32, i32* @last_char, align 4
  store i32 %__tmp17, i32* @other, align 4
  %__tmp18 = call i32 @next_char()
  store i32 1, i32* @cur_token, align 4
  br label %bb5
bb5:
  %__tmp19 = load i32, i32* @cur_token, align 4
  ret i32 %__tmp19
}

define i32 @panic() {
panicEntry:
  %__tmp0 = call i32 @putch(i32 112)
  %__tmp1 = call i32 @putch(i32 97)
  %__tmp2 = call i32 @putch(i32 110)
  %__tmp3 = call i32 @putch(i32 105)
  %__tmp4 = call i32 @putch(i32 99)
  %__tmp5 = call i32 @putch(i32 33)
  %__tmp6 = call i32 @putch(i32 10)
  ret i32 -1
}

define i32 @get_op_prec(i32 %op) {
get_op_precEntry:
  %op_arg = alloca i32, align 4
  store i32 %op, i32* %op_arg, align 4
  %__tmp0 = load i32, i32* %op_arg, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 43
  br i1 %__tmp1, label %bb5, label %bb3
bb5:
  br label %bb4
bb3:
  %__tmp2 = load i32, i32* %op_arg, align 4
  %__tmp3 = icmp eq i32 %__tmp2, 45
  br label %bb4
bb4:
  %__tmp4 = phi i1 [ 1, %bb5 ], [ %__tmp3, %bb3 ]
  br i1 %__tmp4, label %bb0, label %bb1
bb0:
  ret i32 10
bb1:
  br label %bb2
bb2:
  %__tmp5 = load i32, i32* %op_arg, align 4
  %__tmp6 = icmp eq i32 %__tmp5, 42
  br i1 %__tmp6, label %bb11, label %bb9
bb11:
  br label %bb10
bb9:
  %__tmp7 = load i32, i32* %op_arg, align 4
  %__tmp8 = icmp eq i32 %__tmp7, 47
  br label %bb10
bb10:
  %__tmp9 = phi i1 [ 1, %bb11 ], [ %__tmp8, %bb9 ]
  br i1 %__tmp9, label %bb14, label %bb12
bb14:
  br label %bb13
bb12:
  %__tmp10 = load i32, i32* %op_arg, align 4
  %__tmp11 = icmp eq i32 %__tmp10, 37
  br label %bb13
bb13:
  %__tmp12 = phi i1 [ 1, %bb14 ], [ %__tmp11, %bb12 ]
  br i1 %__tmp12, label %bb6, label %bb7
bb6:
  ret i32 20
bb7:
  br label %bb8
bb8:
  ret i32 0
}

define void @stack_push(i32* %s, i32 %v) {
stack_pushEntry:
  %s_arg = alloca i32*, align 4
  store i32* %s, i32** %s_arg, align 4
  %v_arg = alloca i32, align 4
  store i32 %v, i32* %v_arg, align 4
  %__tmp0 = load i32*, i32** %s_arg, align 4
  %__tmp1 = getelementptr inbounds i32, i32* %__tmp0, i64 0
  %__tmp2 = load i32*, i32** %s_arg, align 4
  %__tmp3 = getelementptr inbounds i32, i32* %__tmp2, i64 0
  %__tmp4 = load i32, i32* %__tmp3, align 4
  %__tmp5 = add i32 %__tmp4, 1
  store i32 %__tmp5, i32* %__tmp1, align 4
  %__tmp6 = load i32*, i32** %s_arg, align 4
  %__tmp7 = load i32*, i32** %s_arg, align 4
  %__tmp8 = getelementptr inbounds i32, i32* %__tmp7, i64 0
  %__tmp9 = load i32, i32* %__tmp8, align 4
  %__tmp10 = sext i32 %__tmp9 to i64
  %__tmp11 = getelementptr inbounds i32, i32* %__tmp6, i64 %__tmp10
  %__tmp12 = load i32, i32* %v_arg, align 4
  store i32 %__tmp12, i32* %__tmp11, align 4
  ret void
}

define i32 @stack_pop(i32* %s) {
stack_popEntry:
  %s_arg = alloca i32*, align 4
  store i32* %s, i32** %s_arg, align 4
  %last = alloca i32, align 4
  %__tmp0 = load i32*, i32** %s_arg, align 4
  %__tmp1 = load i32*, i32** %s_arg, align 4
  %__tmp2 = getelementptr inbounds i32, i32* %__tmp1, i64 0
  %__tmp3 = load i32, i32* %__tmp2, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds i32, i32* %__tmp0, i64 %__tmp4
  %__tmp6 = load i32, i32* %__tmp5, align 4
  store i32 %__tmp6, i32* %last, align 4
  %__tmp7 = load i32*, i32** %s_arg, align 4
  %__tmp8 = getelementptr inbounds i32, i32* %__tmp7, i64 0
  %__tmp9 = load i32*, i32** %s_arg, align 4
  %__tmp10 = getelementptr inbounds i32, i32* %__tmp9, i64 0
  %__tmp11 = load i32, i32* %__tmp10, align 4
  %__tmp12 = sub i32 %__tmp11, 1
  store i32 %__tmp12, i32* %__tmp8, align 4
  %__tmp13 = load i32, i32* %last, align 4
  ret i32 %__tmp13
}

define i32 @stack_peek(i32* %s) {
stack_peekEntry:
  %s_arg = alloca i32*, align 4
  store i32* %s, i32** %s_arg, align 4
  %__tmp0 = load i32*, i32** %s_arg, align 4
  %__tmp1 = load i32*, i32** %s_arg, align 4
  %__tmp2 = getelementptr inbounds i32, i32* %__tmp1, i64 0
  %__tmp3 = load i32, i32* %__tmp2, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds i32, i32* %__tmp0, i64 %__tmp4
  %__tmp6 = load i32, i32* %__tmp5, align 4
  ret i32 %__tmp6
}

define i32 @stack_size(i32* %s) {
stack_sizeEntry:
  %s_arg = alloca i32*, align 4
  store i32* %s, i32** %s_arg, align 4
  %__tmp0 = load i32*, i32** %s_arg, align 4
  %__tmp1 = getelementptr inbounds i32, i32* %__tmp0, i64 0
  %__tmp2 = load i32, i32* %__tmp1, align 4
  ret i32 %__tmp2
}

define i32 @eval_op(i32 %op, i32 %lhs, i32 %rhs) {
eval_opEntry:
  %op_arg = alloca i32, align 4
  store i32 %op, i32* %op_arg, align 4
  %lhs_arg = alloca i32, align 4
  store i32 %lhs, i32* %lhs_arg, align 4
  %rhs_arg = alloca i32, align 4
  store i32 %rhs, i32* %rhs_arg, align 4
  %__tmp0 = load i32, i32* %op_arg, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 43
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32, i32* %lhs_arg, align 4
  %__tmp3 = load i32, i32* %rhs_arg, align 4
  %__tmp4 = add i32 %__tmp2, %__tmp3
  ret i32 %__tmp4
bb1:
  br label %bb2
bb2:
  %__tmp5 = load i32, i32* %op_arg, align 4
  %__tmp6 = icmp eq i32 %__tmp5, 45
  br i1 %__tmp6, label %bb3, label %bb4
bb3:
  %__tmp7 = load i32, i32* %lhs_arg, align 4
  %__tmp8 = load i32, i32* %rhs_arg, align 4
  %__tmp9 = sub i32 %__tmp7, %__tmp8
  ret i32 %__tmp9
bb4:
  br label %bb5
bb5:
  %__tmp10 = load i32, i32* %op_arg, align 4
  %__tmp11 = icmp eq i32 %__tmp10, 42
  br i1 %__tmp11, label %bb6, label %bb7
bb6:
  %__tmp12 = load i32, i32* %lhs_arg, align 4
  %__tmp13 = load i32, i32* %rhs_arg, align 4
  %__tmp14 = mul i32 %__tmp12, %__tmp13
  ret i32 %__tmp14
bb7:
  br label %bb8
bb8:
  %__tmp15 = load i32, i32* %op_arg, align 4
  %__tmp16 = icmp eq i32 %__tmp15, 47
  br i1 %__tmp16, label %bb9, label %bb10
bb9:
  %__tmp17 = load i32, i32* %lhs_arg, align 4
  %__tmp18 = load i32, i32* %rhs_arg, align 4
  %__tmp19 = sdiv i32 %__tmp17, %__tmp18
  ret i32 %__tmp19
bb10:
  br label %bb11
bb11:
  %__tmp20 = load i32, i32* %op_arg, align 4
  %__tmp21 = icmp eq i32 %__tmp20, 37
  br i1 %__tmp21, label %bb12, label %bb13
bb12:
  %__tmp22 = load i32, i32* %lhs_arg, align 4
  %__tmp23 = load i32, i32* %rhs_arg, align 4
  %__tmp24 = srem i32 %__tmp22, %__tmp23
  ret i32 %__tmp24
bb13:
  br label %bb14
bb14:
  ret i32 0
}

define i32 @eval() {
evalEntry:
  %oprs = alloca [256 x i32], align 4
  store [256 x i32] zeroinitializer, [256 x i32]* %oprs, align 4
  %ops = alloca [256 x i32], align 4
  store [256 x i32] zeroinitializer, [256 x i32]* %ops, align 4
  %__tmp0 = load i32, i32* @cur_token, align 4
  %__tmp1 = icmp ne i32 %__tmp0, 0
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = call i32 @panic()
  ret i32 %__tmp2
bb1:
  br label %bb2
bb2:
  %__tmp3 = load i32, i32* @num, align 4
  %__tmp4 = call i32 @stack_push([256 x i32]* %oprs, i32 %__tmp3)
  %__tmp5 = call i32 @next_token()
  br label %bb3
bb3:
  %__tmp6 = load i32, i32* @cur_token, align 4
  %__tmp7 = icmp eq i32 %__tmp6, 1
  br i1 %__tmp7, label %bb4, label %bb5
bb4:
  %op = alloca i32, align 4
  %__tmp8 = load i32, i32* @other, align 4
  store i32 %__tmp8, i32* %op, align 4
  %__tmp9 = load i32, i32* %op, align 4
  %__tmp10 = call i32 @get_op_prec(i32 %__tmp9)
  %__tmp11 = icmp eq i32 %__tmp10, 0
  %__tmp12 = zext i1 %__tmp11 to i32
  %__tmp13 = trunc i32 %__tmp12 to i1
  br i1 %__tmp13, label %bb6, label %bb7
bb6:
  br label %bb5
bb7:
  br label %bb8
bb8:
  %__tmp14 = call i32 @next_token()
  br label %bb9
bb9:
  %__tmp15 = call i32 @stack_size([256 x i32]* %ops)
  %__tmp16 = icmp ne i32 %__tmp15, 0
  br i1 %__tmp16, label %bb12, label %bb14
bb14:
  br label %bb13
bb12:
  %__tmp17 = call i32 @stack_peek([256 x i32]* %ops)
  %__tmp18 = call i32 @get_op_prec(i32 %__tmp17)
  %__tmp19 = load i32, i32* %op, align 4
  %__tmp20 = call i32 @get_op_prec(i32 %__tmp19)
  %__tmp21 = icmp sge i32 %__tmp18, %__tmp20
  br label %bb13
bb13:
  %__tmp22 = phi i1 [ 0, %bb14 ], [ %__tmp21, %bb12 ]
  br i1 %__tmp22, label %bb10, label %bb11
bb10:
  %cur_op = alloca i32, align 4
  %__tmp23 = call i32 @stack_pop([256 x i32]* %ops)
  store i32 %__tmp23, i32* %cur_op, align 4
  %rhs = alloca i32, align 4
  %__tmp24 = call i32 @stack_pop([256 x i32]* %oprs)
  store i32 %__tmp24, i32* %rhs, align 4
  %lhs = alloca i32, align 4
  %__tmp25 = call i32 @stack_pop([256 x i32]* %oprs)
  store i32 %__tmp25, i32* %lhs, align 4
  %__tmp26 = load i32, i32* %cur_op, align 4
  %__tmp27 = load i32, i32* %lhs, align 4
  %__tmp28 = load i32, i32* %rhs, align 4
  %__tmp29 = call i32 @eval_op(i32 %__tmp26, i32 %__tmp27, i32 %__tmp28)
  %__tmp30 = call i32 @stack_push([256 x i32]* %oprs, i32 %__tmp29)
  br label %bb9
bb11:
  %__tmp31 = load i32, i32* %op, align 4
  %__tmp32 = call i32 @stack_push([256 x i32]* %ops, i32 %__tmp31)
  %__tmp33 = load i32, i32* @cur_token, align 4
  %__tmp34 = icmp ne i32 %__tmp33, 0
  br i1 %__tmp34, label %bb15, label %bb16
bb15:
  %__tmp35 = call i32 @panic()
  ret i32 %__tmp35
bb16:
  br label %bb17
bb17:
  %__tmp36 = load i32, i32* @num, align 4
  %__tmp37 = call i32 @stack_push([256 x i32]* %oprs, i32 %__tmp36)
  %__tmp38 = call i32 @next_token()
  br label %bb3
bb5:
  %__tmp39 = call i32 @next_token()
  br label %bb18
bb18:
  %__tmp40 = call i32 @stack_size([256 x i32]* %ops)
  %__tmp41 = trunc i32 %__tmp40 to i1
  br i1 %__tmp41, label %bb19, label %bb20
bb19:
  %cur_op.1 = alloca i32, align 4
  %__tmp42 = call i32 @stack_pop([256 x i32]* %ops)
  store i32 %__tmp42, i32* %cur_op.1, align 4
  %rhs.1 = alloca i32, align 4
  %__tmp43 = call i32 @stack_pop([256 x i32]* %oprs)
  store i32 %__tmp43, i32* %rhs.1, align 4
  %lhs.1 = alloca i32, align 4
  %__tmp44 = call i32 @stack_pop([256 x i32]* %oprs)
  store i32 %__tmp44, i32* %lhs.1, align 4
  %__tmp45 = load i32, i32* %cur_op.1, align 4
  %__tmp46 = load i32, i32* %lhs.1, align 4
  %__tmp47 = load i32, i32* %rhs.1, align 4
  %__tmp48 = call i32 @eval_op(i32 %__tmp45, i32 %__tmp46, i32 %__tmp47)
  %__tmp49 = call i32 @stack_push([256 x i32]* %oprs, i32 %__tmp48)
  br label %bb18
bb20:
  %__tmp50 = call i32 @stack_peek([256 x i32]* %oprs)
  ret i32 %__tmp50
}

define i32 @main() {
mainEntry:
  %count = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %count, align 4
  %__tmp1 = call i32 @getch()
  %__tmp2 = call i32 @next_token()
  br label %bb0
bb0:
  %__tmp3 = load i32, i32* %count, align 4
  %__tmp4 = trunc i32 %__tmp3 to i1
  br i1 %__tmp4, label %bb1, label %bb2
bb1:
  %__tmp5 = call i32 @eval()
  %__tmp6 = call i32 @putint(i32 %__tmp5)
  %__tmp7 = call i32 @putch(i32 10)
  %__tmp8 = load i32, i32* %count, align 4
  %__tmp9 = sub i32 %__tmp8, 1
  store i32 %__tmp9, i32* %count, align 4
  br label %bb0
bb2:
  ret i32 0
}

