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
@c = global i32 0, align 4
@d = global i32 0, align 4
@e = global i32 0, align 4

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* @a, align 4
  %__tmp1 = call i32 @getint()
  store i32 %__tmp1, i32* @b, align 4
  %__tmp2 = call i32 @getint()
  store i32 %__tmp2, i32* @c, align 4
  %__tmp3 = call i32 @getint()
  store i32 %__tmp3, i32* @d, align 4
  %__tmp4 = call i32 @getint()
  store i32 %__tmp4, i32* @e, align 4
  %flag = alloca i32, align 4
  store i32 0, i32* %flag, align 4
  %__tmp5 = load i32, i32* @a, align 4
  %__tmp6 = load i32, i32* @b, align 4
  %__tmp7 = load i32, i32* @c, align 4
  %__tmp8 = mul i32 %__tmp6, %__tmp7
  %__tmp9 = sub i32 %__tmp5, %__tmp8
  %__tmp10 = load i32, i32* @d, align 4
  %__tmp11 = load i32, i32* @a, align 4
  %__tmp12 = load i32, i32* @c, align 4
  %__tmp13 = sdiv i32 %__tmp11, %__tmp12
  %__tmp14 = sub i32 %__tmp10, %__tmp13
  %__tmp15 = icmp ne i32 %__tmp9, %__tmp14
  br i1 %__tmp15, label %bb5, label %bb3
bb5:
  br label %bb4
bb3:
  %__tmp16 = load i32, i32* @a, align 4
  %__tmp17 = load i32, i32* @b, align 4
  %__tmp18 = mul i32 %__tmp16, %__tmp17
  %__tmp19 = load i32, i32* @c, align 4
  %__tmp20 = sdiv i32 %__tmp18, %__tmp19
  %__tmp21 = load i32, i32* @e, align 4
  %__tmp22 = load i32, i32* @d, align 4
  %__tmp23 = add i32 %__tmp21, %__tmp22
  %__tmp24 = icmp eq i32 %__tmp20, %__tmp23
  br label %bb4
bb4:
  %__tmp25 = phi i1 [ 1, %bb5 ], [ %__tmp24, %bb3 ]
  br i1 %__tmp25, label %bb8, label %bb6
bb8:
  br label %bb7
bb6:
  %__tmp26 = load i32, i32* @a, align 4
  %__tmp27 = load i32, i32* @b, align 4
  %__tmp28 = add i32 %__tmp26, %__tmp27
  %__tmp29 = load i32, i32* @c, align 4
  %__tmp30 = add i32 %__tmp28, %__tmp29
  %__tmp31 = load i32, i32* @d, align 4
  %__tmp32 = load i32, i32* @e, align 4
  %__tmp33 = add i32 %__tmp31, %__tmp32
  %__tmp34 = icmp eq i32 %__tmp30, %__tmp33
  br label %bb7
bb7:
  %__tmp35 = phi i1 [ 1, %bb8 ], [ %__tmp34, %bb6 ]
  br i1 %__tmp35, label %bb0, label %bb1
bb0:
  store i32 1, i32* %flag, align 4
  br label %bb2
bb1:
  br label %bb2
bb2:
  %__tmp36 = load i32, i32* %flag, align 4
  ret i32 %__tmp36
}

