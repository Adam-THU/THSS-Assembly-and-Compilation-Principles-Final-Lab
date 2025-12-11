; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global i32 0, align 4
@b = global i32 0, align 4
@d = global i32 0, align 4

define i32 @set_a(i32 %val) {
set_aEntry:
  %val_arg = alloca i32, align 4
  store i32 %val, i32* %val_arg, align 4
  %__tmp0 = load i32, i32* %val_arg, align 4
  store i32 %__tmp0, i32* @a, align 4
  %__tmp1 = load i32, i32* @a, align 4
  ret i32 %__tmp1
}

define i32 @set_b(i32 %val) {
set_bEntry:
  %val_arg = alloca i32, align 4
  store i32 %val, i32* %val_arg, align 4
  %__tmp0 = load i32, i32* %val_arg, align 4
  store i32 %__tmp0, i32* @b, align 4
  %__tmp1 = load i32, i32* @b, align 4
  ret i32 %__tmp1
}

define i32 @set_d(i32 %val) {
set_dEntry:
  %val_arg = alloca i32, align 4
  store i32 %val, i32* %val_arg, align 4
  %__tmp0 = load i32, i32* %val_arg, align 4
  store i32 %__tmp0, i32* @d, align 4
  %__tmp1 = load i32, i32* @d, align 4
  ret i32 %__tmp1
}

define i32 @main() {
mainEntry:
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %__tmp0 = call i32 @set_a(i32 0)
  %__tmp1 = icmp ne i32 %__tmp0, 0
  br i1 %__tmp1, label %bb3, label %bb5
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
bb5:
  br label %bb4
bb3:
  %__tmp2 = call i32 @set_b(i32 1)
  %__tmp3 = icmp ne i32 %__tmp2, 0
  br label %bb4
bb4:
  %__tmp4 = phi i1 [ 0, %bb5 ], [ %__tmp3, %bb3 ]
  br i1 %__tmp4, label %bb0, label %bb1
bb0:
  br label %bb2
bb1:
  br label %bb2
bb2:
  %__tmp5 = load i32, i32* @a, align 4
  call void @putint(i32 %__tmp5)
  call void @putch(i32 32)
  %__tmp6 = load i32, i32* @b, align 4
  call void @putint(i32 %__tmp6)
  call void @putch(i32 32)
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %__tmp7 = call i32 @set_a(i32 0)
  %__tmp8 = icmp ne i32 %__tmp7, 0
  br i1 %__tmp8, label %bb9, label %bb11
bb11:
  br label %bb10
bb9:
  %__tmp9 = call i32 @set_b(i32 1)
  %__tmp10 = icmp ne i32 %__tmp9, 0
  br label %bb10
bb10:
  %__tmp11 = phi i1 [ 0, %bb11 ], [ %__tmp10, %bb9 ]
  br i1 %__tmp11, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp12 = load i32, i32* @a, align 4
  call void @putint(i32 %__tmp12)
  call void @putch(i32 32)
  %__tmp13 = load i32, i32* @b, align 4
  call void @putint(i32 %__tmp13)
  call void @putch(i32 10)
  store i32 2, i32* @d, align 4
  %__tmp14 = call i32 @set_d(i32 3)
  %__tmp15 = icmp ne i32 %__tmp14, 0
  br i1 %__tmp15, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp16 = load i32, i32* @d, align 4
  call void @putint(i32 %__tmp16)
  call void @putch(i32 32)
  br label %bb20
bb20:
  %__tmp17 = load i32, i32* @d, align 4
  call void @putint(i32 %__tmp17)
  call void @putch(i32 10)
  call void @putch(i32 65)
  br label %bb23
bb23:
  br label %bb26
bb26:
  br label %bb29
bb29:
  call void @putch(i32 68)
  br label %bb32
bb32:
  br label %bb35
bb35:
  call void @putch(i32 70)
  br label %bb38
bb38:
  call void @putch(i32 10)
  store i32 0, i32* %i0, align 4
  store i32 1, i32* %i1, align 4
  store i32 2, i32* %i2, align 4
  store i32 3, i32* %i3, align 4
  store i32 4, i32* %i4, align 4
  br label %bb39
bb39:
  %__tmp18 = load i32, i32* %i0, align 4
  %__tmp19 = icmp ne i32 %__tmp18, 0
  br i1 %__tmp19, label %bb42, label %bb44
bb44:
  br label %bb43
bb42:
  %__tmp20 = load i32, i32* %i1, align 4
  %__tmp21 = icmp ne i32 %__tmp20, 0
  br label %bb43
bb43:
  %__tmp22 = phi i1 [ 0, %bb44 ], [ %__tmp21, %bb42 ]
  br i1 %__tmp22, label %bb40, label %bb41
bb40:
  call void @putch(i32 32)
  br label %bb39
bb41:
  %__tmp23 = load i32, i32* %i0, align 4
  %__tmp24 = icmp ne i32 %__tmp23, 0
  br i1 %__tmp24, label %bb50, label %bb48
bb50:
  br label %bb49
bb48:
  %__tmp25 = load i32, i32* %i1, align 4
  %__tmp26 = icmp ne i32 %__tmp25, 0
  br label %bb49
bb49:
  %__tmp27 = phi i1 [ 1, %bb50 ], [ %__tmp26, %bb48 ]
  br i1 %__tmp27, label %bb45, label %bb46
bb45:
  call void @putch(i32 67)
  br label %bb47
bb46:
  br label %bb47
bb47:
  %__tmp28 = load i32, i32* %i0, align 4
  %__tmp29 = load i32, i32* %i1, align 4
  %__tmp30 = icmp sge i32 %__tmp28, %__tmp29
  br i1 %__tmp30, label %bb56, label %bb54
bb56:
  br label %bb55
bb54:
  %__tmp31 = load i32, i32* %i1, align 4
  %__tmp32 = load i32, i32* %i0, align 4
  %__tmp33 = icmp sle i32 %__tmp31, %__tmp32
  br label %bb55
bb55:
  %__tmp34 = phi i1 [ 1, %bb56 ], [ %__tmp33, %bb54 ]
  br i1 %__tmp34, label %bb51, label %bb52
bb51:
  call void @putch(i32 72)
  br label %bb53
bb52:
  br label %bb53
bb53:
  %__tmp35 = load i32, i32* %i2, align 4
  %__tmp36 = load i32, i32* %i1, align 4
  %__tmp37 = icmp sge i32 %__tmp35, %__tmp36
  br i1 %__tmp37, label %bb60, label %bb62
bb62:
  br label %bb61
bb60:
  %__tmp38 = load i32, i32* %i4, align 4
  %__tmp39 = load i32, i32* %i3, align 4
  %__tmp40 = icmp ne i32 %__tmp38, %__tmp39
  br label %bb61
bb61:
  %__tmp41 = phi i1 [ 0, %bb62 ], [ %__tmp40, %bb60 ]
  br i1 %__tmp41, label %bb57, label %bb58
bb57:
  call void @putch(i32 73)
  br label %bb59
bb58:
  br label %bb59
bb59:
  %__tmp42 = load i32, i32* %i0, align 4
  %__tmp43 = load i32, i32* %i1, align 4
  %__tmp44 = icmp eq i32 %__tmp43, 0
  %__tmp45 = zext i1 %__tmp44 to i32
  %__tmp46 = icmp eq i32 %__tmp42, %__tmp45
  br i1 %__tmp46, label %bb66, label %bb68
bb68:
  br label %bb67
bb66:
  %__tmp47 = load i32, i32* %i3, align 4
  %__tmp48 = load i32, i32* %i3, align 4
  %__tmp49 = icmp slt i32 %__tmp47, %__tmp48
  br label %bb67
bb67:
  %__tmp50 = phi i1 [ 0, %bb68 ], [ %__tmp49, %bb66 ]
  br i1 %__tmp50, label %bb71, label %bb69
bb71:
  br label %bb70
bb69:
  %__tmp51 = load i32, i32* %i4, align 4
  %__tmp52 = load i32, i32* %i4, align 4
  %__tmp53 = icmp sge i32 %__tmp51, %__tmp52
  br label %bb70
bb70:
  %__tmp54 = phi i1 [ 1, %bb71 ], [ %__tmp53, %bb69 ]
  br i1 %__tmp54, label %bb63, label %bb64
bb63:
  call void @putch(i32 74)
  br label %bb65
bb64:
  br label %bb65
bb65:
  %__tmp55 = load i32, i32* %i0, align 4
  %__tmp56 = load i32, i32* %i1, align 4
  %__tmp57 = icmp eq i32 %__tmp56, 0
  %__tmp58 = zext i1 %__tmp57 to i32
  %__tmp59 = icmp eq i32 %__tmp55, %__tmp58
  br i1 %__tmp59, label %bb77, label %bb75
bb77:
  br label %bb76
bb75:
  %__tmp60 = load i32, i32* %i3, align 4
  %__tmp61 = load i32, i32* %i3, align 4
  %__tmp62 = icmp slt i32 %__tmp60, %__tmp61
  br i1 %__tmp62, label %bb78, label %bb80
bb80:
  br label %bb79
bb78:
  %__tmp63 = load i32, i32* %i4, align 4
  %__tmp64 = load i32, i32* %i4, align 4
  %__tmp65 = icmp sge i32 %__tmp63, %__tmp64
  br label %bb79
bb79:
  %__tmp66 = phi i1 [ 0, %bb80 ], [ %__tmp65, %bb78 ]
  br label %bb76
bb76:
  %__tmp67 = phi i1 [ 1, %bb77 ], [ %__tmp66, %bb79 ]
  br i1 %__tmp67, label %bb72, label %bb73
bb72:
  call void @putch(i32 75)
  br label %bb74
bb73:
  br label %bb74
bb74:
  call void @putch(i32 10)
  ret i32 0
}

