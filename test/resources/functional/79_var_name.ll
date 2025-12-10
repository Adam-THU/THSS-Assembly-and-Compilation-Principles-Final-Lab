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
  %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019 = alloca i32, align 4
  store i32 2, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196 = alloca [20 x i32], align 4
  store [20 x i32] zeroinitializer, [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196, align 4
  %__tmp0 = getelementptr inbounds [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196, i64 0, i64 0
  store i32 1, i32* %__tmp0, align 4
  %__tmp1 = getelementptr inbounds [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196, i64 0, i64 1
  store i32 2, i32* %__tmp1, align 4
  %V62vtYqjKr7vUHagX8crbD1Pj3RQqU_97538039 = alloca i32, align 4
  store i32 0, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU_97538039, align 4
  br label %bb0
bb0:
  %__tmp2 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  %__tmp3 = icmp slt i32 %__tmp2, 20
  br i1 %__tmp3, label %bb1, label %bb2
bb1:
  %__tmp4 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  %__tmp5 = sext i32 %__tmp4 to i64
  %__tmp6 = getelementptr inbounds [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196, i64 0, i64 %__tmp5
  %__tmp7 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  %__tmp8 = sext i32 %__tmp7 to i64
  %__tmp9 = getelementptr inbounds [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196, i64 0, i64 %__tmp8
  %__tmp10 = load i32, i32* %__tmp9, align 4
  %__tmp11 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  %__tmp12 = sub i32 %__tmp11, 1
  %__tmp13 = sext i32 %__tmp12 to i64
  %__tmp14 = getelementptr inbounds [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196, i64 0, i64 %__tmp13
  %__tmp15 = load i32, i32* %__tmp14, align 4
  %__tmp16 = add i32 %__tmp10, %__tmp15
  %__tmp17 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  %__tmp18 = sub i32 %__tmp17, 2
  %__tmp19 = sext i32 %__tmp18 to i64
  %__tmp20 = getelementptr inbounds [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196, i64 0, i64 %__tmp19
  %__tmp21 = load i32, i32* %__tmp20, align 4
  %__tmp22 = add i32 %__tmp16, %__tmp21
  store i32 %__tmp22, i32* %__tmp6, align 4
  %__tmp23 = load i32, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU_97538039, align 4
  %__tmp24 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  %__tmp25 = sext i32 %__tmp24 to i64
  %__tmp26 = getelementptr inbounds [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196, i64 0, i64 %__tmp25
  %__tmp27 = load i32, i32* %__tmp26, align 4
  %__tmp28 = add i32 %__tmp23, %__tmp27
  store i32 %__tmp28, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU_97538039, align 4
  %__tmp29 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  %__tmp30 = sext i32 %__tmp29 to i64
  %__tmp31 = getelementptr inbounds [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8G_69278196, i64 0, i64 %__tmp30
  %__tmp32 = load i32, i32* %__tmp31, align 4
  call void @putint(i32 %__tmp32)
  call void @putch(i32 10)
  %__tmp33 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  %__tmp34 = add i32 %__tmp33, 1
  store i32 %__tmp34, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_ev_11081019, align 4
  br label %bb0
bb2:
  %__tmp35 = load i32, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU_97538039, align 4
  ret i32 %__tmp35
}

