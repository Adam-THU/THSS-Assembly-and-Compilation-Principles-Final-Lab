; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @ifElseIf() {
ifElseIfEntry:
  %a = alloca i32, align 4
  store i32 5, i32* %a, align 4
  %b = alloca i32, align 4
  store i32 10, i32* %b, align 4
  %__tmp0 = load i32, i32* %a, align 4
  %__tmp1 = icmp eq i32 %__tmp0, 6
  br i1 %__tmp1, label %bb5, label %bb3
bb5:
  br label %bb4
bb3:
  %__tmp2 = load i32, i32* %b, align 4
  %__tmp3 = icmp eq i32 %__tmp2, 11
  br label %bb4
bb4:
  %__tmp4 = phi i1 [ 1, %bb5 ], [ %__tmp3, %bb3 ]
  br i1 %__tmp4, label %bb0, label %bb1
bb0:
  %__tmp5 = load i32, i32* %a, align 4
  ret i32 %__tmp5
bb1:
  %__tmp6 = load i32, i32* %b, align 4
  %__tmp7 = icmp eq i32 %__tmp6, 10
  br i1 %__tmp7, label %bb9, label %bb11
bb11:
  br label %bb10
bb9:
  %__tmp8 = load i32, i32* %a, align 4
  %__tmp9 = icmp eq i32 %__tmp8, 1
  br label %bb10
bb10:
  %__tmp10 = phi i1 [ 0, %bb11 ], [ %__tmp9, %bb9 ]
  br i1 %__tmp10, label %bb6, label %bb7
bb6:
  store i32 25, i32* %a, align 4
  br label %bb8
bb7:
  %__tmp11 = load i32, i32* %b, align 4
  %__tmp12 = icmp eq i32 %__tmp11, 10
  br i1 %__tmp12, label %bb15, label %bb17
bb17:
  br label %bb16
bb15:
  %__tmp13 = load i32, i32* %a, align 4
  %__tmp14 = icmp eq i32 %__tmp13, -5
  br label %bb16
bb16:
  %__tmp15 = phi i1 [ 0, %bb17 ], [ %__tmp14, %bb15 ]
  br i1 %__tmp15, label %bb12, label %bb13
bb12:
  %__tmp16 = load i32, i32* %a, align 4
  %__tmp17 = add i32 %__tmp16, 15
  store i32 %__tmp17, i32* %a, align 4
  br label %bb14
bb13:
  %__tmp18 = load i32, i32* %a, align 4
  %__tmp19 = sub i32 0, %__tmp18
  store i32 %__tmp19, i32* %a, align 4
  br label %bb14
bb14:
  br label %bb8
bb8:
  br label %bb2
bb2:
  %__tmp20 = load i32, i32* %a, align 4
  ret i32 %__tmp20
}

define i32 @main() {
mainEntry:
  %__tmp0 = call i32 @ifElseIf()
  %__tmp1 = call i32 @putint(i32 %__tmp0)
  ret i32 0
}

