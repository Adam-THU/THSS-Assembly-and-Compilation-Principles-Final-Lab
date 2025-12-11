; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@k = global i32 0, align 4

define i32 @main() {
mainEntry:
  store i32 3389, i32* @k, align 4
  %__tmp0 = load i32, i32* @k, align 4
  %__tmp1 = icmp slt i32 %__tmp0, 10000
  %k = alloca i32, align 4
  %g = alloca i32, align 4
  %l = alloca i32, align 4
  %g.1 = alloca i32, align 4
  br i1 %__tmp1, label %bb0, label %bb1
bb0:
  %__tmp2 = load i32, i32* @k, align 4
  %__tmp3 = add i32 %__tmp2, 1
  store i32 %__tmp3, i32* @k, align 4
  store i32 112, i32* %k, align 4
  br label %bb3
bb3:
  %__tmp4 = load i32, i32* %k, align 4
  %__tmp5 = icmp sgt i32 %__tmp4, 10
  br i1 %__tmp5, label %bb4, label %bb5
bb4:
  %__tmp6 = load i32, i32* %k, align 4
  %__tmp7 = sub i32 %__tmp6, 88
  store i32 %__tmp7, i32* %k, align 4
  %__tmp8 = load i32, i32* %k, align 4
  %__tmp9 = icmp slt i32 %__tmp8, 1000
  br i1 %__tmp9, label %bb6, label %bb7
bb6:
  store i32 9, i32* %g, align 4
  store i32 11, i32* %l, align 4
  store i32 10, i32* %g, align 4
  %__tmp10 = load i32, i32* %k, align 4
  %__tmp11 = load i32, i32* %g, align 4
  %__tmp12 = sub i32 %__tmp10, %__tmp11
  store i32 %__tmp12, i32* %k, align 4
  store i32 11, i32* %g.1, align 4
  %__tmp13 = load i32, i32* %k, align 4
  %__tmp14 = load i32, i32* %g.1, align 4
  %__tmp15 = add i32 %__tmp13, %__tmp14
  %__tmp16 = load i32, i32* %l, align 4
  %__tmp17 = add i32 %__tmp15, %__tmp16
  store i32 %__tmp17, i32* %k, align 4
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %bb3
bb5:
  %__tmp18 = load i32, i32* %k, align 4
  call void @putint(i32 %__tmp18)
  br label %bb2
bb1:
  br label %bb2
bb2:
  %__tmp19 = load i32, i32* @k, align 4
  ret i32 %__tmp19
}

