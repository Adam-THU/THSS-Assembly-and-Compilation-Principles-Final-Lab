; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define void @get_next(i32* %str, i32* %next) {
get_nextEntry:
  %str_arg = alloca i32*, align 4
  store i32* %str, i32** %str_arg, align 4
  %next_arg = alloca i32*, align 4
  store i32* %next, i32** %next_arg, align 4
  %__tmp0 = load i32*, i32** %next_arg, align 4
  %__tmp1 = getelementptr inbounds i32, i32* %__tmp0, i64 0
  store i32 -1, i32* %__tmp1, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %j = alloca i32, align 4
  store i32 -1, i32* %j, align 4
  br label %bb0
bb0:
  %__tmp2 = load i32*, i32** %str_arg, align 4
  %__tmp3 = load i32, i32* %i, align 4
  %__tmp4 = sext i32 %__tmp3 to i64
  %__tmp5 = getelementptr inbounds i32, i32* %__tmp2, i64 %__tmp4
  %__tmp6 = load i32, i32* %__tmp5, align 4
  %__tmp7 = trunc i32 %__tmp6 to i1
  br i1 %__tmp7, label %bb1, label %bb2
bb1:
  %__tmp8 = load i32, i32* %j, align 4
  %__tmp9 = icmp eq i32 %__tmp8, -1
  br i1 %__tmp9, label %bb8, label %bb6
bb8:
  br label %bb7
bb6:
  %__tmp10 = load i32*, i32** %str_arg, align 4
  %__tmp11 = load i32, i32* %i, align 4
  %__tmp12 = sext i32 %__tmp11 to i64
  %__tmp13 = getelementptr inbounds i32, i32* %__tmp10, i64 %__tmp12
  %__tmp14 = load i32, i32* %__tmp13, align 4
  %__tmp15 = load i32*, i32** %str_arg, align 4
  %__tmp16 = load i32, i32* %j, align 4
  %__tmp17 = sext i32 %__tmp16 to i64
  %__tmp18 = getelementptr inbounds i32, i32* %__tmp15, i64 %__tmp17
  %__tmp19 = load i32, i32* %__tmp18, align 4
  %__tmp20 = icmp eq i32 %__tmp14, %__tmp19
  br label %bb7
bb7:
  %__tmp21 = phi i1 [ 1, %bb8 ], [ %__tmp20, %bb6 ]
  br i1 %__tmp21, label %bb3, label %bb4
bb3:
  %__tmp22 = load i32, i32* %j, align 4
  %__tmp23 = add i32 %__tmp22, 1
  store i32 %__tmp23, i32* %j, align 4
  %__tmp24 = load i32, i32* %i, align 4
  %__tmp25 = add i32 %__tmp24, 1
  store i32 %__tmp25, i32* %i, align 4
  %__tmp26 = load i32*, i32** %next_arg, align 4
  %__tmp27 = load i32, i32* %i, align 4
  %__tmp28 = sext i32 %__tmp27 to i64
  %__tmp29 = getelementptr inbounds i32, i32* %__tmp26, i64 %__tmp28
  %__tmp30 = load i32, i32* %j, align 4
  store i32 %__tmp30, i32* %__tmp29, align 4
  br label %bb5
bb4:
  %__tmp31 = load i32*, i32** %next_arg, align 4
  %__tmp32 = load i32, i32* %j, align 4
  %__tmp33 = sext i32 %__tmp32 to i64
  %__tmp34 = getelementptr inbounds i32, i32* %__tmp31, i64 %__tmp33
  %__tmp35 = load i32, i32* %__tmp34, align 4
  store i32 %__tmp35, i32* %j, align 4
  br label %bb5
bb5:
  br label %bb0
bb2:
  ret void
}

define i32 @KMP(i32* %dst, i32* %src) {
KMPEntry:
  %dst_arg = alloca i32*, align 4
  store i32* %dst, i32** %dst_arg, align 4
  %src_arg = alloca i32*, align 4
  store i32* %src, i32** %src_arg, align 4
  %next = alloca [4096 x i32], align 4
  store [4096 x i32] zeroinitializer, [4096 x i32]* %next, align 4
  %__tmp0 = load i32*, i32** %dst_arg, align 4
  %__tmp1 = getelementptr inbounds [4096 x i32], [4096 x i32]* %next, i64 0, i64 0
  %__tmp2 = call i32 @get_next(i32* %__tmp0, i32* %__tmp1)
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %j, align 4
  br label %bb0
bb0:
  %__tmp3 = load i32*, i32** %src_arg, align 4
  %__tmp4 = load i32, i32* %j, align 4
  %__tmp5 = sext i32 %__tmp4 to i64
  %__tmp6 = getelementptr inbounds i32, i32* %__tmp3, i64 %__tmp5
  %__tmp7 = load i32, i32* %__tmp6, align 4
  %__tmp8 = trunc i32 %__tmp7 to i1
  br i1 %__tmp8, label %bb1, label %bb2
bb1:
  %__tmp9 = load i32*, i32** %dst_arg, align 4
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = sext i32 %__tmp10 to i64
  %__tmp12 = getelementptr inbounds i32, i32* %__tmp9, i64 %__tmp11
  %__tmp13 = load i32, i32* %__tmp12, align 4
  %__tmp14 = load i32*, i32** %src_arg, align 4
  %__tmp15 = load i32, i32* %j, align 4
  %__tmp16 = sext i32 %__tmp15 to i64
  %__tmp17 = getelementptr inbounds i32, i32* %__tmp14, i64 %__tmp16
  %__tmp18 = load i32, i32* %__tmp17, align 4
  %__tmp19 = icmp eq i32 %__tmp13, %__tmp18
  br i1 %__tmp19, label %bb3, label %bb4
bb3:
  %__tmp20 = load i32, i32* %i, align 4
  %__tmp21 = add i32 %__tmp20, 1
  store i32 %__tmp21, i32* %i, align 4
  %__tmp22 = load i32, i32* %j, align 4
  %__tmp23 = add i32 %__tmp22, 1
  store i32 %__tmp23, i32* %j, align 4
  %__tmp24 = load i32*, i32** %dst_arg, align 4
  %__tmp25 = load i32, i32* %i, align 4
  %__tmp26 = sext i32 %__tmp25 to i64
  %__tmp27 = getelementptr inbounds i32, i32* %__tmp24, i64 %__tmp26
  %__tmp28 = load i32, i32* %__tmp27, align 4
  %__tmp29 = icmp eq i32 %__tmp28, 0
  %__tmp30 = zext i1 %__tmp29 to i32
  %__tmp31 = trunc i32 %__tmp30 to i1
  br i1 %__tmp31, label %bb6, label %bb7
bb6:
  %__tmp32 = load i32, i32* %j, align 4
  ret i32 %__tmp32
bb7:
  br label %bb8
bb8:
  br label %bb5
bb4:
  %__tmp33 = load i32, i32* %i, align 4
  %__tmp34 = sext i32 %__tmp33 to i64
  %__tmp35 = getelementptr inbounds [4096 x i32], [4096 x i32]* %next, i64 0, i64 %__tmp34
  %__tmp36 = load i32, i32* %__tmp35, align 4
  store i32 %__tmp36, i32* %i, align 4
  %__tmp37 = load i32, i32* %i, align 4
  %__tmp38 = icmp eq i32 %__tmp37, -1
  br i1 %__tmp38, label %bb9, label %bb10
bb9:
  %__tmp39 = load i32, i32* %i, align 4
  %__tmp40 = add i32 %__tmp39, 1
  store i32 %__tmp40, i32* %i, align 4
  %__tmp41 = load i32, i32* %j, align 4
  %__tmp42 = add i32 %__tmp41, 1
  store i32 %__tmp42, i32* %j, align 4
  br label %bb11
bb10:
  br label %bb11
bb11:
  br label %bb5
bb5:
  br label %bb0
bb2:
  ret i32 -1
}

define i32 @read_str(i32* %buf) {
read_strEntry:
  %buf_arg = alloca i32*, align 4
  store i32* %buf, i32** %buf_arg, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  br label %bb1
bb1:
  %__tmp0 = load i32*, i32** %buf_arg, align 4
  %__tmp1 = load i32, i32* %i, align 4
  %__tmp2 = sext i32 %__tmp1 to i64
  %__tmp3 = getelementptr inbounds i32, i32* %__tmp0, i64 %__tmp2
  %__tmp4 = call i32 @getch()
  store i32 %__tmp4, i32* %__tmp3, align 4
  %__tmp5 = load i32*, i32** %buf_arg, align 4
  %__tmp6 = load i32, i32* %i, align 4
  %__tmp7 = sext i32 %__tmp6 to i64
  %__tmp8 = getelementptr inbounds i32, i32* %__tmp5, i64 %__tmp7
  %__tmp9 = load i32, i32* %__tmp8, align 4
  %__tmp10 = icmp eq i32 %__tmp9, 10
  br i1 %__tmp10, label %bb3, label %bb4
bb3:
  br label %bb2
bb4:
  br label %bb5
bb5:
  %__tmp11 = load i32, i32* %i, align 4
  %__tmp12 = add i32 %__tmp11, 1
  store i32 %__tmp12, i32* %i, align 4
  br label %bb0
bb2:
  %__tmp13 = load i32*, i32** %buf_arg, align 4
  %__tmp14 = load i32, i32* %i, align 4
  %__tmp15 = sext i32 %__tmp14 to i64
  %__tmp16 = getelementptr inbounds i32, i32* %__tmp13, i64 %__tmp15
  store i32 0, i32* %__tmp16, align 4
  %__tmp17 = load i32, i32* %i, align 4
  ret i32 %__tmp17
}

define i32 @main() {
mainEntry:
  %dst = alloca [4096 x i32], align 4
  store [4096 x i32] zeroinitializer, [4096 x i32]* %dst, align 4
  %src = alloca [4096 x i32], align 4
  store [4096 x i32] zeroinitializer, [4096 x i32]* %src, align 4
  %__tmp0 = getelementptr inbounds [4096 x i32], [4096 x i32]* %dst, i64 0, i64 0
  %__tmp1 = call i32 @read_str(i32* %__tmp0)
  %__tmp2 = getelementptr inbounds [4096 x i32], [4096 x i32]* %src, i64 0, i64 0
  %__tmp3 = call i32 @read_str(i32* %__tmp2)
  %__tmp4 = getelementptr inbounds [4096 x i32], [4096 x i32]* %dst, i64 0, i64 0
  %__tmp5 = getelementptr inbounds [4096 x i32], [4096 x i32]* %src, i64 0, i64 0
  %__tmp6 = call i32 @KMP(i32* %__tmp4, i32* %__tmp5)
  call void @putint(i32 %__tmp6)
  call void @putch(i32 10)
  ret i32 0
}

