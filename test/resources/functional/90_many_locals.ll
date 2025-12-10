; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @foo() {
fooEntry:
  %arr = alloca [16 x i32], align 4
  store [16 x i32] zeroinitializer, [16 x i32]* %arr, align 4
  %__tmp0 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 0
  store i32 0, i32* %__tmp0, align 4
  %__tmp1 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 1
  store i32 1, i32* %__tmp1, align 4
  %__tmp2 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 2
  store i32 2, i32* %__tmp2, align 4
  %__tmp3 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 3
  store i32 3, i32* %__tmp3, align 4
  %__tmp4 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 4
  store i32 0, i32* %__tmp4, align 4
  %__tmp5 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 5
  store i32 1, i32* %__tmp5, align 4
  %__tmp6 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 6
  store i32 2, i32* %__tmp6, align 4
  %__tmp7 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 7
  store i32 3, i32* %__tmp7, align 4
  %__tmp8 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 8
  store i32 0, i32* %__tmp8, align 4
  %__tmp9 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 9
  store i32 1, i32* %__tmp9, align 4
  %__tmp10 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 10
  store i32 2, i32* %__tmp10, align 4
  %__tmp11 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 11
  store i32 3, i32* %__tmp11, align 4
  %__tmp12 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 12
  store i32 0, i32* %__tmp12, align 4
  %__tmp13 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 13
  store i32 1, i32* %__tmp13, align 4
  %__tmp14 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 14
  store i32 2, i32* %__tmp14, align 4
  %__tmp15 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 15
  store i32 3, i32* %__tmp15, align 4
  %a = alloca i32, align 4
  store i32 3, i32* %a, align 4
  %b = alloca i32, align 4
  store i32 7, i32* %b, align 4
  %c = alloca i32, align 4
  store i32 5, i32* %c, align 4
  %d = alloca i32, align 4
  store i32 6, i32* %d, align 4
  %e = alloca i32, align 4
  store i32 1, i32* %e, align 4
  %f = alloca i32, align 4
  store i32 0, i32* %f, align 4
  %g = alloca i32, align 4
  store i32 3, i32* %g, align 4
  %h = alloca i32, align 4
  store i32 5, i32* %h, align 4
  %i = alloca i32, align 4
  store i32 4, i32* %i, align 4
  %j = alloca i32, align 4
  store i32 2, i32* %j, align 4
  %k = alloca i32, align 4
  store i32 7, i32* %k, align 4
  %l = alloca i32, align 4
  store i32 9, i32* %l, align 4
  %m = alloca i32, align 4
  store i32 8, i32* %m, align 4
  %n = alloca i32, align 4
  store i32 1, i32* %n, align 4
  %o = alloca i32, align 4
  store i32 4, i32* %o, align 4
  %p = alloca i32, align 4
  store i32 6, i32* %p, align 4
  %sum1 = alloca i32, align 4
  %__tmp16 = load i32, i32* %a, align 4
  %__tmp17 = load i32, i32* %b, align 4
  %__tmp18 = add i32 %__tmp16, %__tmp17
  %__tmp19 = load i32, i32* %c, align 4
  %__tmp20 = add i32 %__tmp18, %__tmp19
  %__tmp21 = load i32, i32* %d, align 4
  %__tmp22 = add i32 %__tmp20, %__tmp21
  %__tmp23 = load i32, i32* %e, align 4
  %__tmp24 = add i32 %__tmp22, %__tmp23
  %__tmp25 = load i32, i32* %f, align 4
  %__tmp26 = add i32 %__tmp24, %__tmp25
  %__tmp27 = load i32, i32* %g, align 4
  %__tmp28 = add i32 %__tmp26, %__tmp27
  %__tmp29 = load i32, i32* %h, align 4
  %__tmp30 = add i32 %__tmp28, %__tmp29
  store i32 %__tmp30, i32* %sum1, align 4
  %sum2 = alloca i32, align 4
  %__tmp31 = load i32, i32* %i, align 4
  %__tmp32 = load i32, i32* %j, align 4
  %__tmp33 = add i32 %__tmp31, %__tmp32
  %__tmp34 = load i32, i32* %k, align 4
  %__tmp35 = add i32 %__tmp33, %__tmp34
  %__tmp36 = load i32, i32* %l, align 4
  %__tmp37 = add i32 %__tmp35, %__tmp36
  %__tmp38 = load i32, i32* %m, align 4
  %__tmp39 = add i32 %__tmp37, %__tmp38
  %__tmp40 = load i32, i32* %n, align 4
  %__tmp41 = add i32 %__tmp39, %__tmp40
  %__tmp42 = load i32, i32* %o, align 4
  %__tmp43 = add i32 %__tmp41, %__tmp42
  %__tmp44 = load i32, i32* %p, align 4
  %__tmp45 = add i32 %__tmp43, %__tmp44
  store i32 %__tmp45, i32* %sum2, align 4
  %__tmp46 = load i32, i32* %sum1, align 4
  %__tmp47 = load i32, i32* %sum2, align 4
  %__tmp48 = add i32 %__tmp46, %__tmp47
  %__tmp49 = load i32, i32* %a, align 4
  %__tmp50 = sext i32 %__tmp49 to i64
  %__tmp51 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 %__tmp50
  %__tmp52 = load i32, i32* %__tmp51, align 4
  %__tmp53 = add i32 %__tmp48, %__tmp52
  ret i32 %__tmp53
}

define i32 @main() {
mainEntry:
  %a = alloca i32, align 4
  store i32 3, i32* %a, align 4
  %b = alloca i32, align 4
  store i32 7, i32* %b, align 4
  %c = alloca i32, align 4
  store i32 5, i32* %c, align 4
  %d = alloca i32, align 4
  store i32 6, i32* %d, align 4
  %e = alloca i32, align 4
  store i32 1, i32* %e, align 4
  %f = alloca i32, align 4
  store i32 0, i32* %f, align 4
  %g = alloca i32, align 4
  store i32 3, i32* %g, align 4
  %h = alloca i32, align 4
  store i32 5, i32* %h, align 4
  %i = alloca i32, align 4
  store i32 4, i32* %i, align 4
  %j = alloca i32, align 4
  store i32 2, i32* %j, align 4
  %k = alloca i32, align 4
  store i32 7, i32* %k, align 4
  %l = alloca i32, align 4
  store i32 9, i32* %l, align 4
  %m = alloca i32, align 4
  store i32 8, i32* %m, align 4
  %n = alloca i32, align 4
  store i32 1, i32* %n, align 4
  %o = alloca i32, align 4
  store i32 4, i32* %o, align 4
  %p = alloca i32, align 4
  store i32 6, i32* %p, align 4
  %sum1 = alloca i32, align 4
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = load i32, i32* %b, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  %__tmp3 = load i32, i32* %c, align 4
  %__tmp4 = add i32 %__tmp2, %__tmp3
  %__tmp5 = load i32, i32* %d, align 4
  %__tmp6 = add i32 %__tmp4, %__tmp5
  %__tmp7 = load i32, i32* %e, align 4
  %__tmp8 = add i32 %__tmp6, %__tmp7
  %__tmp9 = load i32, i32* %f, align 4
  %__tmp10 = add i32 %__tmp8, %__tmp9
  %__tmp11 = load i32, i32* %g, align 4
  %__tmp12 = add i32 %__tmp10, %__tmp11
  %__tmp13 = load i32, i32* %h, align 4
  %__tmp14 = add i32 %__tmp12, %__tmp13
  store i32 %__tmp14, i32* %sum1, align 4
  %sum2 = alloca i32, align 4
  %__tmp15 = load i32, i32* %i, align 4
  %__tmp16 = load i32, i32* %j, align 4
  %__tmp17 = add i32 %__tmp15, %__tmp16
  %__tmp18 = load i32, i32* %k, align 4
  %__tmp19 = add i32 %__tmp17, %__tmp18
  %__tmp20 = load i32, i32* %l, align 4
  %__tmp21 = add i32 %__tmp19, %__tmp20
  %__tmp22 = load i32, i32* %m, align 4
  %__tmp23 = add i32 %__tmp21, %__tmp22
  %__tmp24 = load i32, i32* %n, align 4
  %__tmp25 = add i32 %__tmp23, %__tmp24
  %__tmp26 = load i32, i32* %o, align 4
  %__tmp27 = add i32 %__tmp25, %__tmp26
  %__tmp28 = load i32, i32* %p, align 4
  %__tmp29 = add i32 %__tmp27, %__tmp28
  store i32 %__tmp29, i32* %sum2, align 4
  %__tmp30 = load i32, i32* %sum1, align 4
  %__tmp31 = call i32 @foo()
  %__tmp32 = add i32 %__tmp30, %__tmp31
  store i32 %__tmp32, i32* %sum1, align 4
  %q = alloca i32, align 4
  store i32 4, i32* %q, align 4
  %r = alloca i32, align 4
  store i32 7, i32* %r, align 4
  %s = alloca i32, align 4
  store i32 2, i32* %s, align 4
  %t = alloca i32, align 4
  store i32 5, i32* %t, align 4
  %u = alloca i32, align 4
  store i32 8, i32* %u, align 4
  %v = alloca i32, align 4
  store i32 0, i32* %v, align 4
  %w = alloca i32, align 4
  store i32 6, i32* %w, align 4
  %x = alloca i32, align 4
  store i32 3, i32* %x, align 4
  %__tmp33 = load i32, i32* %sum2, align 4
  %__tmp34 = call i32 @foo()
  %__tmp35 = add i32 %__tmp33, %__tmp34
  store i32 %__tmp35, i32* %sum2, align 4
  %__tmp36 = load i32, i32* %i, align 4
  store i32 %__tmp36, i32* %a, align 4
  %__tmp37 = load i32, i32* %j, align 4
  store i32 %__tmp37, i32* %b, align 4
  %__tmp38 = load i32, i32* %k, align 4
  store i32 %__tmp38, i32* %c, align 4
  %__tmp39 = load i32, i32* %l, align 4
  store i32 %__tmp39, i32* %d, align 4
  %__tmp40 = load i32, i32* %m, align 4
  store i32 %__tmp40, i32* %e, align 4
  %__tmp41 = load i32, i32* %n, align 4
  store i32 %__tmp41, i32* %f, align 4
  %__tmp42 = load i32, i32* %o, align 4
  store i32 %__tmp42, i32* %g, align 4
  %__tmp43 = load i32, i32* %p, align 4
  store i32 %__tmp43, i32* %h, align 4
  %sum3 = alloca i32, align 4
  %__tmp44 = load i32, i32* %q, align 4
  %__tmp45 = load i32, i32* %r, align 4
  %__tmp46 = add i32 %__tmp44, %__tmp45
  %__tmp47 = load i32, i32* %s, align 4
  %__tmp48 = add i32 %__tmp46, %__tmp47
  %__tmp49 = load i32, i32* %t, align 4
  %__tmp50 = add i32 %__tmp48, %__tmp49
  %__tmp51 = load i32, i32* %u, align 4
  %__tmp52 = add i32 %__tmp50, %__tmp51
  %__tmp53 = load i32, i32* %v, align 4
  %__tmp54 = add i32 %__tmp52, %__tmp53
  %__tmp55 = load i32, i32* %w, align 4
  %__tmp56 = add i32 %__tmp54, %__tmp55
  %__tmp57 = load i32, i32* %x, align 4
  %__tmp58 = add i32 %__tmp56, %__tmp57
  store i32 %__tmp58, i32* %sum3, align 4
  %sum = alloca i32, align 4
  %__tmp59 = load i32, i32* %sum1, align 4
  %__tmp60 = load i32, i32* %sum2, align 4
  %__tmp61 = add i32 %__tmp59, %__tmp60
  %__tmp62 = load i32, i32* %sum3, align 4
  %__tmp63 = add i32 %__tmp61, %__tmp62
  store i32 %__tmp63, i32* %sum, align 4
  %__tmp64 = load i32, i32* %sum, align 4
  call void @putint(i32 %__tmp64)
  call void @putch(i32 10)
  ret i32 0
}

