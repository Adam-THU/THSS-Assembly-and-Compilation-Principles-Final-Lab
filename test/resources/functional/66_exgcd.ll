; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @exgcd(i32 %a, i32 %b, i32* %x, i32* %y) {
exgcdEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %b_arg = alloca i32, align 4
  store i32 %b, i32* %b_arg, align 4
  %x_arg = alloca i32*, align 4
  store i32* %x, i32** %x_arg, align 4
  %y_arg = alloca i32*, align 4
  store i32* %y, i32** %y_arg, align 4
  %__tmp0 = load i32, i32* %b_arg, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 0
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32*, i32** %x_arg, align 4
  %__tmp3 = getelementptr inbounds i32, i32* %__tmp2, i64 0
  store i32 1, i32* %__tmp3, align 4
  %__tmp4 = load i32*, i32** %y_arg, align 4
  %__tmp5 = getelementptr inbounds i32, i32* %__tmp4, i64 0
  store i32 0, i32* %__tmp5, align 4
  %__tmp6 = load i32, i32* %a_arg, align 4
  ret i32 %__tmp6
bb1:
  %r = alloca i32, align 4
  %__tmp7 = load i32, i32* %b_arg, align 4
  %__tmp8 = load i32, i32* %a_arg, align 4
  %__tmp9 = load i32, i32* %b_arg, align 4
  %__tmp10 = srem i32 %__tmp8, %__tmp9
  %__tmp11 = load i32*, i32** %x_arg, align 4
  %__tmp12 = load i32*, i32** %y_arg, align 4
  %__tmp13 = call i32 @exgcd(i32 %__tmp7, i32 %__tmp10, i32* %__tmp11, i32* %__tmp12)
  store i32 %__tmp13, i32* %r, align 4
  %t = alloca i32, align 4
  %__tmp14 = load i32*, i32** %x_arg, align 4
  %__tmp15 = getelementptr inbounds i32, i32* %__tmp14, i64 0
  %__tmp16 = load i32, i32* %__tmp15, align 4
  store i32 %__tmp16, i32* %t, align 4
  %__tmp17 = load i32*, i32** %x_arg, align 4
  %__tmp18 = getelementptr inbounds i32, i32* %__tmp17, i64 0
  %__tmp19 = load i32*, i32** %y_arg, align 4
  %__tmp20 = getelementptr inbounds i32, i32* %__tmp19, i64 0
  %__tmp21 = load i32, i32* %__tmp20, align 4
  store i32 %__tmp21, i32* %__tmp18, align 4
  %__tmp22 = load i32*, i32** %y_arg, align 4
  %__tmp23 = getelementptr inbounds i32, i32* %__tmp22, i64 0
  %__tmp24 = load i32, i32* %t, align 4
  %__tmp25 = load i32, i32* %a_arg, align 4
  %__tmp26 = load i32, i32* %b_arg, align 4
  %__tmp27 = sdiv i32 %__tmp25, %__tmp26
  %__tmp28 = load i32*, i32** %y_arg, align 4
  %__tmp29 = getelementptr inbounds i32, i32* %__tmp28, i64 0
  %__tmp30 = load i32, i32* %__tmp29, align 4
  %__tmp31 = mul i32 %__tmp27, %__tmp30
  %__tmp32 = sub i32 %__tmp24, %__tmp31
  store i32 %__tmp32, i32* %__tmp23, align 4
  %__tmp33 = load i32, i32* %r, align 4
  ret i32 %__tmp33
bb2:
  ret i32 0
}

define i32 @main() {
mainEntry:
  %a = alloca i32, align 4
  store i32 7, i32* %a, align 4
  %b = alloca i32, align 4
  store i32 15, i32* %b, align 4
  %x = alloca [1 x i32], align 4
  store [1 x i32] zeroinitializer, [1 x i32]* %x, align 4
  %__tmp0 = getelementptr inbounds [1 x i32], [1 x i32]* %x, i64 0, i64 0
  store i32 1, i32* %__tmp0, align 4
  %y = alloca [1 x i32], align 4
  store [1 x i32] zeroinitializer, [1 x i32]* %y, align 4
  %__tmp1 = getelementptr inbounds [1 x i32], [1 x i32]* %y, i64 0, i64 0
  store i32 1, i32* %__tmp1, align 4
  %__tmp2 = load i32, i32* %a, align 4
  %__tmp3 = load i32, i32* %b, align 4
  %__tmp4 = getelementptr inbounds [1 x i32], [1 x i32]* %x, i64 0, i64 0
  %__tmp5 = getelementptr inbounds [1 x i32], [1 x i32]* %y, i64 0, i64 0
  %__tmp6 = call i32 @exgcd(i32 %__tmp2, i32 %__tmp3, i32* %__tmp4, i32* %__tmp5)
  %__tmp7 = getelementptr inbounds [1 x i32], [1 x i32]* %x, i64 0, i64 0
  %__tmp8 = getelementptr inbounds [1 x i32], [1 x i32]* %x, i64 0, i64 0
  %__tmp9 = load i32, i32* %__tmp8, align 4
  %__tmp10 = load i32, i32* %b, align 4
  %__tmp11 = srem i32 %__tmp9, %__tmp10
  %__tmp12 = load i32, i32* %b, align 4
  %__tmp13 = add i32 %__tmp11, %__tmp12
  %__tmp14 = load i32, i32* %b, align 4
  %__tmp15 = srem i32 %__tmp13, %__tmp14
  store i32 %__tmp15, i32* %__tmp7, align 4
  %__tmp16 = getelementptr inbounds [1 x i32], [1 x i32]* %x, i64 0, i64 0
  %__tmp17 = load i32, i32* %__tmp16, align 4
  %__tmp18 = call i32 @putint(i32 %__tmp17)
  ret i32 0
}

