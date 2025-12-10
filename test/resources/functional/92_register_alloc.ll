; ModuleID = 'module'
source_filename = "module"

declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(i32*)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)
@a1 = global i32 1, align 4
@a2 = global i32 2, align 4
@a3 = global i32 3, align 4
@a4 = global i32 4, align 4
@a5 = global i32 5, align 4
@a6 = global i32 6, align 4
@a7 = global i32 7, align 4
@a8 = global i32 8, align 4
@a9 = global i32 9, align 4
@a10 = global i32 10, align 4
@a11 = global i32 11, align 4
@a12 = global i32 12, align 4
@a13 = global i32 13, align 4
@a14 = global i32 14, align 4
@a15 = global i32 15, align 4
@a16 = global i32 16, align 4
@a17 = global i32 1, align 4
@a18 = global i32 2, align 4
@a19 = global i32 3, align 4
@a20 = global i32 4, align 4
@a21 = global i32 5, align 4
@a22 = global i32 6, align 4
@a23 = global i32 7, align 4
@a24 = global i32 8, align 4
@a25 = global i32 9, align 4
@a26 = global i32 10, align 4
@a27 = global i32 11, align 4
@a28 = global i32 12, align 4
@a29 = global i32 13, align 4
@a30 = global i32 14, align 4
@a31 = global i32 15, align 4
@a32 = global i32 16, align 4

define i32 @func(i32 %a, i32 %b) {
funcEntry:
  %a_arg = alloca i32, align 4
  store i32 %a, i32* %a_arg, align 4
  %b_arg = alloca i32, align 4
  store i32 %b, i32* %b_arg, align 4
  %i = alloca i32, align 4
  %__tmp0 = load i32, i32* %a_arg, align 4
  %__tmp1 = load i32, i32* %b_arg, align 4
  %__tmp2 = add i32 %__tmp0, %__tmp1
  store i32 %__tmp2, i32* %i, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c3 = alloca i32, align 4
  %c4 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %d3 = alloca i32, align 4
  %d4 = alloca i32, align 4
  %e1 = alloca i32, align 4
  %e2 = alloca i32, align 4
  %e3 = alloca i32, align 4
  %e4 = alloca i32, align 4
  %f1 = alloca i32, align 4
  %f2 = alloca i32, align 4
  %f3 = alloca i32, align 4
  %f4 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %g3 = alloca i32, align 4
  %g4 = alloca i32, align 4
  %h1 = alloca i32, align 4
  %h2 = alloca i32, align 4
  %h3 = alloca i32, align 4
  %h4 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %k4 = alloca i32, align 4
  %__tmp3 = call i32 @getint()
  store i32 %__tmp3, i32* %c1, align 4
  %__tmp4 = call i32 @getint()
  store i32 %__tmp4, i32* %c2, align 4
  %__tmp5 = call i32 @getint()
  store i32 %__tmp5, i32* %c3, align 4
  %__tmp6 = call i32 @getint()
  store i32 %__tmp6, i32* %c4, align 4
  %__tmp7 = load i32, i32* %c1, align 4
  %__tmp8 = add i32 1, %__tmp7
  %__tmp9 = load i32, i32* @a1, align 4
  %__tmp10 = add i32 %__tmp8, %__tmp9
  store i32 %__tmp10, i32* %d1, align 4
  %__tmp11 = load i32, i32* %c2, align 4
  %__tmp12 = add i32 2, %__tmp11
  %__tmp13 = load i32, i32* @a2, align 4
  %__tmp14 = add i32 %__tmp12, %__tmp13
  store i32 %__tmp14, i32* %d2, align 4
  %__tmp15 = load i32, i32* %c3, align 4
  %__tmp16 = add i32 3, %__tmp15
  %__tmp17 = load i32, i32* @a3, align 4
  %__tmp18 = add i32 %__tmp16, %__tmp17
  store i32 %__tmp18, i32* %d3, align 4
  %__tmp19 = load i32, i32* %c4, align 4
  %__tmp20 = add i32 4, %__tmp19
  %__tmp21 = load i32, i32* @a4, align 4
  %__tmp22 = add i32 %__tmp20, %__tmp21
  store i32 %__tmp22, i32* %d4, align 4
  %__tmp23 = load i32, i32* %d1, align 4
  %__tmp24 = add i32 1, %__tmp23
  %__tmp25 = load i32, i32* @a5, align 4
  %__tmp26 = add i32 %__tmp24, %__tmp25
  store i32 %__tmp26, i32* %e1, align 4
  %__tmp27 = load i32, i32* %d2, align 4
  %__tmp28 = add i32 2, %__tmp27
  %__tmp29 = load i32, i32* @a6, align 4
  %__tmp30 = add i32 %__tmp28, %__tmp29
  store i32 %__tmp30, i32* %e2, align 4
  %__tmp31 = load i32, i32* %d3, align 4
  %__tmp32 = add i32 3, %__tmp31
  %__tmp33 = load i32, i32* @a7, align 4
  %__tmp34 = add i32 %__tmp32, %__tmp33
  store i32 %__tmp34, i32* %e3, align 4
  %__tmp35 = load i32, i32* %d4, align 4
  %__tmp36 = add i32 4, %__tmp35
  %__tmp37 = load i32, i32* @a8, align 4
  %__tmp38 = add i32 %__tmp36, %__tmp37
  store i32 %__tmp38, i32* %e4, align 4
  %__tmp39 = load i32, i32* %e1, align 4
  %__tmp40 = add i32 1, %__tmp39
  %__tmp41 = load i32, i32* @a9, align 4
  %__tmp42 = add i32 %__tmp40, %__tmp41
  store i32 %__tmp42, i32* %f1, align 4
  %__tmp43 = load i32, i32* %e2, align 4
  %__tmp44 = add i32 2, %__tmp43
  %__tmp45 = load i32, i32* @a10, align 4
  %__tmp46 = add i32 %__tmp44, %__tmp45
  store i32 %__tmp46, i32* %f2, align 4
  %__tmp47 = load i32, i32* %e3, align 4
  %__tmp48 = add i32 3, %__tmp47
  %__tmp49 = load i32, i32* @a11, align 4
  %__tmp50 = add i32 %__tmp48, %__tmp49
  store i32 %__tmp50, i32* %f3, align 4
  %__tmp51 = load i32, i32* %e4, align 4
  %__tmp52 = add i32 4, %__tmp51
  %__tmp53 = load i32, i32* @a12, align 4
  %__tmp54 = add i32 %__tmp52, %__tmp53
  store i32 %__tmp54, i32* %f4, align 4
  %__tmp55 = load i32, i32* %f1, align 4
  %__tmp56 = add i32 1, %__tmp55
  %__tmp57 = load i32, i32* @a13, align 4
  %__tmp58 = add i32 %__tmp56, %__tmp57
  store i32 %__tmp58, i32* %g1, align 4
  %__tmp59 = load i32, i32* %f2, align 4
  %__tmp60 = add i32 2, %__tmp59
  %__tmp61 = load i32, i32* @a14, align 4
  %__tmp62 = add i32 %__tmp60, %__tmp61
  store i32 %__tmp62, i32* %g2, align 4
  %__tmp63 = load i32, i32* %f3, align 4
  %__tmp64 = add i32 3, %__tmp63
  %__tmp65 = load i32, i32* @a15, align 4
  %__tmp66 = add i32 %__tmp64, %__tmp65
  store i32 %__tmp66, i32* %g3, align 4
  %__tmp67 = load i32, i32* %f4, align 4
  %__tmp68 = add i32 4, %__tmp67
  %__tmp69 = load i32, i32* @a16, align 4
  %__tmp70 = add i32 %__tmp68, %__tmp69
  store i32 %__tmp70, i32* %g4, align 4
  %__tmp71 = load i32, i32* %g1, align 4
  %__tmp72 = add i32 1, %__tmp71
  %__tmp73 = load i32, i32* @a17, align 4
  %__tmp74 = add i32 %__tmp72, %__tmp73
  store i32 %__tmp74, i32* %h1, align 4
  %__tmp75 = load i32, i32* %g2, align 4
  %__tmp76 = add i32 2, %__tmp75
  %__tmp77 = load i32, i32* @a18, align 4
  %__tmp78 = add i32 %__tmp76, %__tmp77
  store i32 %__tmp78, i32* %h2, align 4
  %__tmp79 = load i32, i32* %g3, align 4
  %__tmp80 = add i32 3, %__tmp79
  %__tmp81 = load i32, i32* @a19, align 4
  %__tmp82 = add i32 %__tmp80, %__tmp81
  store i32 %__tmp82, i32* %h3, align 4
  %__tmp83 = load i32, i32* %g4, align 4
  %__tmp84 = add i32 4, %__tmp83
  %__tmp85 = load i32, i32* @a20, align 4
  %__tmp86 = add i32 %__tmp84, %__tmp85
  store i32 %__tmp86, i32* %h4, align 4
  %__tmp87 = load i32, i32* %h1, align 4
  %__tmp88 = add i32 1, %__tmp87
  %__tmp89 = load i32, i32* @a21, align 4
  %__tmp90 = add i32 %__tmp88, %__tmp89
  store i32 %__tmp90, i32* %i1, align 4
  %__tmp91 = load i32, i32* %h2, align 4
  %__tmp92 = add i32 2, %__tmp91
  %__tmp93 = load i32, i32* @a22, align 4
  %__tmp94 = add i32 %__tmp92, %__tmp93
  store i32 %__tmp94, i32* %i2, align 4
  %__tmp95 = load i32, i32* %h3, align 4
  %__tmp96 = add i32 3, %__tmp95
  %__tmp97 = load i32, i32* @a23, align 4
  %__tmp98 = add i32 %__tmp96, %__tmp97
  store i32 %__tmp98, i32* %i3, align 4
  %__tmp99 = load i32, i32* %h4, align 4
  %__tmp100 = add i32 4, %__tmp99
  %__tmp101 = load i32, i32* @a24, align 4
  %__tmp102 = add i32 %__tmp100, %__tmp101
  store i32 %__tmp102, i32* %i4, align 4
  %__tmp103 = load i32, i32* %i1, align 4
  %__tmp104 = add i32 1, %__tmp103
  %__tmp105 = load i32, i32* @a25, align 4
  %__tmp106 = add i32 %__tmp104, %__tmp105
  store i32 %__tmp106, i32* %j1, align 4
  %__tmp107 = load i32, i32* %i2, align 4
  %__tmp108 = add i32 2, %__tmp107
  %__tmp109 = load i32, i32* @a26, align 4
  %__tmp110 = add i32 %__tmp108, %__tmp109
  store i32 %__tmp110, i32* %j2, align 4
  %__tmp111 = load i32, i32* %i3, align 4
  %__tmp112 = add i32 3, %__tmp111
  %__tmp113 = load i32, i32* @a27, align 4
  %__tmp114 = add i32 %__tmp112, %__tmp113
  store i32 %__tmp114, i32* %j3, align 4
  %__tmp115 = load i32, i32* %i4, align 4
  %__tmp116 = add i32 4, %__tmp115
  %__tmp117 = load i32, i32* @a28, align 4
  %__tmp118 = add i32 %__tmp116, %__tmp117
  store i32 %__tmp118, i32* %j4, align 4
  %__tmp119 = load i32, i32* %j1, align 4
  %__tmp120 = add i32 1, %__tmp119
  %__tmp121 = load i32, i32* @a29, align 4
  %__tmp122 = add i32 %__tmp120, %__tmp121
  store i32 %__tmp122, i32* %k1, align 4
  %__tmp123 = load i32, i32* %j2, align 4
  %__tmp124 = add i32 2, %__tmp123
  %__tmp125 = load i32, i32* @a30, align 4
  %__tmp126 = add i32 %__tmp124, %__tmp125
  store i32 %__tmp126, i32* %k2, align 4
  %__tmp127 = load i32, i32* %j3, align 4
  %__tmp128 = add i32 3, %__tmp127
  %__tmp129 = load i32, i32* @a31, align 4
  %__tmp130 = add i32 %__tmp128, %__tmp129
  store i32 %__tmp130, i32* %k3, align 4
  %__tmp131 = load i32, i32* %j4, align 4
  %__tmp132 = add i32 4, %__tmp131
  %__tmp133 = load i32, i32* @a32, align 4
  %__tmp134 = add i32 %__tmp132, %__tmp133
  store i32 %__tmp134, i32* %k4, align 4
  %__tmp135 = load i32, i32* %a_arg, align 4
  %__tmp136 = load i32, i32* %b_arg, align 4
  %__tmp137 = sub i32 %__tmp135, %__tmp136
  %__tmp138 = add i32 %__tmp137, 10
  store i32 %__tmp138, i32* %i, align 4
  %__tmp139 = load i32, i32* %j1, align 4
  %__tmp140 = add i32 1, %__tmp139
  %__tmp141 = load i32, i32* @a29, align 4
  %__tmp142 = add i32 %__tmp140, %__tmp141
  store i32 %__tmp142, i32* %k1, align 4
  %__tmp143 = load i32, i32* %j2, align 4
  %__tmp144 = add i32 2, %__tmp143
  %__tmp145 = load i32, i32* @a30, align 4
  %__tmp146 = add i32 %__tmp144, %__tmp145
  store i32 %__tmp146, i32* %k2, align 4
  %__tmp147 = load i32, i32* %j3, align 4
  %__tmp148 = add i32 3, %__tmp147
  %__tmp149 = load i32, i32* @a31, align 4
  %__tmp150 = add i32 %__tmp148, %__tmp149
  store i32 %__tmp150, i32* %k3, align 4
  %__tmp151 = load i32, i32* %j4, align 4
  %__tmp152 = add i32 4, %__tmp151
  %__tmp153 = load i32, i32* @a32, align 4
  %__tmp154 = add i32 %__tmp152, %__tmp153
  store i32 %__tmp154, i32* %k4, align 4
  %__tmp155 = load i32, i32* %i1, align 4
  %__tmp156 = add i32 1, %__tmp155
  %__tmp157 = load i32, i32* @a25, align 4
  %__tmp158 = add i32 %__tmp156, %__tmp157
  store i32 %__tmp158, i32* %j1, align 4
  %__tmp159 = load i32, i32* %i2, align 4
  %__tmp160 = add i32 2, %__tmp159
  %__tmp161 = load i32, i32* @a26, align 4
  %__tmp162 = add i32 %__tmp160, %__tmp161
  store i32 %__tmp162, i32* %j2, align 4
  %__tmp163 = load i32, i32* %i3, align 4
  %__tmp164 = add i32 3, %__tmp163
  %__tmp165 = load i32, i32* @a27, align 4
  %__tmp166 = add i32 %__tmp164, %__tmp165
  store i32 %__tmp166, i32* %j3, align 4
  %__tmp167 = load i32, i32* %i4, align 4
  %__tmp168 = add i32 4, %__tmp167
  %__tmp169 = load i32, i32* @a28, align 4
  %__tmp170 = add i32 %__tmp168, %__tmp169
  store i32 %__tmp170, i32* %j4, align 4
  %__tmp171 = load i32, i32* %h1, align 4
  %__tmp172 = add i32 1, %__tmp171
  %__tmp173 = load i32, i32* @a21, align 4
  %__tmp174 = add i32 %__tmp172, %__tmp173
  store i32 %__tmp174, i32* %i1, align 4
  %__tmp175 = load i32, i32* %h2, align 4
  %__tmp176 = add i32 2, %__tmp175
  %__tmp177 = load i32, i32* @a22, align 4
  %__tmp178 = add i32 %__tmp176, %__tmp177
  store i32 %__tmp178, i32* %i2, align 4
  %__tmp179 = load i32, i32* %h3, align 4
  %__tmp180 = add i32 3, %__tmp179
  %__tmp181 = load i32, i32* @a23, align 4
  %__tmp182 = add i32 %__tmp180, %__tmp181
  store i32 %__tmp182, i32* %i3, align 4
  %__tmp183 = load i32, i32* %h4, align 4
  %__tmp184 = add i32 4, %__tmp183
  %__tmp185 = load i32, i32* @a24, align 4
  %__tmp186 = add i32 %__tmp184, %__tmp185
  store i32 %__tmp186, i32* %i4, align 4
  %__tmp187 = load i32, i32* %g1, align 4
  %__tmp188 = add i32 1, %__tmp187
  %__tmp189 = load i32, i32* @a17, align 4
  %__tmp190 = add i32 %__tmp188, %__tmp189
  store i32 %__tmp190, i32* %h1, align 4
  %__tmp191 = load i32, i32* %g2, align 4
  %__tmp192 = add i32 2, %__tmp191
  %__tmp193 = load i32, i32* @a18, align 4
  %__tmp194 = add i32 %__tmp192, %__tmp193
  store i32 %__tmp194, i32* %h2, align 4
  %__tmp195 = load i32, i32* %g3, align 4
  %__tmp196 = add i32 3, %__tmp195
  %__tmp197 = load i32, i32* @a19, align 4
  %__tmp198 = add i32 %__tmp196, %__tmp197
  store i32 %__tmp198, i32* %h3, align 4
  %__tmp199 = load i32, i32* %g4, align 4
  %__tmp200 = add i32 4, %__tmp199
  %__tmp201 = load i32, i32* @a20, align 4
  %__tmp202 = add i32 %__tmp200, %__tmp201
  store i32 %__tmp202, i32* %h4, align 4
  %__tmp203 = load i32, i32* %f1, align 4
  %__tmp204 = add i32 1, %__tmp203
  %__tmp205 = load i32, i32* @a13, align 4
  %__tmp206 = add i32 %__tmp204, %__tmp205
  store i32 %__tmp206, i32* %g1, align 4
  %__tmp207 = load i32, i32* %f2, align 4
  %__tmp208 = add i32 2, %__tmp207
  %__tmp209 = load i32, i32* @a14, align 4
  %__tmp210 = add i32 %__tmp208, %__tmp209
  store i32 %__tmp210, i32* %g2, align 4
  %__tmp211 = load i32, i32* %f3, align 4
  %__tmp212 = add i32 3, %__tmp211
  %__tmp213 = load i32, i32* @a15, align 4
  %__tmp214 = add i32 %__tmp212, %__tmp213
  store i32 %__tmp214, i32* %g3, align 4
  %__tmp215 = load i32, i32* %f4, align 4
  %__tmp216 = add i32 4, %__tmp215
  %__tmp217 = load i32, i32* @a16, align 4
  %__tmp218 = add i32 %__tmp216, %__tmp217
  store i32 %__tmp218, i32* %g4, align 4
  %__tmp219 = load i32, i32* %e1, align 4
  %__tmp220 = add i32 1, %__tmp219
  %__tmp221 = load i32, i32* @a9, align 4
  %__tmp222 = add i32 %__tmp220, %__tmp221
  store i32 %__tmp222, i32* %f1, align 4
  %__tmp223 = load i32, i32* %e2, align 4
  %__tmp224 = add i32 2, %__tmp223
  %__tmp225 = load i32, i32* @a10, align 4
  %__tmp226 = add i32 %__tmp224, %__tmp225
  store i32 %__tmp226, i32* %f2, align 4
  %__tmp227 = load i32, i32* %e3, align 4
  %__tmp228 = add i32 3, %__tmp227
  %__tmp229 = load i32, i32* @a11, align 4
  %__tmp230 = add i32 %__tmp228, %__tmp229
  store i32 %__tmp230, i32* %f3, align 4
  %__tmp231 = load i32, i32* %e4, align 4
  %__tmp232 = add i32 4, %__tmp231
  %__tmp233 = load i32, i32* @a12, align 4
  %__tmp234 = add i32 %__tmp232, %__tmp233
  store i32 %__tmp234, i32* %f4, align 4
  %__tmp235 = load i32, i32* %d1, align 4
  %__tmp236 = add i32 1, %__tmp235
  %__tmp237 = load i32, i32* @a5, align 4
  %__tmp238 = add i32 %__tmp236, %__tmp237
  store i32 %__tmp238, i32* %e1, align 4
  %__tmp239 = load i32, i32* %d2, align 4
  %__tmp240 = add i32 2, %__tmp239
  %__tmp241 = load i32, i32* @a6, align 4
  %__tmp242 = add i32 %__tmp240, %__tmp241
  store i32 %__tmp242, i32* %e2, align 4
  %__tmp243 = load i32, i32* %d3, align 4
  %__tmp244 = add i32 3, %__tmp243
  %__tmp245 = load i32, i32* @a7, align 4
  %__tmp246 = add i32 %__tmp244, %__tmp245
  store i32 %__tmp246, i32* %e3, align 4
  %__tmp247 = load i32, i32* %d4, align 4
  %__tmp248 = add i32 4, %__tmp247
  %__tmp249 = load i32, i32* @a8, align 4
  %__tmp250 = add i32 %__tmp248, %__tmp249
  store i32 %__tmp250, i32* %e4, align 4
  %__tmp251 = load i32, i32* %c1, align 4
  %__tmp252 = add i32 1, %__tmp251
  %__tmp253 = load i32, i32* @a1, align 4
  %__tmp254 = add i32 %__tmp252, %__tmp253
  store i32 %__tmp254, i32* %d1, align 4
  %__tmp255 = load i32, i32* %c2, align 4
  %__tmp256 = add i32 2, %__tmp255
  %__tmp257 = load i32, i32* @a2, align 4
  %__tmp258 = add i32 %__tmp256, %__tmp257
  store i32 %__tmp258, i32* %d2, align 4
  %__tmp259 = load i32, i32* %c3, align 4
  %__tmp260 = add i32 3, %__tmp259
  %__tmp261 = load i32, i32* @a3, align 4
  %__tmp262 = add i32 %__tmp260, %__tmp261
  store i32 %__tmp262, i32* %d3, align 4
  %__tmp263 = load i32, i32* %c4, align 4
  %__tmp264 = add i32 4, %__tmp263
  %__tmp265 = load i32, i32* @a4, align 4
  %__tmp266 = add i32 %__tmp264, %__tmp265
  store i32 %__tmp266, i32* %d4, align 4
  %__tmp267 = load i32, i32* %c1, align 4
  %__tmp268 = add i32 1, %__tmp267
  %__tmp269 = load i32, i32* @a1, align 4
  %__tmp270 = add i32 %__tmp268, %__tmp269
  store i32 %__tmp270, i32* %d1, align 4
  %__tmp271 = load i32, i32* %c2, align 4
  %__tmp272 = add i32 2, %__tmp271
  %__tmp273 = load i32, i32* @a2, align 4
  %__tmp274 = add i32 %__tmp272, %__tmp273
  store i32 %__tmp274, i32* %d2, align 4
  %__tmp275 = load i32, i32* %c3, align 4
  %__tmp276 = add i32 3, %__tmp275
  %__tmp277 = load i32, i32* @a3, align 4
  %__tmp278 = add i32 %__tmp276, %__tmp277
  store i32 %__tmp278, i32* %d3, align 4
  %__tmp279 = load i32, i32* %c4, align 4
  %__tmp280 = add i32 4, %__tmp279
  %__tmp281 = load i32, i32* @a4, align 4
  %__tmp282 = add i32 %__tmp280, %__tmp281
  store i32 %__tmp282, i32* %d4, align 4
  %__tmp283 = load i32, i32* %i, align 4
  %__tmp284 = load i32, i32* %c1, align 4
  %__tmp285 = add i32 %__tmp283, %__tmp284
  %__tmp286 = load i32, i32* %c2, align 4
  %__tmp287 = add i32 %__tmp285, %__tmp286
  %__tmp288 = load i32, i32* %c3, align 4
  %__tmp289 = add i32 %__tmp287, %__tmp288
  %__tmp290 = load i32, i32* %c4, align 4
  %__tmp291 = add i32 %__tmp289, %__tmp290
  %__tmp292 = load i32, i32* %d1, align 4
  %__tmp293 = sub i32 %__tmp291, %__tmp292
  %__tmp294 = load i32, i32* %d2, align 4
  %__tmp295 = sub i32 %__tmp293, %__tmp294
  %__tmp296 = load i32, i32* %d3, align 4
  %__tmp297 = sub i32 %__tmp295, %__tmp296
  %__tmp298 = load i32, i32* %d4, align 4
  %__tmp299 = sub i32 %__tmp297, %__tmp298
  %__tmp300 = load i32, i32* %e1, align 4
  %__tmp301 = add i32 %__tmp299, %__tmp300
  %__tmp302 = load i32, i32* %e2, align 4
  %__tmp303 = add i32 %__tmp301, %__tmp302
  %__tmp304 = load i32, i32* %e3, align 4
  %__tmp305 = add i32 %__tmp303, %__tmp304
  %__tmp306 = load i32, i32* %e4, align 4
  %__tmp307 = add i32 %__tmp305, %__tmp306
  %__tmp308 = load i32, i32* %f1, align 4
  %__tmp309 = sub i32 %__tmp307, %__tmp308
  %__tmp310 = load i32, i32* %f2, align 4
  %__tmp311 = sub i32 %__tmp309, %__tmp310
  %__tmp312 = load i32, i32* %f3, align 4
  %__tmp313 = sub i32 %__tmp311, %__tmp312
  %__tmp314 = load i32, i32* %f4, align 4
  %__tmp315 = sub i32 %__tmp313, %__tmp314
  %__tmp316 = load i32, i32* %g1, align 4
  %__tmp317 = add i32 %__tmp315, %__tmp316
  %__tmp318 = load i32, i32* %g2, align 4
  %__tmp319 = add i32 %__tmp317, %__tmp318
  %__tmp320 = load i32, i32* %g3, align 4
  %__tmp321 = add i32 %__tmp319, %__tmp320
  %__tmp322 = load i32, i32* %g4, align 4
  %__tmp323 = add i32 %__tmp321, %__tmp322
  %__tmp324 = load i32, i32* %h1, align 4
  %__tmp325 = sub i32 %__tmp323, %__tmp324
  %__tmp326 = load i32, i32* %h2, align 4
  %__tmp327 = sub i32 %__tmp325, %__tmp326
  %__tmp328 = load i32, i32* %h3, align 4
  %__tmp329 = sub i32 %__tmp327, %__tmp328
  %__tmp330 = load i32, i32* %h4, align 4
  %__tmp331 = sub i32 %__tmp329, %__tmp330
  %__tmp332 = load i32, i32* %i1, align 4
  %__tmp333 = add i32 %__tmp331, %__tmp332
  %__tmp334 = load i32, i32* %i2, align 4
  %__tmp335 = add i32 %__tmp333, %__tmp334
  %__tmp336 = load i32, i32* %i3, align 4
  %__tmp337 = add i32 %__tmp335, %__tmp336
  %__tmp338 = load i32, i32* %i4, align 4
  %__tmp339 = add i32 %__tmp337, %__tmp338
  %__tmp340 = load i32, i32* %j1, align 4
  %__tmp341 = sub i32 %__tmp339, %__tmp340
  %__tmp342 = load i32, i32* %j2, align 4
  %__tmp343 = sub i32 %__tmp341, %__tmp342
  %__tmp344 = load i32, i32* %j3, align 4
  %__tmp345 = sub i32 %__tmp343, %__tmp344
  %__tmp346 = load i32, i32* %j4, align 4
  %__tmp347 = sub i32 %__tmp345, %__tmp346
  %__tmp348 = load i32, i32* %k1, align 4
  %__tmp349 = add i32 %__tmp347, %__tmp348
  %__tmp350 = load i32, i32* %k2, align 4
  %__tmp351 = add i32 %__tmp349, %__tmp350
  %__tmp352 = load i32, i32* %k3, align 4
  %__tmp353 = add i32 %__tmp351, %__tmp352
  %__tmp354 = load i32, i32* %k4, align 4
  %__tmp355 = add i32 %__tmp353, %__tmp354
  %__tmp356 = load i32, i32* @a1, align 4
  %__tmp357 = add i32 %__tmp355, %__tmp356
  %__tmp358 = load i32, i32* @a2, align 4
  %__tmp359 = sub i32 %__tmp357, %__tmp358
  %__tmp360 = load i32, i32* @a3, align 4
  %__tmp361 = add i32 %__tmp359, %__tmp360
  %__tmp362 = load i32, i32* @a4, align 4
  %__tmp363 = sub i32 %__tmp361, %__tmp362
  %__tmp364 = load i32, i32* @a5, align 4
  %__tmp365 = add i32 %__tmp363, %__tmp364
  %__tmp366 = load i32, i32* @a6, align 4
  %__tmp367 = sub i32 %__tmp365, %__tmp366
  %__tmp368 = load i32, i32* @a7, align 4
  %__tmp369 = add i32 %__tmp367, %__tmp368
  %__tmp370 = load i32, i32* @a8, align 4
  %__tmp371 = sub i32 %__tmp369, %__tmp370
  %__tmp372 = load i32, i32* @a9, align 4
  %__tmp373 = add i32 %__tmp371, %__tmp372
  %__tmp374 = load i32, i32* @a10, align 4
  %__tmp375 = sub i32 %__tmp373, %__tmp374
  %__tmp376 = load i32, i32* @a11, align 4
  %__tmp377 = add i32 %__tmp375, %__tmp376
  %__tmp378 = load i32, i32* @a12, align 4
  %__tmp379 = sub i32 %__tmp377, %__tmp378
  %__tmp380 = load i32, i32* @a13, align 4
  %__tmp381 = add i32 %__tmp379, %__tmp380
  %__tmp382 = load i32, i32* @a14, align 4
  %__tmp383 = sub i32 %__tmp381, %__tmp382
  %__tmp384 = load i32, i32* @a15, align 4
  %__tmp385 = add i32 %__tmp383, %__tmp384
  %__tmp386 = load i32, i32* @a16, align 4
  %__tmp387 = sub i32 %__tmp385, %__tmp386
  %__tmp388 = load i32, i32* @a17, align 4
  %__tmp389 = add i32 %__tmp387, %__tmp388
  %__tmp390 = load i32, i32* @a18, align 4
  %__tmp391 = sub i32 %__tmp389, %__tmp390
  %__tmp392 = load i32, i32* @a19, align 4
  %__tmp393 = add i32 %__tmp391, %__tmp392
  %__tmp394 = load i32, i32* @a20, align 4
  %__tmp395 = sub i32 %__tmp393, %__tmp394
  %__tmp396 = load i32, i32* @a21, align 4
  %__tmp397 = add i32 %__tmp395, %__tmp396
  %__tmp398 = load i32, i32* @a22, align 4
  %__tmp399 = sub i32 %__tmp397, %__tmp398
  %__tmp400 = load i32, i32* @a23, align 4
  %__tmp401 = add i32 %__tmp399, %__tmp400
  %__tmp402 = load i32, i32* @a24, align 4
  %__tmp403 = sub i32 %__tmp401, %__tmp402
  %__tmp404 = load i32, i32* @a25, align 4
  %__tmp405 = add i32 %__tmp403, %__tmp404
  %__tmp406 = load i32, i32* @a26, align 4
  %__tmp407 = sub i32 %__tmp405, %__tmp406
  %__tmp408 = load i32, i32* @a27, align 4
  %__tmp409 = add i32 %__tmp407, %__tmp408
  %__tmp410 = load i32, i32* @a28, align 4
  %__tmp411 = sub i32 %__tmp409, %__tmp410
  %__tmp412 = load i32, i32* @a29, align 4
  %__tmp413 = add i32 %__tmp411, %__tmp412
  %__tmp414 = load i32, i32* @a30, align 4
  %__tmp415 = sub i32 %__tmp413, %__tmp414
  %__tmp416 = load i32, i32* @a31, align 4
  %__tmp417 = add i32 %__tmp415, %__tmp416
  %__tmp418 = load i32, i32* @a32, align 4
  %__tmp419 = sub i32 %__tmp417, %__tmp418
  ret i32 %__tmp419
}

define i32 @main() {
mainEntry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %__tmp0 = call i32 @getint()
  store i32 %__tmp0, i32* %a, align 4
  %__tmp1 = load i32, i32* %a, align 4
  %__tmp2 = add i32 %__tmp1, 18
  store i32 %__tmp2, i32* %b, align 4
  %__tmp3 = load i32, i32* %a, align 4
  %__tmp4 = load i32, i32* %b, align 4
  %__tmp5 = call i32 @func(i32 %__tmp3, i32 %__tmp4)
  store i32 %__tmp5, i32* %a, align 4
  %__tmp6 = load i32, i32* %a, align 4
  call void @putint(i32 %__tmp6)
  %__tmp7 = load i32, i32* %a, align 4
  ret i32 %__tmp7
}

