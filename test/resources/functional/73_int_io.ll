; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@ascii_0 = global i32 48, align 4

define i32 @my_getint() {
my_getintEntry:
  %sum = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  %c = alloca i32, align 4
  br label %bb0
bb0:
  br label %bb1
bb1:
  %__tmp0 = call i32 @getch()
  %__tmp1 = sub i32 %__tmp0, 48
  store i32 %__tmp1, i32* %c, align 4
  %__tmp2 = load i32, i32* %c, align 4
  %__tmp3 = icmp slt i32 %__tmp2, 0
  br i1 %__tmp3, label %bb8, label %bb6
bb8:
  br label %bb7
bb6:
  %__tmp4 = load i32, i32* %c, align 4
  %__tmp5 = icmp sgt i32 %__tmp4, 9
  br label %bb7
bb7:
  %__tmp6 = phi i1 [ 1, %bb8 ], [ %__tmp5, %bb6 ]
  br i1 %__tmp6, label %bb3, label %bb4
bb3:
  br label %bb0
bb4:
  br label %bb2
bb5:
  br label %bb0
bb2:
  %__tmp7 = load i32, i32* %c, align 4
  store i32 %__tmp7, i32* %sum, align 4
  br label %bb9
bb9:
  br label %bb10
bb10:
  %__tmp8 = call i32 @getch()
  %__tmp9 = sub i32 %__tmp8, 48
  store i32 %__tmp9, i32* %c, align 4
  %__tmp10 = load i32, i32* %c, align 4
  %__tmp11 = icmp sge i32 %__tmp10, 0
  br i1 %__tmp11, label %bb15, label %bb17
bb17:
  br label %bb16
bb15:
  %__tmp12 = load i32, i32* %c, align 4
  %__tmp13 = icmp sle i32 %__tmp12, 9
  br label %bb16
bb16:
  %__tmp14 = phi i1 [ 0, %bb17 ], [ %__tmp13, %bb15 ]
  br i1 %__tmp14, label %bb12, label %bb13
bb12:
  %__tmp15 = load i32, i32* %sum, align 4
  %__tmp16 = mul i32 %__tmp15, 10
  %__tmp17 = load i32, i32* %c, align 4
  %__tmp18 = add i32 %__tmp16, %__tmp17
  store i32 %__tmp18, i32* %sum, align 4
  br label %bb14
bb13:
  br label %bb11
bb14:
  br label %bb9
bb11:
  %__tmp19 = load i32, i32* %sum, align 4
  ret i32 %__tmp19
}

define void @my_putint(i32 %a) {
my_putintEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %b = alloca [16 x i32], align 4
  store [16 x i32] zeroinitializer, [16 x i32]* %b, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %a_arg, align 4
  %__tmp1 = icmp sgt i32 %__tmp0, 0
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = sext i32 %__tmp2 to i64
  %__tmp4 = getelementptr inbounds [16 x i32], [16 x i32]* %b, i64 0, i64 %__tmp3
  %__tmp5 = load i32, i32* %a_arg, align 4
  %__tmp6 = srem i32 %__tmp5, 10
  %__tmp7 = add i32 %__tmp6, 48
  store i32 %__tmp7, i32* %__tmp4, align 4
  %__tmp8 = load i32, i32* %a_arg, align 4
  %__tmp9 = sdiv i32 %__tmp8, 10
  store i32 %__tmp9, i32* %a_arg, align 4
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = add i32 %__tmp10, 1
  store i32 %__tmp11, i32* %i, align 4
  br label %bb0
bb2:
  br label %bb3
bb3:
  %__tmp12 = load i32, i32* %i, align 4
  %__tmp13 = icmp sgt i32 %__tmp12, 0
  br i1 %__tmp13, label %bb4, label %bb5
bb4:
  %__tmp14 = load i32, i32* %i, align 4
  %__tmp15 = sub i32 %__tmp14, 1
  store i32 %__tmp15, i32* %i, align 4
  %__tmp16 = load i32, i32* %i, align 4
  %__tmp17 = sext i32 %__tmp16 to i64
  %__tmp18 = getelementptr inbounds [16 x i32], [16 x i32]* %b, i64 0, i64 %__tmp17
  %__tmp19 = load i32, i32* %__tmp18, align 4
  call void @putch(i32 %__tmp19)
  br label %bb3
bb5:
  ret void
}

define i32 @main() {
mainEntry:
  %n = alloca i32, align 4
  %__tmp0 = call i32 @my_getint()
  store i32 %__tmp0, i32* %n, align 4
  br label %bb0
bb0:
  %__tmp1 = load i32, i32* %n, align 4
  %__tmp2 = icmp sgt i32 %__tmp1, 0
  br i1 %__tmp2, label %bb1, label %bb2
bb1:
  %m = alloca i32, align 4
  %__tmp3 = call i32 @my_getint()
  store i32 %__tmp3, i32* %m, align 4
  %__tmp4 = load i32, i32* %m, align 4
  %__tmp5 = call i32 @my_putint(i32 %__tmp4)
  call void @putch(i32 10)
  %__tmp6 = load i32, i32* %n, align 4
  %__tmp7 = sub i32 %__tmp6, 1
  store i32 %__tmp7, i32* %n, align 4
  br label %bb0
bb2:
  ret i32 0
}

