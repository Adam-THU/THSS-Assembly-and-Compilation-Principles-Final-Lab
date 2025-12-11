; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a = global i32 1, align 4
@b = global i32 0, align 4
@c = global i32 1, align 4
@d = global i32 2, align 4
@e = global i32 4, align 4

define i32 @main() {
mainEntry:
  %flag = alloca i32, align 4
  store i32 0, i32* %flag, align 4
  %__tmp0 = load i32, i32* @a, align 4
  %__tmp1 = load i32, i32* @b, align 4
  %__tmp2 = mul i32 %__tmp0, %__tmp1
  %__tmp3 = load i32, i32* @c, align 4
  %__tmp4 = sdiv i32 %__tmp2, %__tmp3
  %__tmp5 = load i32, i32* @e, align 4
  %__tmp6 = load i32, i32* @d, align 4
  %__tmp7 = add i32 %__tmp5, %__tmp6
  %__tmp8 = icmp eq i32 %__tmp4, %__tmp7
  br i1 %__tmp8, label %bb3, label %bb5
bb5:
  br label %bb4
bb3:
  %__tmp9 = load i32, i32* @a, align 4
  %__tmp10 = load i32, i32* @a, align 4
  %__tmp11 = load i32, i32* @b, align 4
  %__tmp12 = add i32 %__tmp10, %__tmp11
  %__tmp13 = mul i32 %__tmp9, %__tmp12
  %__tmp14 = load i32, i32* @c, align 4
  %__tmp15 = add i32 %__tmp13, %__tmp14
  %__tmp16 = load i32, i32* @d, align 4
  %__tmp17 = load i32, i32* @e, align 4
  %__tmp18 = add i32 %__tmp16, %__tmp17
  %__tmp19 = icmp sle i32 %__tmp15, %__tmp18
  br label %bb4
bb4:
  %__tmp20 = phi i1 [ 0, %bb5 ], [ %__tmp19, %bb3 ]
  br i1 %__tmp20, label %bb8, label %bb6
bb8:
  br label %bb7
bb6:
  %__tmp21 = load i32, i32* @a, align 4
  %__tmp22 = load i32, i32* @b, align 4
  %__tmp23 = load i32, i32* @c, align 4
  %__tmp24 = mul i32 %__tmp22, %__tmp23
  %__tmp25 = sub i32 %__tmp21, %__tmp24
  %__tmp26 = load i32, i32* @d, align 4
  %__tmp27 = load i32, i32* @a, align 4
  %__tmp28 = load i32, i32* @c, align 4
  %__tmp29 = sdiv i32 %__tmp27, %__tmp28
  %__tmp30 = sub i32 %__tmp26, %__tmp29
  %__tmp31 = icmp eq i32 %__tmp25, %__tmp30
  br label %bb7
bb7:
  %__tmp32 = phi i1 [ 1, %bb8 ], [ %__tmp31, %bb6 ]
  br i1 %__tmp32, label %bb0, label %bb1
bb0:
  store i32 1, i32* %flag, align 4
  br label %bb2
bb1:
  br label %bb2
bb2:
  %__tmp33 = load i32, i32* %flag, align 4
  call void @putint(i32 %__tmp33)
  %__tmp34 = load i32, i32* %flag, align 4
  ret i32 %__tmp34
}

