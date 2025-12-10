; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global [4096 x i32] zeroinitializer, align 4

define i32 @f1(i32* %b) {
f1Entry:
  %b_arg = alloca i32*, align 4
  store i32* %b, i32** %b_arg, align 4
  %__tmp0 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 5
  store i32 4000, i32* %__tmp0, align 4
  %__tmp1 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 4000
  store i32 3, i32* %__tmp1, align 4
  %__tmp2 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 4095
  store i32 7, i32* %__tmp2, align 4
  %__tmp3 = load i32*, i32** %b_arg, align 4
  %__tmp4 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 4095
  %__tmp5 = load i32, i32* %__tmp4, align 4
  %__tmp6 = sext i32 %__tmp5 to i64
  %__tmp7 = getelementptr inbounds i32, i32* %__tmp3, i64 %__tmp6
  %__tmp8 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 2216
  %__tmp9 = load i32, i32* %__tmp8, align 4
  %__tmp10 = add i32 %__tmp9, 9
  store i32 %__tmp10, i32* %__tmp7, align 4
  %__tmp11 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 5
  %__tmp12 = load i32, i32* %__tmp11, align 4
  %__tmp13 = sext i32 %__tmp12 to i64
  %__tmp14 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %__tmp13
  %__tmp15 = load i32, i32* %__tmp14, align 4
  ret i32 %__tmp15
}

define i32 @main() {
mainEntry:
  %b = alloca [4 x [1024 x i32]], align 4
  store [4 x [1024 x i32]] zeroinitializer, [4 x [1024 x i32]]* %b, align 4
  %__tmp0 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0
  %__tmp1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %__tmp0, i64 0, i64 0
  store i32 1, i32* %__tmp1, align 4
  %__tmp2 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0
  %__tmp3 = getelementptr inbounds [1024 x i32], [1024 x i32]* %__tmp2, i64 0, i64 1
  store i32 2, i32* %__tmp3, align 4
  %__tmp4 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0
  %__tmp5 = getelementptr inbounds [1024 x i32], [1024 x i32]* %__tmp4, i64 0, i64 2
  store i32 3, i32* %__tmp5, align 4
  %__tmp6 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0
  %__tmp7 = getelementptr inbounds [1024 x i32], [1024 x i32]* %__tmp6, i64 0, i64 3
  store i32 4, i32* %__tmp7, align 4
  %__tmp8 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0
  %__tmp9 = getelementptr inbounds [1024 x i32], [1024 x i32]* %__tmp8, i64 0, i64 4
  store i32 5, i32* %__tmp9, align 4
  %__tmp10 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0
  %__tmp11 = getelementptr inbounds [1024 x i32], [1024 x i32]* %__tmp10, i64 0, i64 5
  store i32 6, i32* %__tmp11, align 4
  %c = alloca [1024 x [4 x i32]], align 4
  store [1024 x [4 x i32]] zeroinitializer, [1024 x [4 x i32]]* %c, align 4
  %__tmp12 = getelementptr inbounds [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 0
  %__tmp13 = getelementptr inbounds [4 x i32], [4 x i32]* %__tmp12, i64 0, i64 0
  store i32 1, i32* %__tmp13, align 4
  %__tmp14 = getelementptr inbounds [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 0
  %__tmp15 = getelementptr inbounds [4 x i32], [4 x i32]* %__tmp14, i64 0, i64 1
  store i32 2, i32* %__tmp15, align 4
  %__tmp16 = getelementptr inbounds [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 0
  %__tmp17 = getelementptr inbounds [4 x i32], [4 x i32]* %__tmp16, i64 0, i64 2
  store i32 3, i32* %__tmp17, align 4
  %__tmp18 = getelementptr inbounds [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 0
  %__tmp19 = getelementptr inbounds [4 x i32], [4 x i32]* %__tmp18, i64 0, i64 3
  store i32 4, i32* %__tmp19, align 4
  %__tmp20 = getelementptr inbounds [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 0
  %__tmp21 = load i32, i32* %__tmp20, align 4
  %__tmp22 = call i32 @f1(i32 %__tmp21)
  %__tmp23 = call i32 @putint(i32 %__tmp22)
  %__tmp24 = call i32 @putch(i32 10)
  %__tmp25 = getelementptr inbounds [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 2
  %__tmp26 = getelementptr inbounds [4 x i32], [4 x i32]* %__tmp25, i64 0, i64 0
  %__tmp27 = load i32, i32* %__tmp26, align 4
  ret i32 %__tmp27
}

