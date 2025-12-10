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
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 5, i32* %a, align 4
  store i32 5, i32* %b, align 4
  store i32 1, i32* %c, align 4
  store i32 -2, i32* %d, align 4
  %__tmp0 = load i32, i32* %d, align 4
  %__tmp1 = mul i32 %__tmp0, 1
  %__tmp2 = sdiv i32 %__tmp1, 2
  %__tmp3 = load i32, i32* %a, align 4
  %__tmp4 = load i32, i32* %b, align 4
  %__tmp5 = sub i32 %__tmp3, %__tmp4
  %__tmp6 = add i32 %__tmp2, %__tmp5
  %__tmp7 = load i32, i32* %c, align 4
  %__tmp8 = add i32 %__tmp7, 3
  %__tmp9 = sub i32 0, %__tmp8
  %__tmp10 = srem i32 %__tmp9, 2
  %__tmp11 = sub i32 %__tmp6, %__tmp10
  store i32 %__tmp11, i32* %result, align 4
  %__tmp12 = load i32, i32* %result, align 4
  %__tmp13 = call i32 @putint(i32 %__tmp12)
  %__tmp14 = load i32, i32* %d, align 4
  %__tmp15 = srem i32 %__tmp14, 2
  %__tmp16 = add i32 %__tmp15, 67
  %__tmp17 = load i32, i32* %a, align 4
  %__tmp18 = load i32, i32* %b, align 4
  %__tmp19 = sub i32 %__tmp17, %__tmp18
  %__tmp20 = sub i32 0, %__tmp19
  %__tmp21 = add i32 %__tmp16, %__tmp20
  %__tmp22 = load i32, i32* %c, align 4
  %__tmp23 = add i32 %__tmp22, 2
  %__tmp24 = srem i32 %__tmp23, 2
  %__tmp25 = sub i32 0, %__tmp24
  %__tmp26 = sub i32 %__tmp21, %__tmp25
  store i32 %__tmp26, i32* %result, align 4
  %__tmp27 = load i32, i32* %result, align 4
  %__tmp28 = add i32 %__tmp27, 3
  store i32 %__tmp28, i32* %result, align 4
  %__tmp29 = load i32, i32* %result, align 4
  %__tmp30 = call i32 @putint(i32 %__tmp29)
  ret i32 0
}

