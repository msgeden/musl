
sha256-armv8-instrinsic.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <sha256_process_arm>:
   0:	fc1e0fea 	str	d10, [sp, #-32]!
   4:	6d0123e9 	stp	d9, d8, [sp, #16]
   8:	ad400400 	ldp	q0, q1, [x0]
   c:	7101005f 	cmp	w2, #0x40
  10:	540010c3 	b.cc	228 <sha256_process_arm+0x228>  // b.lo, b.ul, b.last
  14:	90000008 	adrp	x8, 0 <sha256_process_arm>
  18:	3dc00102 	ldr	q2, [x8]
  1c:	90000008 	adrp	x8, 0 <sha256_process_arm>
  20:	3dc00103 	ldr	q3, [x8]
  24:	90000008 	adrp	x8, 0 <sha256_process_arm>
  28:	3dc00104 	ldr	q4, [x8]
  2c:	90000008 	adrp	x8, 0 <sha256_process_arm>
  30:	3dc00105 	ldr	q5, [x8]
  34:	90000008 	adrp	x8, 0 <sha256_process_arm>
  38:	3dc00106 	ldr	q6, [x8]
  3c:	90000008 	adrp	x8, 0 <sha256_process_arm>
  40:	3dc00107 	ldr	q7, [x8]
  44:	90000008 	adrp	x8, 0 <sha256_process_arm>
  48:	3dc00110 	ldr	q16, [x8]
  4c:	90000008 	adrp	x8, 0 <sha256_process_arm>
  50:	3dc00111 	ldr	q17, [x8]
  54:	90000008 	adrp	x8, 0 <sha256_process_arm>
  58:	3dc00112 	ldr	q18, [x8]
  5c:	90000008 	adrp	x8, 0 <sha256_process_arm>
  60:	3dc00113 	ldr	q19, [x8]
  64:	90000008 	adrp	x8, 0 <sha256_process_arm>
  68:	3dc00114 	ldr	q20, [x8]
  6c:	90000008 	adrp	x8, 0 <sha256_process_arm>
  70:	3dc00115 	ldr	q21, [x8]
  74:	90000008 	adrp	x8, 0 <sha256_process_arm>
  78:	3dc00116 	ldr	q22, [x8]
  7c:	90000008 	adrp	x8, 0 <sha256_process_arm>
  80:	3dc00117 	ldr	q23, [x8]
  84:	90000008 	adrp	x8, 0 <sha256_process_arm>
  88:	3dc00118 	ldr	q24, [x8]
  8c:	90000008 	adrp	x8, 0 <sha256_process_arm>
  90:	3dc00119 	ldr	q25, [x8]
  94:	ad40703b 	ldp	q27, q28, [x1]
  98:	ad41783d 	ldp	q29, q30, [x1, #32]
  9c:	4ea01c1f 	mov	v31.16b, v0.16b
  a0:	4ea11c3a 	mov	v26.16b, v1.16b
  a4:	6e200b7b 	rev32	v27.16b, v27.16b
  a8:	4ea28768 	add	v8.4s, v27.4s, v2.4s
  ac:	6e200b9c 	rev32	v28.16b, v28.16b
  b0:	5e08403f 	sha256h	q31, q1, v8.4s
  b4:	4ea38789 	add	v9.4s, v28.4s, v3.4s
  b8:	5e08501a 	sha256h2	q26, q0, v8.4s
  bc:	4ebf1fe8 	mov	v8.16b, v31.16b
  c0:	6e200bbd 	rev32	v29.16b, v29.16b
  c4:	5e094348 	sha256h	q8, q26, v9.4s
  c8:	4ea487aa 	add	v10.4s, v29.4s, v4.4s
  cc:	5e0953fa 	sha256h2	q26, q31, v9.4s
  d0:	4ea81d09 	mov	v9.16b, v8.16b
  d4:	6e200bde 	rev32	v30.16b, v30.16b
  d8:	5e0a4349 	sha256h	q9, q26, v10.4s
  dc:	5e282b9b 	sha256su0	v27.4s, v28.4s
  e0:	4ea587df 	add	v31.4s, v30.4s, v5.4s
  e4:	5e0a511a 	sha256h2	q26, q8, v10.4s
  e8:	4ea91d2a 	mov	v10.16b, v9.16b
  ec:	5e1e63bb 	sha256su1	v27.4s, v29.4s, v30.4s
  f0:	5e1f434a 	sha256h	q10, q26, v31.4s
  f4:	5e282bbc 	sha256su0	v28.4s, v29.4s
  f8:	4ea68768 	add	v8.4s, v27.4s, v6.4s
  fc:	5e1f513a 	sha256h2	q26, q9, v31.4s
 100:	4eaa1d49 	mov	v9.16b, v10.16b
 104:	5e1b63dc 	sha256su1	v28.4s, v30.4s, v27.4s
 108:	5e084349 	sha256h	q9, q26, v8.4s
 10c:	5e282bdd 	sha256su0	v29.4s, v30.4s
 110:	4ea7879f 	add	v31.4s, v28.4s, v7.4s
 114:	5e08515a 	sha256h2	q26, q10, v8.4s
 118:	4ea91d2a 	mov	v10.16b, v9.16b
 11c:	5e282b7e 	sha256su0	v30.4s, v27.4s
 120:	5e1c637d 	sha256su1	v29.4s, v27.4s, v28.4s
 124:	5e1f434a 	sha256h	q10, q26, v31.4s
 128:	5e282b9b 	sha256su0	v27.4s, v28.4s
 12c:	5e1d639e 	sha256su1	v30.4s, v28.4s, v29.4s
 130:	4eb087a8 	add	v8.4s, v29.4s, v16.4s
 134:	5e1f513a 	sha256h2	q26, q9, v31.4s
 138:	4eaa1d49 	mov	v9.16b, v10.16b
 13c:	5e282bbc 	sha256su0	v28.4s, v29.4s
 140:	5e1e63bb 	sha256su1	v27.4s, v29.4s, v30.4s
 144:	5e084349 	sha256h	q9, q26, v8.4s
 148:	5e282bdd 	sha256su0	v29.4s, v30.4s
 14c:	4eb187df 	add	v31.4s, v30.4s, v17.4s
 150:	5e1b63dc 	sha256su1	v28.4s, v30.4s, v27.4s
 154:	5e08515a 	sha256h2	q26, q10, v8.4s
 158:	4ea91d2a 	mov	v10.16b, v9.16b
 15c:	5e282b7e 	sha256su0	v30.4s, v27.4s
 160:	5e1c637d 	sha256su1	v29.4s, v27.4s, v28.4s
 164:	5e1f434a 	sha256h	q10, q26, v31.4s
 168:	4eb28768 	add	v8.4s, v27.4s, v18.4s
 16c:	5e282b9b 	sha256su0	v27.4s, v28.4s
 170:	5e1f513a 	sha256h2	q26, q9, v31.4s
 174:	5e1d639e 	sha256su1	v30.4s, v28.4s, v29.4s
 178:	4eaa1d49 	mov	v9.16b, v10.16b
 17c:	4eb3879f 	add	v31.4s, v28.4s, v19.4s
 180:	5e282bbc 	sha256su0	v28.4s, v29.4s
 184:	5e084349 	sha256h	q9, q26, v8.4s
 188:	5e1e63bb 	sha256su1	v27.4s, v29.4s, v30.4s
 18c:	5e08515a 	sha256h2	q26, q10, v8.4s
 190:	4eb487a8 	add	v8.4s, v29.4s, v20.4s
 194:	5e282bdd 	sha256su0	v29.4s, v30.4s
 198:	4ea91d2a 	mov	v10.16b, v9.16b
 19c:	5e1b63dc 	sha256su1	v28.4s, v30.4s, v27.4s
 1a0:	5e1f434a 	sha256h	q10, q26, v31.4s
 1a4:	5e1f513a 	sha256h2	q26, q9, v31.4s
 1a8:	4eb587df 	add	v31.4s, v30.4s, v21.4s
 1ac:	5e282b7e 	sha256su0	v30.4s, v27.4s
 1b0:	5e1c637d 	sha256su1	v29.4s, v27.4s, v28.4s
 1b4:	5e1d639e 	sha256su1	v30.4s, v28.4s, v29.4s
 1b8:	4eb68769 	add	v9.4s, v27.4s, v22.4s
 1bc:	4eb7879b 	add	v27.4s, v28.4s, v23.4s
 1c0:	4eb887bc 	add	v28.4s, v29.4s, v24.4s
 1c4:	4eb987dd 	add	v29.4s, v30.4s, v25.4s
 1c8:	4eaa1d5e 	mov	v30.16b, v10.16b
 1cc:	5e08435e 	sha256h	q30, q26, v8.4s
 1d0:	5e08515a 	sha256h2	q26, q10, v8.4s
 1d4:	4ebe1fc8 	mov	v8.16b, v30.16b
 1d8:	5e1f4348 	sha256h	q8, q26, v31.4s
 1dc:	5e1f53da 	sha256h2	q26, q30, v31.4s
 1e0:	4ea81d1e 	mov	v30.16b, v8.16b
 1e4:	5e09435e 	sha256h	q30, q26, v9.4s
 1e8:	5e09511a 	sha256h2	q26, q8, v9.4s
 1ec:	4ebe1fdf 	mov	v31.16b, v30.16b
 1f0:	5e1b435f 	sha256h	q31, q26, v27.4s
 1f4:	5e1b53da 	sha256h2	q26, q30, v27.4s
 1f8:	4ebf1ffb 	mov	v27.16b, v31.16b
 1fc:	5e1c435b 	sha256h	q27, q26, v28.4s
 200:	5e1c53fa 	sha256h2	q26, q31, v28.4s
 204:	4ebb1f7c 	mov	v28.16b, v27.16b
 208:	51010042 	sub	w2, w2, #0x40
 20c:	5e1d435c 	sha256h	q28, q26, v29.4s
 210:	5e1d537a 	sha256h2	q26, q27, v29.4s
 214:	7100fc5f 	cmp	w2, #0x3f
 218:	4ea08780 	add	v0.4s, v28.4s, v0.4s
 21c:	4ea18741 	add	v1.4s, v26.4s, v1.4s
 220:	91010021 	add	x1, x1, #0x40
 224:	54fff388 	b.hi	94 <sha256_process_arm+0x94>  // b.pmore
 228:	ad000400 	stp	q0, q1, [x0]
 22c:	6d4123e9 	ldp	d9, d8, [sp, #16]
 230:	fc4207ea 	ldr	d10, [sp], #32
 234:	d65f03c0 	ret

0000000000000238 <__register_mac>:
 238:	fc1e0fea 	str	d10, [sp, #-32]!
 23c:	7101003f 	cmp	w1, #0x40
 240:	90000008 	adrp	x8, 0 <sha256_process_arm>
 244:	6d0123e9 	stp	d9, d8, [sp, #16]
 248:	54001143 	b.cc	470 <__register_mac+0x238>  // b.lo, b.ul, b.last
 24c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 250:	3dc00100 	ldr	q0, [x8]
 254:	90000008 	adrp	x8, 0 <sha256_process_arm>
 258:	3dc00121 	ldr	q1, [x9]
 25c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 260:	3dc00102 	ldr	q2, [x8]
 264:	90000008 	adrp	x8, 0 <sha256_process_arm>
 268:	3dc00123 	ldr	q3, [x9]
 26c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 270:	3dc00104 	ldr	q4, [x8]
 274:	90000008 	adrp	x8, 0 <sha256_process_arm>
 278:	3dc00125 	ldr	q5, [x9]
 27c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 280:	3dc00106 	ldr	q6, [x8]
 284:	90000008 	adrp	x8, 0 <sha256_process_arm>
 288:	3dc00127 	ldr	q7, [x9]
 28c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 290:	3dc00110 	ldr	q16, [x8]
 294:	90000008 	adrp	x8, 0 <sha256_process_arm>
 298:	3dc00131 	ldr	q17, [x9]
 29c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 2a0:	3dc00112 	ldr	q18, [x8]
 2a4:	90000008 	adrp	x8, 0 <sha256_process_arm>
 2a8:	3dc00133 	ldr	q19, [x9]
 2ac:	90000009 	adrp	x9, 0 <sha256_process_arm>
 2b0:	3dc00114 	ldr	q20, [x8]
 2b4:	90000008 	adrp	x8, 0 <sha256_process_arm>
 2b8:	3dc00135 	ldr	q21, [x9]
 2bc:	90000009 	adrp	x9, 0 <sha256_process_arm>
 2c0:	3dc00116 	ldr	q22, [x8]
 2c4:	90000008 	adrp	x8, 0 <sha256_process_arm>
 2c8:	3dc00137 	ldr	q23, [x9]
 2cc:	90000009 	adrp	x9, 0 <sha256_process_arm>
 2d0:	3dc00118 	ldr	q24, [x8]
 2d4:	3dc00139 	ldr	q25, [x9]
 2d8:	ad40701b 	ldp	q27, q28, [x0]
 2dc:	ad41781d 	ldp	q29, q30, [x0, #32]
 2e0:	4ea01c1f 	mov	v31.16b, v0.16b
 2e4:	4ea11c3a 	mov	v26.16b, v1.16b
 2e8:	6e200b7b 	rev32	v27.16b, v27.16b
 2ec:	4ea28768 	add	v8.4s, v27.4s, v2.4s
 2f0:	6e200b9c 	rev32	v28.16b, v28.16b
 2f4:	5e08403f 	sha256h	q31, q1, v8.4s
 2f8:	4ea38789 	add	v9.4s, v28.4s, v3.4s
 2fc:	5e08501a 	sha256h2	q26, q0, v8.4s
 300:	4ebf1fe8 	mov	v8.16b, v31.16b
 304:	6e200bbd 	rev32	v29.16b, v29.16b
 308:	5e094348 	sha256h	q8, q26, v9.4s
 30c:	4ea487aa 	add	v10.4s, v29.4s, v4.4s
 310:	5e0953fa 	sha256h2	q26, q31, v9.4s
 314:	4ea81d09 	mov	v9.16b, v8.16b
 318:	6e200bde 	rev32	v30.16b, v30.16b
 31c:	5e0a4349 	sha256h	q9, q26, v10.4s
 320:	5e282b9b 	sha256su0	v27.4s, v28.4s
 324:	4ea587df 	add	v31.4s, v30.4s, v5.4s
 328:	5e0a511a 	sha256h2	q26, q8, v10.4s
 32c:	4ea91d2a 	mov	v10.16b, v9.16b
 330:	5e1e63bb 	sha256su1	v27.4s, v29.4s, v30.4s
 334:	5e1f434a 	sha256h	q10, q26, v31.4s
 338:	5e282bbc 	sha256su0	v28.4s, v29.4s
 33c:	4ea68768 	add	v8.4s, v27.4s, v6.4s
 340:	5e1f513a 	sha256h2	q26, q9, v31.4s
 344:	4eaa1d49 	mov	v9.16b, v10.16b
 348:	5e1b63dc 	sha256su1	v28.4s, v30.4s, v27.4s
 34c:	5e084349 	sha256h	q9, q26, v8.4s
 350:	5e282bdd 	sha256su0	v29.4s, v30.4s
 354:	4ea7879f 	add	v31.4s, v28.4s, v7.4s
 358:	5e08515a 	sha256h2	q26, q10, v8.4s
 35c:	4ea91d2a 	mov	v10.16b, v9.16b
 360:	5e282b7e 	sha256su0	v30.4s, v27.4s
 364:	5e1c637d 	sha256su1	v29.4s, v27.4s, v28.4s
 368:	5e1f434a 	sha256h	q10, q26, v31.4s
 36c:	5e282b9b 	sha256su0	v27.4s, v28.4s
 370:	5e1d639e 	sha256su1	v30.4s, v28.4s, v29.4s
 374:	4eb087a8 	add	v8.4s, v29.4s, v16.4s
 378:	5e1f513a 	sha256h2	q26, q9, v31.4s
 37c:	4eaa1d49 	mov	v9.16b, v10.16b
 380:	5e282bbc 	sha256su0	v28.4s, v29.4s
 384:	5e1e63bb 	sha256su1	v27.4s, v29.4s, v30.4s
 388:	5e084349 	sha256h	q9, q26, v8.4s
 38c:	5e282bdd 	sha256su0	v29.4s, v30.4s
 390:	4eb187df 	add	v31.4s, v30.4s, v17.4s
 394:	5e1b63dc 	sha256su1	v28.4s, v30.4s, v27.4s
 398:	5e08515a 	sha256h2	q26, q10, v8.4s
 39c:	4ea91d2a 	mov	v10.16b, v9.16b
 3a0:	5e282b7e 	sha256su0	v30.4s, v27.4s
 3a4:	5e1c637d 	sha256su1	v29.4s, v27.4s, v28.4s
 3a8:	5e1f434a 	sha256h	q10, q26, v31.4s
 3ac:	4eb28768 	add	v8.4s, v27.4s, v18.4s
 3b0:	5e282b9b 	sha256su0	v27.4s, v28.4s
 3b4:	5e1f513a 	sha256h2	q26, q9, v31.4s
 3b8:	5e1d639e 	sha256su1	v30.4s, v28.4s, v29.4s
 3bc:	4eaa1d49 	mov	v9.16b, v10.16b
 3c0:	4eb3879f 	add	v31.4s, v28.4s, v19.4s
 3c4:	5e282bbc 	sha256su0	v28.4s, v29.4s
 3c8:	5e084349 	sha256h	q9, q26, v8.4s
 3cc:	5e1e63bb 	sha256su1	v27.4s, v29.4s, v30.4s
 3d0:	5e08515a 	sha256h2	q26, q10, v8.4s
 3d4:	4eb487a8 	add	v8.4s, v29.4s, v20.4s
 3d8:	5e282bdd 	sha256su0	v29.4s, v30.4s
 3dc:	4ea91d2a 	mov	v10.16b, v9.16b
 3e0:	5e1b63dc 	sha256su1	v28.4s, v30.4s, v27.4s
 3e4:	5e1f434a 	sha256h	q10, q26, v31.4s
 3e8:	5e1f513a 	sha256h2	q26, q9, v31.4s
 3ec:	4eb587df 	add	v31.4s, v30.4s, v21.4s
 3f0:	5e282b7e 	sha256su0	v30.4s, v27.4s
 3f4:	5e1c637d 	sha256su1	v29.4s, v27.4s, v28.4s
 3f8:	5e1d639e 	sha256su1	v30.4s, v28.4s, v29.4s
 3fc:	4eb68769 	add	v9.4s, v27.4s, v22.4s
 400:	4eb7879b 	add	v27.4s, v28.4s, v23.4s
 404:	4eb887bc 	add	v28.4s, v29.4s, v24.4s
 408:	4eb987dd 	add	v29.4s, v30.4s, v25.4s
 40c:	4eaa1d5e 	mov	v30.16b, v10.16b
 410:	5e08435e 	sha256h	q30, q26, v8.4s
 414:	5e08515a 	sha256h2	q26, q10, v8.4s
 418:	4ebe1fc8 	mov	v8.16b, v30.16b
 41c:	5e1f4348 	sha256h	q8, q26, v31.4s
 420:	5e1f53da 	sha256h2	q26, q30, v31.4s
 424:	4ea81d1e 	mov	v30.16b, v8.16b
 428:	5e09435e 	sha256h	q30, q26, v9.4s
 42c:	5e09511a 	sha256h2	q26, q8, v9.4s
 430:	4ebe1fdf 	mov	v31.16b, v30.16b
 434:	5e1b435f 	sha256h	q31, q26, v27.4s
 438:	5e1b53da 	sha256h2	q26, q30, v27.4s
 43c:	4ebf1ffb 	mov	v27.16b, v31.16b
 440:	5e1c435b 	sha256h	q27, q26, v28.4s
 444:	5e1c53fa 	sha256h2	q26, q31, v28.4s
 448:	4ebb1f7c 	mov	v28.16b, v27.16b
 44c:	51010021 	sub	w1, w1, #0x40
 450:	5e1d435c 	sha256h	q28, q26, v29.4s
 454:	5e1d537a 	sha256h2	q26, q27, v29.4s
 458:	7100fc3f 	cmp	w1, #0x3f
 45c:	4ea08780 	add	v0.4s, v28.4s, v0.4s
 460:	4ea18741 	add	v1.4s, v26.4s, v1.4s
 464:	91010000 	add	x0, x0, #0x40
 468:	54fff388 	b.hi	2d8 <__register_mac+0xa0>  // b.pmore
 46c:	14000002 	b	474 <__register_mac+0x23c>
 470:	3dc00100 	ldr	q0, [x8]
 474:	1e260008 	fmov	w8, s0
 478:	0e0c3c0a 	mov	w10, v0.s[1]
 47c:	53081d0b 	lsl	w11, w8, #24
 480:	53187d09 	lsr	w9, w8, #24
 484:	b3481d4b 	bfi	x11, x10, #56, #8
 488:	53185d0c 	lsl	w12, w8, #8
 48c:	53187d4d 	lsr	w13, w10, #24
 490:	aa090169 	orr	x9, x11, x9
 494:	53087d08 	lsr	w8, w8, #8
 498:	12101d8c 	and	w12, w12, #0xff0000
 49c:	b3601da9 	bfi	x9, x13, #32, #8
 4a0:	12181d08 	and	w8, w8, #0xff00
 4a4:	aa0c0129 	orr	x9, x9, x12
 4a8:	6d4123e9 	ldp	d9, d8, [sp, #16]
 4ac:	53083d4e 	ubfx	w14, w10, #8, #8
 4b0:	aa080128 	orr	x8, x9, x8
 4b4:	53105d4f 	ubfx	w15, w10, #16, #8
 4b8:	b3501dc8 	bfi	x8, x14, #48, #8
 4bc:	aa0fa100 	orr	x0, x8, x15, lsl #40
 4c0:	fc4207ea 	ldr	d10, [sp], #32
 4c4:	d65f03c0 	ret

00000000000004c8 <__register_check>:
 4c8:	fc1e0fea 	str	d10, [sp, #-32]!
 4cc:	7101003f 	cmp	w1, #0x40
 4d0:	90000008 	adrp	x8, 0 <sha256_process_arm>
 4d4:	6d0123e9 	stp	d9, d8, [sp, #16]
 4d8:	54001143 	b.cc	700 <__register_check+0x238>  // b.lo, b.ul, b.last
 4dc:	90000009 	adrp	x9, 0 <sha256_process_arm>
 4e0:	3dc00100 	ldr	q0, [x8]
 4e4:	90000008 	adrp	x8, 0 <sha256_process_arm>
 4e8:	3dc00121 	ldr	q1, [x9]
 4ec:	90000009 	adrp	x9, 0 <sha256_process_arm>
 4f0:	3dc00102 	ldr	q2, [x8]
 4f4:	90000008 	adrp	x8, 0 <sha256_process_arm>
 4f8:	3dc00123 	ldr	q3, [x9]
 4fc:	90000009 	adrp	x9, 0 <sha256_process_arm>
 500:	3dc00104 	ldr	q4, [x8]
 504:	90000008 	adrp	x8, 0 <sha256_process_arm>
 508:	3dc00125 	ldr	q5, [x9]
 50c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 510:	3dc00106 	ldr	q6, [x8]
 514:	90000008 	adrp	x8, 0 <sha256_process_arm>
 518:	3dc00127 	ldr	q7, [x9]
 51c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 520:	3dc00110 	ldr	q16, [x8]
 524:	90000008 	adrp	x8, 0 <sha256_process_arm>
 528:	3dc00131 	ldr	q17, [x9]
 52c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 530:	3dc00112 	ldr	q18, [x8]
 534:	90000008 	adrp	x8, 0 <sha256_process_arm>
 538:	3dc00133 	ldr	q19, [x9]
 53c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 540:	3dc00114 	ldr	q20, [x8]
 544:	90000008 	adrp	x8, 0 <sha256_process_arm>
 548:	3dc00135 	ldr	q21, [x9]
 54c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 550:	3dc00116 	ldr	q22, [x8]
 554:	90000008 	adrp	x8, 0 <sha256_process_arm>
 558:	3dc00137 	ldr	q23, [x9]
 55c:	90000009 	adrp	x9, 0 <sha256_process_arm>
 560:	3dc00118 	ldr	q24, [x8]
 564:	3dc00139 	ldr	q25, [x9]
 568:	ad40701b 	ldp	q27, q28, [x0]
 56c:	ad41781d 	ldp	q29, q30, [x0, #32]
 570:	4ea01c1f 	mov	v31.16b, v0.16b
 574:	4ea11c3a 	mov	v26.16b, v1.16b
 578:	6e200b7b 	rev32	v27.16b, v27.16b
 57c:	4ea28768 	add	v8.4s, v27.4s, v2.4s
 580:	6e200b9c 	rev32	v28.16b, v28.16b
 584:	5e08403f 	sha256h	q31, q1, v8.4s
 588:	4ea38789 	add	v9.4s, v28.4s, v3.4s
 58c:	5e08501a 	sha256h2	q26, q0, v8.4s
 590:	4ebf1fe8 	mov	v8.16b, v31.16b
 594:	6e200bbd 	rev32	v29.16b, v29.16b
 598:	5e094348 	sha256h	q8, q26, v9.4s
 59c:	4ea487aa 	add	v10.4s, v29.4s, v4.4s
 5a0:	5e0953fa 	sha256h2	q26, q31, v9.4s
 5a4:	4ea81d09 	mov	v9.16b, v8.16b
 5a8:	6e200bde 	rev32	v30.16b, v30.16b
 5ac:	5e0a4349 	sha256h	q9, q26, v10.4s
 5b0:	5e282b9b 	sha256su0	v27.4s, v28.4s
 5b4:	4ea587df 	add	v31.4s, v30.4s, v5.4s
 5b8:	5e0a511a 	sha256h2	q26, q8, v10.4s
 5bc:	4ea91d2a 	mov	v10.16b, v9.16b
 5c0:	5e1e63bb 	sha256su1	v27.4s, v29.4s, v30.4s
 5c4:	5e1f434a 	sha256h	q10, q26, v31.4s
 5c8:	5e282bbc 	sha256su0	v28.4s, v29.4s
 5cc:	4ea68768 	add	v8.4s, v27.4s, v6.4s
 5d0:	5e1f513a 	sha256h2	q26, q9, v31.4s
 5d4:	4eaa1d49 	mov	v9.16b, v10.16b
 5d8:	5e1b63dc 	sha256su1	v28.4s, v30.4s, v27.4s
 5dc:	5e084349 	sha256h	q9, q26, v8.4s
 5e0:	5e282bdd 	sha256su0	v29.4s, v30.4s
 5e4:	4ea7879f 	add	v31.4s, v28.4s, v7.4s
 5e8:	5e08515a 	sha256h2	q26, q10, v8.4s
 5ec:	4ea91d2a 	mov	v10.16b, v9.16b
 5f0:	5e282b7e 	sha256su0	v30.4s, v27.4s
 5f4:	5e1c637d 	sha256su1	v29.4s, v27.4s, v28.4s
 5f8:	5e1f434a 	sha256h	q10, q26, v31.4s
 5fc:	5e282b9b 	sha256su0	v27.4s, v28.4s
 600:	5e1d639e 	sha256su1	v30.4s, v28.4s, v29.4s
 604:	4eb087a8 	add	v8.4s, v29.4s, v16.4s
 608:	5e1f513a 	sha256h2	q26, q9, v31.4s
 60c:	4eaa1d49 	mov	v9.16b, v10.16b
 610:	5e282bbc 	sha256su0	v28.4s, v29.4s
 614:	5e1e63bb 	sha256su1	v27.4s, v29.4s, v30.4s
 618:	5e084349 	sha256h	q9, q26, v8.4s
 61c:	5e282bdd 	sha256su0	v29.4s, v30.4s
 620:	4eb187df 	add	v31.4s, v30.4s, v17.4s
 624:	5e1b63dc 	sha256su1	v28.4s, v30.4s, v27.4s
 628:	5e08515a 	sha256h2	q26, q10, v8.4s
 62c:	4ea91d2a 	mov	v10.16b, v9.16b
 630:	5e282b7e 	sha256su0	v30.4s, v27.4s
 634:	5e1c637d 	sha256su1	v29.4s, v27.4s, v28.4s
 638:	5e1f434a 	sha256h	q10, q26, v31.4s
 63c:	4eb28768 	add	v8.4s, v27.4s, v18.4s
 640:	5e282b9b 	sha256su0	v27.4s, v28.4s
 644:	5e1f513a 	sha256h2	q26, q9, v31.4s
 648:	5e1d639e 	sha256su1	v30.4s, v28.4s, v29.4s
 64c:	4eaa1d49 	mov	v9.16b, v10.16b
 650:	4eb3879f 	add	v31.4s, v28.4s, v19.4s
 654:	5e282bbc 	sha256su0	v28.4s, v29.4s
 658:	5e084349 	sha256h	q9, q26, v8.4s
 65c:	5e1e63bb 	sha256su1	v27.4s, v29.4s, v30.4s
 660:	5e08515a 	sha256h2	q26, q10, v8.4s
 664:	4eb487a8 	add	v8.4s, v29.4s, v20.4s
 668:	5e282bdd 	sha256su0	v29.4s, v30.4s
 66c:	4ea91d2a 	mov	v10.16b, v9.16b
 670:	5e1b63dc 	sha256su1	v28.4s, v30.4s, v27.4s
 674:	5e1f434a 	sha256h	q10, q26, v31.4s
 678:	5e1f513a 	sha256h2	q26, q9, v31.4s
 67c:	4eb587df 	add	v31.4s, v30.4s, v21.4s
 680:	5e282b7e 	sha256su0	v30.4s, v27.4s
 684:	5e1c637d 	sha256su1	v29.4s, v27.4s, v28.4s
 688:	5e1d639e 	sha256su1	v30.4s, v28.4s, v29.4s
 68c:	4eb68769 	add	v9.4s, v27.4s, v22.4s
 690:	4eb7879b 	add	v27.4s, v28.4s, v23.4s
 694:	4eb887bc 	add	v28.4s, v29.4s, v24.4s
 698:	4eb987dd 	add	v29.4s, v30.4s, v25.4s
 69c:	4eaa1d5e 	mov	v30.16b, v10.16b
 6a0:	5e08435e 	sha256h	q30, q26, v8.4s
 6a4:	5e08515a 	sha256h2	q26, q10, v8.4s
 6a8:	4ebe1fc8 	mov	v8.16b, v30.16b
 6ac:	5e1f4348 	sha256h	q8, q26, v31.4s
 6b0:	5e1f53da 	sha256h2	q26, q30, v31.4s
 6b4:	4ea81d1e 	mov	v30.16b, v8.16b
 6b8:	5e09435e 	sha256h	q30, q26, v9.4s
 6bc:	5e09511a 	sha256h2	q26, q8, v9.4s
 6c0:	4ebe1fdf 	mov	v31.16b, v30.16b
 6c4:	5e1b435f 	sha256h	q31, q26, v27.4s
 6c8:	5e1b53da 	sha256h2	q26, q30, v27.4s
 6cc:	4ebf1ffb 	mov	v27.16b, v31.16b
 6d0:	5e1c435b 	sha256h	q27, q26, v28.4s
 6d4:	5e1c53fa 	sha256h2	q26, q31, v28.4s
 6d8:	4ebb1f7c 	mov	v28.16b, v27.16b
 6dc:	51010021 	sub	w1, w1, #0x40
 6e0:	5e1d435c 	sha256h	q28, q26, v29.4s
 6e4:	5e1d537a 	sha256h2	q26, q27, v29.4s
 6e8:	7100fc3f 	cmp	w1, #0x3f
 6ec:	4ea08780 	add	v0.4s, v28.4s, v0.4s
 6f0:	4ea18741 	add	v1.4s, v26.4s, v1.4s
 6f4:	91010000 	add	x0, x0, #0x40
 6f8:	54fff388 	b.hi	568 <__register_check+0xa0>  // b.pmore
 6fc:	14000002 	b	704 <__register_check+0x23c>
 700:	3dc00100 	ldr	q0, [x8]
 704:	1e260008 	fmov	w8, s0
 708:	0e0c3c0a 	mov	w10, v0.s[1]
 70c:	53081d0b 	lsl	w11, w8, #24
 710:	53187d09 	lsr	w9, w8, #24
 714:	b3481d4b 	bfi	x11, x10, #56, #8
 718:	53185d0c 	lsl	w12, w8, #8
 71c:	53187d4d 	lsr	w13, w10, #24
 720:	aa090169 	orr	x9, x11, x9
 724:	53087d08 	lsr	w8, w8, #8
 728:	12101d8c 	and	w12, w12, #0xff0000
 72c:	b3601da9 	bfi	x9, x13, #32, #8
 730:	12181d08 	and	w8, w8, #0xff00
 734:	aa0c0129 	orr	x9, x9, x12
 738:	53083d4e 	ubfx	w14, w10, #8, #8
 73c:	aa080128 	orr	x8, x9, x8
 740:	53105d4f 	ubfx	w15, w10, #16, #8
 744:	b3501dc8 	bfi	x8, x14, #48, #8
 748:	aa0fa108 	orr	x8, x8, x15, lsl #40
 74c:	eb02011f 	cmp	x8, x2
 750:	54000080 	b.eq	760 <__register_check+0x298>  // b.none
 754:	d2800e20 	mov	x0, #0x71                  	// #113
 758:	d2800ba8 	mov	x8, #0x5d                  	// #93
 75c:	d4000001 	svc	#0x0
 760:	6d4123e9 	ldp	d9, d8, [sp, #16]
 764:	fc4207ea 	ldr	d10, [sp], #32
 768:	d65f03c0 	ret

Disassembly of section .rodata.cst16:

0000000000000000 <.rodata.cst16>:
   0:	428a2f98 	.inst	0x428a2f98 ; undefined
   4:	71374491 	subs	w17, w4, #0xdd1
   8:	b5c0fbcf 	cbnz	x15, fffffffffff81f80 <__register_check+0xfffffffffff81ab8>
   c:	e9b5dba5 	.inst	0xe9b5dba5 ; undefined
  10:	3956c25b 	ldrb	w27, [x18, #1456]
  14:	59f111f1 	.inst	0x59f111f1 ; undefined
  18:	923f82a4 	and	x4, x21, #0x2000200020002
  1c:	ab1c5ed5 	adds	x21, x22, x28, lsl #23
  20:	d807aa98 	prfm	#0x18, f570 <__register_check+0xf0a8>
  24:	12835b01 	mov	w1, #0xffffe527            	// #-6873
  28:	243185be 	cmphi	p14.b, p1/z, z13.b, #70
  2c:	550c7dc3 	.inst	0x550c7dc3 ; undefined
  30:	72be5d74 	movk	w20, #0xf2eb, lsl #16
  34:	80deb1fe 	.inst	0x80deb1fe ; undefined
  38:	9bdc06a7 	umulh	x7, x21, x28
  3c:	c19bf174 	.inst	0xc19bf174 ; undefined
  40:	e49b69c1 	stnt1h	{z1.h}, p2, [x14, x27, lsl #1]
  44:	efbe4786 	.inst	0xefbe4786 ; undefined
  48:	0fc19dc6 	.inst	0x0fc19dc6 ; undefined
  4c:	240ca1cc 	cmpeq	p12.b, p0/z, z14.b, z12.b
  50:	2de92c6f 	ldp	s15, s11, [x3, #-184]!
  54:	4a7484aa 	.inst	0x4a7484aa ; undefined
  58:	5cb0a9dc 	ldr	d28, fffffffffff61590 <__register_check+0xfffffffffff610c8>
  5c:	76f988da 	.inst	0x76f988da ; undefined
  60:	983e5152 	ldrsw	x18, 7ca88 <__register_check+0x7c5c0>
  64:	a831c66d 	stnp	x13, x17, [x19, #-232]
  68:	b00327c8 	adrp	x8, 64f9000 <__register_check+0x64f8b38>
  6c:	bf597fc7 	.inst	0xbf597fc7 ; undefined
  70:	c6e00bf3 	.inst	0xc6e00bf3 ; undefined
  74:	d5a79147 	.inst	0xd5a79147 ; undefined
  78:	06ca6351 	.inst	0x06ca6351 ; undefined
  7c:	14292967 	b	a4a618 <__register_check+0xa4a150>
  80:	27b70a85 	.inst	0x27b70a85 ; undefined
  84:	2e1b2138 	ext	v24.8b, v9.8b, v27.8b, #4
  88:	4d2c6dfc 	.inst	0x4d2c6dfc ; undefined
  8c:	53380d13 	.inst	0x53380d13 ; undefined
  90:	650a7354 	.inst	0x650a7354 ; undefined
  94:	766a0abb 	.inst	0x766a0abb ; undefined
  98:	81c2c92e 	.inst	0x81c2c92e ; undefined
  9c:	92722c85 	and	x5, x4, #0x3ffc000
  a0:	a2bfe8a1 	.inst	0xa2bfe8a1 ; undefined
  a4:	a81a664b 	stnp	x11, x25, [x18, #416]
  a8:	c24b8b70 	.inst	0xc24b8b70 ; undefined
  ac:	c76c51a3 	.inst	0xc76c51a3 ; undefined
  b0:	d192e819 	.inst	0xd192e819 ; undefined
  b4:	d6990624 	.inst	0xd6990624 ; undefined
  b8:	f40e3585 	.inst	0xf40e3585 ; undefined
  bc:	106aa070 	adr	x16, d54c8 <__register_check+0xd5000>
  c0:	19a4c116 	.inst	0x19a4c116 ; undefined
  c4:	1e376c08 	fcsel	s8, s0, s23, vs
  c8:	2748774c 	.inst	0x2748774c ; undefined
  cc:	34b0bcb5 	cbz	w21, fffffffffff61860 <__register_check+0xfffffffffff61398>
  d0:	391c0cb3 	strb	w19, [x5, #1795]
  d4:	4ed8aa4a 	.inst	0x4ed8aa4a ; undefined
  d8:	5b9cca4f 	.inst	0x5b9cca4f ; undefined
  dc:	682e6ff3 	.inst	0x682e6ff3 ; undefined
  e0:	748f82ee 	.inst	0x748f82ee ; undefined
  e4:	78a5636f 	ldumaxah	w5, w15, [x27]
  e8:	84c87814 	ldff1h	{z20.s}, p6/z, [x0, z8.s, sxtw]
  ec:	8cc70208 	.inst	0x8cc70208 ; undefined
  f0:	90befffa 	adrp	x26, ffffffff7dffc000 <__register_check+0xffffffff7dffbb38>
  f4:	a4506ceb 	ldff1b	{z11.s}, p3/z, [x7, x16]
  f8:	bef9a3f7 	.inst	0xbef9a3f7 ; undefined
  fc:	c67178f2 	.inst	0xc67178f2 ; undefined
 100:	6a09e667 	.inst	0x6a09e667 ; undefined
 104:	bb67ae85 	.inst	0xbb67ae85 ; undefined
 108:	3c6ef372 	.inst	0x3c6ef372 ; undefined
 10c:	a54ff53a 	ld3w	{z26.s-z28.s}, p5/z, [x9, #-3, mul vl]
 110:	510e527f 	sub	wsp, w19, #0x394
 114:	9b05688c 	madd	x12, x4, x5, x26
 118:	1f83d9ab 	.inst	0x1f83d9ab ; undefined
 11c:	5be0cd19 	.inst	0x5be0cd19 ; undefined
 120:	428a2f98 	.inst	0x428a2f98 ; undefined
 124:	71374491 	subs	w17, w4, #0xdd1
 128:	b5c0fbcf 	cbnz	x15, fffffffffff820a0 <__register_check+0xfffffffffff81bd8>
 12c:	e9b5dba5 	.inst	0xe9b5dba5 ; undefined
 130:	3956c25b 	ldrb	w27, [x18, #1456]
 134:	59f111f1 	.inst	0x59f111f1 ; undefined
 138:	923f82a4 	and	x4, x21, #0x2000200020002
 13c:	ab1c5ed5 	adds	x21, x22, x28, lsl #23
 140:	d807aa98 	prfm	#0x18, f690 <__register_check+0xf1c8>
 144:	12835b01 	mov	w1, #0xffffe527            	// #-6873
 148:	243185be 	cmphi	p14.b, p1/z, z13.b, #70
 14c:	550c7dc3 	.inst	0x550c7dc3 ; undefined
 150:	72be5d74 	movk	w20, #0xf2eb, lsl #16
 154:	80deb1fe 	.inst	0x80deb1fe ; undefined
 158:	9bdc06a7 	umulh	x7, x21, x28
 15c:	c19bf174 	.inst	0xc19bf174 ; undefined
 160:	e49b69c1 	stnt1h	{z1.h}, p2, [x14, x27, lsl #1]
 164:	efbe4786 	.inst	0xefbe4786 ; undefined
 168:	0fc19dc6 	.inst	0x0fc19dc6 ; undefined
 16c:	240ca1cc 	cmpeq	p12.b, p0/z, z14.b, z12.b
 170:	2de92c6f 	ldp	s15, s11, [x3, #-184]!
 174:	4a7484aa 	.inst	0x4a7484aa ; undefined
 178:	5cb0a9dc 	ldr	d28, fffffffffff616b0 <__register_check+0xfffffffffff611e8>
 17c:	76f988da 	.inst	0x76f988da ; undefined
 180:	983e5152 	ldrsw	x18, 7cba8 <__register_check+0x7c6e0>
 184:	a831c66d 	stnp	x13, x17, [x19, #-232]
 188:	b00327c8 	adrp	x8, 64f9000 <__register_check+0x64f8b38>
 18c:	bf597fc7 	.inst	0xbf597fc7 ; undefined
 190:	c6e00bf3 	.inst	0xc6e00bf3 ; undefined
 194:	d5a79147 	.inst	0xd5a79147 ; undefined
 198:	06ca6351 	.inst	0x06ca6351 ; undefined
 19c:	14292967 	b	a4a738 <__register_check+0xa4a270>
 1a0:	27b70a85 	.inst	0x27b70a85 ; undefined
 1a4:	2e1b2138 	ext	v24.8b, v9.8b, v27.8b, #4
 1a8:	4d2c6dfc 	.inst	0x4d2c6dfc ; undefined
 1ac:	53380d13 	.inst	0x53380d13 ; undefined
 1b0:	650a7354 	.inst	0x650a7354 ; undefined
 1b4:	766a0abb 	.inst	0x766a0abb ; undefined
 1b8:	81c2c92e 	.inst	0x81c2c92e ; undefined
 1bc:	92722c85 	and	x5, x4, #0x3ffc000
 1c0:	a2bfe8a1 	.inst	0xa2bfe8a1 ; undefined
 1c4:	a81a664b 	stnp	x11, x25, [x18, #416]
 1c8:	c24b8b70 	.inst	0xc24b8b70 ; undefined
 1cc:	c76c51a3 	.inst	0xc76c51a3 ; undefined
 1d0:	d192e819 	.inst	0xd192e819 ; undefined
 1d4:	d6990624 	.inst	0xd6990624 ; undefined
 1d8:	f40e3585 	.inst	0xf40e3585 ; undefined
 1dc:	106aa070 	adr	x16, d55e8 <__register_check+0xd5120>
 1e0:	19a4c116 	.inst	0x19a4c116 ; undefined
 1e4:	1e376c08 	fcsel	s8, s0, s23, vs
 1e8:	2748774c 	.inst	0x2748774c ; undefined
 1ec:	34b0bcb5 	cbz	w21, fffffffffff61980 <__register_check+0xfffffffffff614b8>
 1f0:	391c0cb3 	strb	w19, [x5, #1795]
 1f4:	4ed8aa4a 	.inst	0x4ed8aa4a ; undefined
 1f8:	5b9cca4f 	.inst	0x5b9cca4f ; undefined
 1fc:	682e6ff3 	.inst	0x682e6ff3 ; undefined
 200:	748f82ee 	.inst	0x748f82ee ; undefined
 204:	78a5636f 	ldumaxah	w5, w15, [x27]
 208:	84c87814 	ldff1h	{z20.s}, p6/z, [x0, z8.s, sxtw]
 20c:	8cc70208 	.inst	0x8cc70208 ; undefined
 210:	90befffa 	adrp	x26, ffffffff7dffc000 <__register_check+0xffffffff7dffbb38>
 214:	a4506ceb 	ldff1b	{z11.s}, p3/z, [x7, x16]
 218:	bef9a3f7 	.inst	0xbef9a3f7 ; undefined
 21c:	c67178f2 	.inst	0xc67178f2 ; undefined
 220:	6a09e667 	.inst	0x6a09e667 ; undefined
 224:	bb67ae85 	.inst	0xbb67ae85 ; undefined
 228:	3c6ef372 	.inst	0x3c6ef372 ; undefined
 22c:	a54ff53a 	ld3w	{z26.s-z28.s}, p5/z, [x9, #-3, mul vl]
 230:	510e527f 	sub	wsp, w19, #0x394
 234:	9b05688c 	madd	x12, x4, x5, x26
 238:	1f83d9ab 	.inst	0x1f83d9ab ; undefined
 23c:	5be0cd19 	.inst	0x5be0cd19 ; undefined
 240:	428a2f98 	.inst	0x428a2f98 ; undefined
 244:	71374491 	subs	w17, w4, #0xdd1
 248:	b5c0fbcf 	cbnz	x15, fffffffffff821c0 <__register_check+0xfffffffffff81cf8>
 24c:	e9b5dba5 	.inst	0xe9b5dba5 ; undefined
 250:	3956c25b 	ldrb	w27, [x18, #1456]
 254:	59f111f1 	.inst	0x59f111f1 ; undefined
 258:	923f82a4 	and	x4, x21, #0x2000200020002
 25c:	ab1c5ed5 	adds	x21, x22, x28, lsl #23
 260:	d807aa98 	prfm	#0x18, f7b0 <__register_check+0xf2e8>
 264:	12835b01 	mov	w1, #0xffffe527            	// #-6873
 268:	243185be 	cmphi	p14.b, p1/z, z13.b, #70
 26c:	550c7dc3 	.inst	0x550c7dc3 ; undefined
 270:	72be5d74 	movk	w20, #0xf2eb, lsl #16
 274:	80deb1fe 	.inst	0x80deb1fe ; undefined
 278:	9bdc06a7 	umulh	x7, x21, x28
 27c:	c19bf174 	.inst	0xc19bf174 ; undefined
 280:	e49b69c1 	stnt1h	{z1.h}, p2, [x14, x27, lsl #1]
 284:	efbe4786 	.inst	0xefbe4786 ; undefined
 288:	0fc19dc6 	.inst	0x0fc19dc6 ; undefined
 28c:	240ca1cc 	cmpeq	p12.b, p0/z, z14.b, z12.b
 290:	2de92c6f 	ldp	s15, s11, [x3, #-184]!
 294:	4a7484aa 	.inst	0x4a7484aa ; undefined
 298:	5cb0a9dc 	ldr	d28, fffffffffff617d0 <__register_check+0xfffffffffff61308>
 29c:	76f988da 	.inst	0x76f988da ; undefined
 2a0:	983e5152 	ldrsw	x18, 7ccc8 <__register_check+0x7c800>
 2a4:	a831c66d 	stnp	x13, x17, [x19, #-232]
 2a8:	b00327c8 	adrp	x8, 64f9000 <__register_check+0x64f8b38>
 2ac:	bf597fc7 	.inst	0xbf597fc7 ; undefined
 2b0:	c6e00bf3 	.inst	0xc6e00bf3 ; undefined
 2b4:	d5a79147 	.inst	0xd5a79147 ; undefined
 2b8:	06ca6351 	.inst	0x06ca6351 ; undefined
 2bc:	14292967 	b	a4a858 <__register_check+0xa4a390>
 2c0:	27b70a85 	.inst	0x27b70a85 ; undefined
 2c4:	2e1b2138 	ext	v24.8b, v9.8b, v27.8b, #4
 2c8:	4d2c6dfc 	.inst	0x4d2c6dfc ; undefined
 2cc:	53380d13 	.inst	0x53380d13 ; undefined
 2d0:	650a7354 	.inst	0x650a7354 ; undefined
 2d4:	766a0abb 	.inst	0x766a0abb ; undefined
 2d8:	81c2c92e 	.inst	0x81c2c92e ; undefined
 2dc:	92722c85 	and	x5, x4, #0x3ffc000
 2e0:	a2bfe8a1 	.inst	0xa2bfe8a1 ; undefined
 2e4:	a81a664b 	stnp	x11, x25, [x18, #416]
 2e8:	c24b8b70 	.inst	0xc24b8b70 ; undefined
 2ec:	c76c51a3 	.inst	0xc76c51a3 ; undefined
 2f0:	d192e819 	.inst	0xd192e819 ; undefined
 2f4:	d6990624 	.inst	0xd6990624 ; undefined
 2f8:	f40e3585 	.inst	0xf40e3585 ; undefined
 2fc:	106aa070 	adr	x16, d5708 <__register_check+0xd5240>
 300:	19a4c116 	.inst	0x19a4c116 ; undefined
 304:	1e376c08 	fcsel	s8, s0, s23, vs
 308:	2748774c 	.inst	0x2748774c ; undefined
 30c:	34b0bcb5 	cbz	w21, fffffffffff61aa0 <__register_check+0xfffffffffff615d8>
 310:	391c0cb3 	strb	w19, [x5, #1795]
 314:	4ed8aa4a 	.inst	0x4ed8aa4a ; undefined
 318:	5b9cca4f 	.inst	0x5b9cca4f ; undefined
 31c:	682e6ff3 	.inst	0x682e6ff3 ; undefined
 320:	748f82ee 	.inst	0x748f82ee ; undefined
 324:	78a5636f 	ldumaxah	w5, w15, [x27]
 328:	84c87814 	ldff1h	{z20.s}, p6/z, [x0, z8.s, sxtw]
 32c:	8cc70208 	.inst	0x8cc70208 ; undefined
 330:	90befffa 	adrp	x26, ffffffff7dffc000 <__register_check+0xffffffff7dffbb38>
 334:	a4506ceb 	ldff1b	{z11.s}, p3/z, [x7, x16]
 338:	bef9a3f7 	.inst	0xbef9a3f7 ; undefined
 33c:	c67178f2 	.inst	0xc67178f2 ; undefined

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	75625500 	.inst	0x75625500 ; undefined
   4:	2075746e 	.inst	0x2075746e ; undefined
   8:	6e616c63 	umin	v3.8h, v3.8h, v1.8h
   c:	65762067 	fmls	z7.h, p0/m, z3.h, z22.h
  10:	6f697372 	fcmla	v18.8h, v27.8h, v9.h[1], #270
  14:	3131206e 	adds	w14, w3, #0xc48
  18:	302e302e 	adr	x14, 5c61d <__register_check+0x5c155>
  1c:	757e322d 	.inst	0x757e322d ; undefined
  20:	746e7562 	.inst	0x746e7562 ; undefined
  24:	2e303275 	usubw	v21.8h, v19.8h, v16.8b
  28:	312e3430 	adds	w16, w1, #0xb8d
	...
