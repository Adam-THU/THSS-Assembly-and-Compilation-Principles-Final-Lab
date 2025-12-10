; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @palindrome(i32 %n) {
palindromeEntry:
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %a = alloca [4 x i32], align 4
  store [4 x i32] zeroinitializer, [4 x i32]* %a, align 4
  %j = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 0, i32* %j, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %j, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 4
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %j, align 4
  %__tmp3 = sext i32 %__tmp2 to i64
  %__tmp4 = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 %__tmp3
  %__tmp5 = load i32, i32* %n_arg, align 4
  %__tmp6 = srem i32 %__tmp5, 10
  store i32 %__tmp6, i32* %__tmp4, align 4
  %__tmp7 = load i32, i32* %n_arg, align 4
  %__tmp8 = sdiv i32 %__tmp7, 10
  store i32 %__tmp8, i32* %n_arg, align 4
  %__tmp9 = load i32, i32* %j, align 4
  %__tmp10 = add i32 %__tmp9, 1
  store i32 %__tmp10, i32* %j, align 4
  br label %bb0
bb2:
  %__tmp11 = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0
  %__tmp12 = load i32, i32* %__tmp11, align 4
  %__tmp13 = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 3
  %__tmp14 = load i32, i32* %__tmp13, align 4
  %__tmp15 = icmp eq i32 %__tmp12, %__tmp14
  br i1 %__tmp15, label %bb6, label %bb8
bb8:
  br label %bb7
bb6:
  %__tmp16 = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 1
  %__tmp17 = load i32, i32* %__tmp16, align 4
  %__tmp18 = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 2
  %__tmp19 = load i32, i32* %__tmp18, align 4
  %__tmp20 = icmp eq i32 %__tmp17, %__tmp19
  br label %bb7
bb7:
  %__tmp21 = phi i1 [ 0, %bb8 ], [ %__tmp20, %bb6 ]
  br i1 %__tmp21, label %bb3, label %bb4
bb3:
  store i32 1, i32* %flag, align 4
  br label %bb5
bb4:
  store i32 0, i32* %flag, align 4
  br label %bb5
bb5:
  %__tmp22 = load i32, i32* %flag, align 4
  ret i32 %__tmp22
}

define i32 @main() {
mainEntry:
  %test = alloca i32, align 4
  store i32 1221, i32* %test, align 4
  %flag = alloca i32, align 4
  %__tmp0 = load i32, i32* %test, align 4
  %__tmp1 = call i32 @palindrome(i32 %__tmp0)
  store i32 %__tmp1, i32* %flag, align 4
  %__tmp2 = load i32, i32* %flag, align 4
  %__tmp3 = icmp eq i32 %__tmp2, 1
  br i1 %__tmp3, label %bb0, label %bb1
bb0:
  %__tmp4 = load i32, i32* %test, align 4
  %__tmp5 = call i32 @putint(i32 %__tmp4)
  br label %bb2
bb1:
  store i32 0, i32* %flag, align 4
  %__tmp6 = load i32, i32* %flag, align 4
  %__tmp7 = call i32 @putint(i32 %__tmp6)
  br label %bb2
bb2:
  store i32 10, i32* %flag, align 4
  %__tmp8 = load i32, i32* %flag, align 4
  %__tmp9 = call i32 @putch(i32 %__tmp8)
  ret i32 0
}

