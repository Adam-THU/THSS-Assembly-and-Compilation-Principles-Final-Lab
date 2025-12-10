; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @main() {
mainEntry:
  %arr = alloca [100 x i32], align 4
  store [100 x i32] zeroinitializer, [100 x i32]* %arr, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  br label %bb0
bb0:
  %__tmp0 = call i32 @getint()
  %__tmp1 = trunc i32 %__tmp0 to i1
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %i, align 4
  %__tmp3 = sext i32 %__tmp2 to i64
  %__tmp4 = getelementptr inbounds [100 x i32], [100 x i32]* %arr, i64 0, i64 %__tmp3
  %__tmp5 = call i32 @getint()
  store i32 %__tmp5, i32* %__tmp4, align 4
  %__tmp6 = load i32, i32* %i, align 4
  %__tmp7 = add i32 %__tmp6, 1
  store i32 %__tmp7, i32* %i, align 4
  br label %bb0
bb2:
  br label %bb3
bb3:
  %__tmp8 = load i32, i32* %i, align 4
  %__tmp9 = trunc i32 %__tmp8 to i1
  br i1 %__tmp9, label %bb4, label %bb5
bb4:
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = sub i32 %__tmp10, 1
  store i32 %__tmp11, i32* %i, align 4
  %__tmp12 = load i32, i32* %sum, align 4
  %__tmp13 = load i32, i32* %i, align 4
  %__tmp14 = sext i32 %__tmp13 to i64
  %__tmp15 = getelementptr inbounds [100 x i32], [100 x i32]* %arr, i64 0, i64 %__tmp14
  %__tmp16 = load i32, i32* %__tmp15, align 4
  %__tmp17 = add i32 %__tmp12, %__tmp16
  store i32 %__tmp17, i32* %sum, align 4
  br label %bb3
bb5:
  %__tmp18 = load i32, i32* %sum, align 4
  %__tmp19 = srem i32 %__tmp18, 79
  ret i32 %__tmp19
}

