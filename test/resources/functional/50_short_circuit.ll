; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@g = global i32 0, align 4

define i32 @func(i32 %n) {
funcEntry:
  %n_arg = alloca i32, align 4
  store i32 %n, i32* %n_arg, align 4
  %__tmp0 = load i32, i32* @g, align 4
  %__tmp1 = load i32, i32* %n_arg, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  store i32 %__tmp2, i32* @g, align 4
  %__tmp3 = load i32, i32* @g, align 4
  %__tmp4 = call i32 @putint(i32 %__tmp3)
  %__tmp5 = load i32, i32* @g, align 4
  ret i32 %__tmp5
}

define i32 @main() {
mainEntry:
  %i = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %i, align 4
  %__tmp1 = load i32, i32* %i, align 4
  %__tmp2 = icmp sgt i32 %__tmp1, 10
  br i1 %__tmp2, label %bb3, label %bb5
bb5:
  br label %bb4
bb3:
  %__tmp3 = load i32, i32* %i, align 4
  %__tmp4 = call i32 @func(i32 %__tmp3)
  %__tmp5 = icmp ne i32 %__tmp4, 0
  br label %bb4
bb4:
  %__tmp6 = phi i1 [ 0, %bb5 ], [ %__tmp5, %bb3 ]
  br i1 %__tmp6, label %bb0, label %bb1
bb0:
  store i32 1, i32* %i, align 4
  br label %bb2
bb1:
  store i32 0, i32* %i, align 4
  br label %bb2
bb2:
  %__tmp7 = call i32 @getint()
  store i32 %__tmp7, i32* %i, align 4
  %__tmp8 = load i32, i32* %i, align 4
  %__tmp9 = icmp sgt i32 %__tmp8, 11
  br i1 %__tmp9, label %bb9, label %bb11
bb11:
  br label %bb10
bb9:
  %__tmp10 = load i32, i32* %i, align 4
  %__tmp11 = call i32 @func(i32 %__tmp10)
  %__tmp12 = icmp ne i32 %__tmp11, 0
  br label %bb10
bb10:
  %__tmp13 = phi i1 [ 0, %bb11 ], [ %__tmp12, %bb9 ]
  br i1 %__tmp13, label %bb6, label %bb7
bb6:
  store i32 1, i32* %i, align 4
  br label %bb8
bb7:
  store i32 0, i32* %i, align 4
  br label %bb8
bb8:
  %__tmp14 = call i32 @getint()
  store i32 %__tmp14, i32* %i, align 4
  %__tmp15 = load i32, i32* %i, align 4
  %__tmp16 = icmp sle i32 %__tmp15, 99
  br i1 %__tmp16, label %bb17, label %bb15
bb17:
  br label %bb16
bb15:
  %__tmp17 = load i32, i32* %i, align 4
  %__tmp18 = call i32 @func(i32 %__tmp17)
  %__tmp19 = icmp ne i32 %__tmp18, 0
  br label %bb16
bb16:
  %__tmp20 = phi i1 [ 1, %bb17 ], [ %__tmp19, %bb15 ]
  br i1 %__tmp20, label %bb12, label %bb13
bb12:
  store i32 1, i32* %i, align 4
  br label %bb14
bb13:
  store i32 0, i32* %i, align 4
  br label %bb14
bb14:
  %__tmp21 = call i32 @getint()
  store i32 %__tmp21, i32* %i, align 4
  %__tmp22 = load i32, i32* %i, align 4
  %__tmp23 = icmp sle i32 %__tmp22, 100
  br i1 %__tmp23, label %bb23, label %bb21
bb23:
  br label %bb22
bb21:
  %__tmp24 = load i32, i32* %i, align 4
  %__tmp25 = call i32 @func(i32 %__tmp24)
  %__tmp26 = icmp ne i32 %__tmp25, 0
  br label %bb22
bb22:
  %__tmp27 = phi i1 [ 1, %bb23 ], [ %__tmp26, %bb21 ]
  br i1 %__tmp27, label %bb18, label %bb19
bb18:
  store i32 1, i32* %i, align 4
  br label %bb20
bb19:
  store i32 0, i32* %i, align 4
  br label %bb20
bb20:
  %__tmp28 = call i32 @func(i32 99)
  %__tmp29 = icmp eq i32 %__tmp28, 0
  %__tmp30 = zext i1 %__tmp29 to i32
  %__tmp31 = icmp ne i32 %__tmp30, 0
  br i1 %__tmp31, label %bb27, label %bb29
bb29:
  br label %bb28
bb27:
  %__tmp32 = call i32 @func(i32 100)
  %__tmp33 = icmp ne i32 %__tmp32, 0
  br label %bb28
bb28:
  %__tmp34 = phi i1 [ 0, %bb29 ], [ %__tmp33, %bb27 ]
  br i1 %__tmp34, label %bb24, label %bb25
bb24:
  store i32 1, i32* %i, align 4
  br label %bb26
bb25:
  store i32 0, i32* %i, align 4
  br label %bb26
bb26:
  ret i32 0
}

