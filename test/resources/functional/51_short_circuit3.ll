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
  %__tmp6 = call i32 @putint(i32 %__tmp5)
  %__tmp7 = call i32 @putch(i32 32)
  %__tmp8 = load i32, i32* @b, align 4
  %__tmp9 = call i32 @putint(i32 %__tmp8)
  %__tmp10 = call i32 @putch(i32 32)
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %__tmp11 = call i32 @set_a(i32 0)
  %__tmp12 = icmp ne i32 %__tmp11, 0
  br i1 %__tmp12, label %bb9, label %bb11
bb11:
  br label %bb10
bb9:
  %__tmp13 = call i32 @set_b(i32 1)
  %__tmp14 = icmp ne i32 %__tmp13, 0
  br label %bb10
bb10:
  %__tmp15 = phi i1 [ 0, %bb11 ], [ %__tmp14, %bb9 ]
  br i1 %__tmp15, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %__tmp16 = load i32, i32* @a, align 4
  %__tmp17 = call i32 @putint(i32 %__tmp16)
  %__tmp18 = call i32 @putch(i32 32)
  %__tmp19 = load i32, i32* @b, align 4
  %__tmp20 = call i32 @putint(i32 %__tmp19)
  %__tmp21 = call i32 @putch(i32 10)
  store i32 2, i32* @d, align 4
  %__tmp22 = call i32 @set_d(i32 3)
  %__tmp23 = icmp ne i32 %__tmp22, 0
  br i1 %__tmp23, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %__tmp24 = load i32, i32* @d, align 4
  %__tmp25 = call i32 @putint(i32 %__tmp24)
  %__tmp26 = call i32 @putch(i32 32)
  br label %bb20
bb20:
  %__tmp27 = load i32, i32* @d, align 4
  %__tmp28 = call i32 @putint(i32 %__tmp27)
  %__tmp29 = call i32 @putch(i32 10)
  %__tmp30 = call i32 @putch(i32 65)
  br label %bb23
bb23:
  br label %bb26
bb26:
  br label %bb29
bb29:
  %__tmp31 = call i32 @putch(i32 68)
  br label %bb32
bb32:
  br label %bb35
bb35:
  %__tmp32 = call i32 @putch(i32 70)
  br label %bb38
bb38:
  %__tmp33 = call i32 @putch(i32 10)
  %i0 = alloca i32, align 4
  store i32 0, i32* %i0, align 4
  %i1 = alloca i32, align 4
  store i32 1, i32* %i1, align 4
  %i2 = alloca i32, align 4
  store i32 2, i32* %i2, align 4
  %i3 = alloca i32, align 4
  store i32 3, i32* %i3, align 4
  %i4 = alloca i32, align 4
  store i32 4, i32* %i4, align 4
  br label %bb39
bb39:
  %__tmp34 = load i32, i32* %i0, align 4
  %__tmp35 = icmp ne i32 %__tmp34, 0
  br i1 %__tmp35, label %bb42, label %bb44
bb44:
  br label %bb43
bb42:
  %__tmp36 = load i32, i32* %i1, align 4
  %__tmp37 = icmp ne i32 %__tmp36, 0
  br label %bb43
bb43:
  %__tmp38 = phi i1 [ 0, %bb44 ], [ %__tmp37, %bb42 ]
  br i1 %__tmp38, label %bb40, label %bb41
bb40:
  %__tmp39 = call i32 @putch(i32 32)
  br label %bb39
bb41:
  %__tmp40 = load i32, i32* %i0, align 4
  %__tmp41 = icmp ne i32 %__tmp40, 0
  br i1 %__tmp41, label %bb50, label %bb48
bb50:
  br label %bb49
bb48:
  %__tmp42 = load i32, i32* %i1, align 4
  %__tmp43 = icmp ne i32 %__tmp42, 0
  br label %bb49
bb49:
  %__tmp44 = phi i1 [ 1, %bb50 ], [ %__tmp43, %bb48 ]
  br i1 %__tmp44, label %bb45, label %bb46
bb45:
  %__tmp45 = call i32 @putch(i32 67)
  br label %bb47
bb46:
  br label %bb47
bb47:
  %__tmp46 = load i32, i32* %i0, align 4
  %__tmp47 = load i32, i32* %i1, align 4
  %__tmp48 = icmp sge i32 %__tmp46, %__tmp47
  br i1 %__tmp48, label %bb56, label %bb54
bb56:
  br label %bb55
bb54:
  %__tmp49 = load i32, i32* %i1, align 4
  %__tmp50 = load i32, i32* %i0, align 4
  %__tmp51 = icmp sle i32 %__tmp49, %__tmp50
  br label %bb55
bb55:
  %__tmp52 = phi i1 [ 1, %bb56 ], [ %__tmp51, %bb54 ]
  br i1 %__tmp52, label %bb51, label %bb52
bb51:
  %__tmp53 = call i32 @putch(i32 72)
  br label %bb53
bb52:
  br label %bb53
bb53:
  %__tmp54 = load i32, i32* %i2, align 4
  %__tmp55 = load i32, i32* %i1, align 4
  %__tmp56 = icmp sge i32 %__tmp54, %__tmp55
  br i1 %__tmp56, label %bb60, label %bb62
bb62:
  br label %bb61
bb60:
  %__tmp57 = load i32, i32* %i4, align 4
  %__tmp58 = load i32, i32* %i3, align 4
  %__tmp59 = icmp ne i32 %__tmp57, %__tmp58
  br label %bb61
bb61:
  %__tmp60 = phi i1 [ 0, %bb62 ], [ %__tmp59, %bb60 ]
  br i1 %__tmp60, label %bb57, label %bb58
bb57:
  %__tmp61 = call i32 @putch(i32 73)
  br label %bb59
bb58:
  br label %bb59
bb59:
  %__tmp62 = load i32, i32* %i0, align 4
  %__tmp63 = load i32, i32* %i1, align 4
  %__tmp64 = icmp eq i32 %__tmp63, 0
  %__tmp65 = zext i1 %__tmp64 to i32
  %__tmp66 = icmp eq i32 %__tmp62, %__tmp65
  br i1 %__tmp66, label %bb66, label %bb68
bb68:
  br label %bb67
bb66:
  %__tmp67 = load i32, i32* %i3, align 4
  %__tmp68 = load i32, i32* %i3, align 4
  %__tmp69 = icmp slt i32 %__tmp67, %__tmp68
  br label %bb67
bb67:
  %__tmp70 = phi i1 [ 0, %bb68 ], [ %__tmp69, %bb66 ]
  br i1 %__tmp70, label %bb71, label %bb69
bb71:
  br label %bb70
bb69:
  %__tmp71 = load i32, i32* %i4, align 4
  %__tmp72 = load i32, i32* %i4, align 4
  %__tmp73 = icmp sge i32 %__tmp71, %__tmp72
  br label %bb70
bb70:
  %__tmp74 = phi i1 [ 1, %bb71 ], [ %__tmp73, %bb69 ]
  br i1 %__tmp74, label %bb63, label %bb64
bb63:
  %__tmp75 = call i32 @putch(i32 74)
  br label %bb65
bb64:
  br label %bb65
bb65:
  %__tmp76 = load i32, i32* %i0, align 4
  %__tmp77 = load i32, i32* %i1, align 4
  %__tmp78 = icmp eq i32 %__tmp77, 0
  %__tmp79 = zext i1 %__tmp78 to i32
  %__tmp80 = icmp eq i32 %__tmp76, %__tmp79
  br i1 %__tmp80, label %bb77, label %bb75
bb77:
  br label %bb76
bb75:
  %__tmp81 = load i32, i32* %i3, align 4
  %__tmp82 = load i32, i32* %i3, align 4
  %__tmp83 = icmp slt i32 %__tmp81, %__tmp82
  br i1 %__tmp83, label %bb78, label %bb80
bb80:
  br label %bb79
bb78:
  %__tmp84 = load i32, i32* %i4, align 4
  %__tmp85 = load i32, i32* %i4, align 4
  %__tmp86 = icmp sge i32 %__tmp84, %__tmp85
  br label %bb79
bb79:
  %__tmp87 = phi i1 [ 0, %bb80 ], [ %__tmp86, %bb78 ]
  br label %bb76
bb76:
  %__tmp88 = phi i1 [ 1, %bb77 ], [ %__tmp87, %bb79 ]
  br i1 %__tmp88, label %bb72, label %bb73
bb72:
  %__tmp89 = call i32 @putch(i32 75)
  br label %bb74
bb73:
  br label %bb74
bb74:
  %__tmp90 = call i32 @putch(i32 10)
  ret i32 0
}

