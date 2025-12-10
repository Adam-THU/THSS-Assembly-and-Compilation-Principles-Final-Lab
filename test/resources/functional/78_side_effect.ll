; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global i32 -1, align 4
@b = global i32 1, align 4

define i32 @inc_a() {
inc_aEntry:
  %b = alloca i32, align 4
  %__tmp0 = load i32, i32* @a, align 4
  store i32 %__tmp0, i32* %b, align 4
  %__tmp1 = load i32, i32* %b, align 4
  %__tmp2 = add i32 %__tmp1, 1
  store i32 %__tmp2, i32* %b, align 4
  %__tmp3 = load i32, i32* %b, align 4
  store i32 %__tmp3, i32* @a, align 4
  %__tmp4 = load i32, i32* @a, align 4
  ret i32 %__tmp4
}

define i32 @main() {
mainEntry:
  %k = alloca i32, align 4
  store i32 5, i32* %k, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %k, align 4
  %__tmp1 = icmp sge i32 %__tmp0, 0
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = call i32 @inc_a()
  %__tmp3 = icmp ne i32 %__tmp2, 0
  br i1 %__tmp3, label %bb6, label %bb8
bb8:
  br label %bb7
bb6:
  %__tmp4 = call i32 @inc_a()
  %__tmp5 = icmp ne i32 %__tmp4, 0
  br label %bb7
bb7:
  %__tmp6 = phi i1 [ 0, %bb8 ], [ %__tmp5, %bb6 ]
  br i1 %__tmp6, label %bb9, label %bb11
bb11:
  br label %bb10
bb9:
  %__tmp7 = call i32 @inc_a()
  %__tmp8 = icmp ne i32 %__tmp7, 0
  br label %bb10
bb10:
  %__tmp9 = phi i1 [ 0, %bb11 ], [ %__tmp8, %bb9 ]
  br i1 %__tmp9, label %bb3, label %bb4
bb3:
  %__tmp10 = load i32, i32* @a, align 4
  %__tmp11 = call i32 @putint(i32 %__tmp10)
  %__tmp12 = call i32 @putch(i32 32)
  %__tmp13 = load i32, i32* @b, align 4
  %__tmp14 = call i32 @putint(i32 %__tmp13)
  %__tmp15 = call i32 @putch(i32 10)
  br label %bb5
bb4:
  br label %bb5
bb5:
  %__tmp16 = call i32 @inc_a()
  %__tmp17 = icmp slt i32 %__tmp16, 14
  br i1 %__tmp17, label %bb17, label %bb15
bb17:
  br label %bb16
bb15:
  %__tmp18 = call i32 @inc_a()
  %__tmp19 = icmp ne i32 %__tmp18, 0
  br i1 %__tmp19, label %bb18, label %bb20
bb20:
  br label %bb19
bb18:
  %__tmp20 = call i32 @inc_a()
  %__tmp21 = call i32 @inc_a()
  %__tmp22 = sub i32 %__tmp20, %__tmp21
  %__tmp23 = add i32 %__tmp22, 1
  %__tmp24 = icmp ne i32 %__tmp23, 0
  br label %bb19
bb19:
  %__tmp25 = phi i1 [ 0, %bb20 ], [ %__tmp24, %bb18 ]
  br label %bb16
bb16:
  %__tmp26 = phi i1 [ 1, %bb17 ], [ %__tmp25, %bb19 ]
  br i1 %__tmp26, label %bb12, label %bb13
bb12:
  %__tmp27 = load i32, i32* @a, align 4
  %__tmp28 = call i32 @putint(i32 %__tmp27)
  %__tmp29 = call i32 @putch(i32 10)
  %__tmp30 = load i32, i32* @b, align 4
  %__tmp31 = mul i32 %__tmp30, 2
  store i32 %__tmp31, i32* @b, align 4
  br label %bb14
bb13:
  %__tmp32 = call i32 @inc_a()
  br label %bb14
bb14:
  %__tmp33 = load i32, i32* %k, align 4
  %__tmp34 = sub i32 %__tmp33, 1
  store i32 %__tmp34, i32* %k, align 4
  br label %bb0
bb2:
  %__tmp35 = load i32, i32* @a, align 4
  %__tmp36 = call i32 @putint(i32 %__tmp35)
  %__tmp37 = call i32 @putch(i32 32)
  %__tmp38 = load i32, i32* @b, align 4
  %__tmp39 = call i32 @putint(i32 %__tmp38)
  %__tmp40 = call i32 @putch(i32 10)
  %__tmp41 = load i32, i32* @a, align 4
  ret i32 %__tmp41
}

