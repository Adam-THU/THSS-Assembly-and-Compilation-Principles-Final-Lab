; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@g = global i32 0, align 4
@h = global i32 0, align 4
@f = global i32 0, align 4
@e = global i32 0, align 4

define i32 @EightWhile() {
EightWhileEntry:
  %a = alloca i32, align 4
  store i32 5, i32* %a, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 6, i32* %b, align 4
  store i32 7, i32* %c, align 4
  %d = alloca i32, align 4
  store i32 10, i32* %d, align 4
  br label %bb0
bb0:
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 20
  br i1 %__tmp1, label %bb1, label %bb2
bb1:
  %__tmp2 = load i32, i32* %a, align 4
  %__tmp3 = add i32 %__tmp2, 3
  store i32 %__tmp3, i32* %a, align 4
  br label %bb3
bb3:
  %__tmp4 = load i32, i32* %b, align 4
  %__tmp5 = icmp slt i32 %__tmp4, 10
  br i1 %__tmp5, label %bb4, label %bb5
bb4:
  %__tmp6 = load i32, i32* %b, align 4
  %__tmp7 = add i32 %__tmp6, 1
  store i32 %__tmp7, i32* %b, align 4
  br label %bb6
bb6:
  %__tmp8 = load i32, i32* %c, align 4
  %__tmp9 = icmp eq i32 %__tmp8, 7
  br i1 %__tmp9, label %bb7, label %bb8
bb7:
  %__tmp10 = load i32, i32* %c, align 4
  %__tmp11 = sub i32 %__tmp10, 1
  store i32 %__tmp11, i32* %c, align 4
  br label %bb9
bb9:
  %__tmp12 = load i32, i32* %d, align 4
  %__tmp13 = icmp slt i32 %__tmp12, 20
  br i1 %__tmp13, label %bb10, label %bb11
bb10:
  %__tmp14 = load i32, i32* %d, align 4
  %__tmp15 = add i32 %__tmp14, 3
  store i32 %__tmp15, i32* %d, align 4
  br label %bb12
bb12:
  %__tmp16 = load i32, i32* @e, align 4
  %__tmp17 = icmp sgt i32 %__tmp16, 1
  br i1 %__tmp17, label %bb13, label %bb14
bb13:
  %__tmp18 = load i32, i32* @e, align 4
  %__tmp19 = sub i32 %__tmp18, 1
  store i32 %__tmp19, i32* @e, align 4
  br label %bb15
bb15:
  %__tmp20 = load i32, i32* @f, align 4
  %__tmp21 = icmp sgt i32 %__tmp20, 2
  br i1 %__tmp21, label %bb16, label %bb17
bb16:
  %__tmp22 = load i32, i32* @f, align 4
  %__tmp23 = sub i32 %__tmp22, 2
  store i32 %__tmp23, i32* @f, align 4
  br label %bb18
bb18:
  %__tmp24 = load i32, i32* @g, align 4
  %__tmp25 = icmp slt i32 %__tmp24, 3
  br i1 %__tmp25, label %bb19, label %bb20
bb19:
  %__tmp26 = load i32, i32* @g, align 4
  %__tmp27 = add i32 %__tmp26, 10
  store i32 %__tmp27, i32* @g, align 4
  br label %bb21
bb21:
  %__tmp28 = load i32, i32* @h, align 4
  %__tmp29 = icmp slt i32 %__tmp28, 10
  br i1 %__tmp29, label %bb22, label %bb23
bb22:
  %__tmp30 = load i32, i32* @h, align 4
  %__tmp31 = add i32 %__tmp30, 8
  store i32 %__tmp31, i32* @h, align 4
  br label %bb21
bb23:
  %__tmp32 = load i32, i32* @h, align 4
  %__tmp33 = sub i32 %__tmp32, 1
  store i32 %__tmp33, i32* @h, align 4
  br label %bb18
bb20:
  %__tmp34 = load i32, i32* @g, align 4
  %__tmp35 = sub i32 %__tmp34, 8
  store i32 %__tmp35, i32* @g, align 4
  br label %bb15
bb17:
  %__tmp36 = load i32, i32* @f, align 4
  %__tmp37 = add i32 %__tmp36, 1
  store i32 %__tmp37, i32* @f, align 4
  br label %bb12
bb14:
  %__tmp38 = load i32, i32* @e, align 4
  %__tmp39 = add i32 %__tmp38, 1
  store i32 %__tmp39, i32* @e, align 4
  br label %bb9
bb11:
  %__tmp40 = load i32, i32* %d, align 4
  %__tmp41 = sub i32 %__tmp40, 1
  store i32 %__tmp41, i32* %d, align 4
  br label %bb6
bb8:
  %__tmp42 = load i32, i32* %c, align 4
  %__tmp43 = add i32 %__tmp42, 1
  store i32 %__tmp43, i32* %c, align 4
  br label %bb3
bb5:
  %__tmp44 = load i32, i32* %b, align 4
  %__tmp45 = sub i32 %__tmp44, 2
  store i32 %__tmp45, i32* %b, align 4
  br label %bb0
bb2:
  %__tmp46 = load i32, i32* %a, align 4
  %__tmp47 = load i32, i32* %b, align 4
  %__tmp48 = load i32, i32* %d, align 4
  %__tmp49 = add i32 %__tmp47, %__tmp48
  %__tmp50 = add i32 %__tmp46, %__tmp49
  %__tmp51 = load i32, i32* %c, align 4
  %__tmp52 = add i32 %__tmp50, %__tmp51
  %__tmp53 = load i32, i32* @e, align 4
  %__tmp54 = load i32, i32* %d, align 4
  %__tmp55 = add i32 %__tmp53, %__tmp54
  %__tmp56 = load i32, i32* @g, align 4
  %__tmp57 = sub i32 %__tmp55, %__tmp56
  %__tmp58 = load i32, i32* @h, align 4
  %__tmp59 = add i32 %__tmp57, %__tmp58
  %__tmp60 = sub i32 %__tmp52, %__tmp59
  ret i32 %__tmp60
}

define i32 @main() {
mainEntry:
  store i32 1, i32* @g, align 4
  store i32 2, i32* @h, align 4
  store i32 4, i32* @e, align 4
  store i32 6, i32* @f, align 4
  %__tmp0 = call i32 @EightWhile()
  ret i32 %__tmp0
}

