glabel func_8086518C
/* 0028C 8086518C 27BDFF38 */  addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
/* 00290 80865190 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00294 80865194 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00298 80865198 AFA500CC */  sw      $a1, 0x00CC($sp)           
/* 0029C 8086519C 8C8F0118 */  lw      $t7, 0x0118($a0)           ## 00000118
/* 002A0 808651A0 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 002A4 808651A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002A8 808651A8 11E00005 */  beq     $t7, $zero, .L808651C0     
/* 002AC 808651AC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 002B0 808651B0 0C023C41 */  jal     func_8008F104              
/* 002B4 808651B4 AFA600C4 */  sw      $a2, 0x00C4($sp)           
/* 002B8 808651B8 14400007 */  bne     $v0, $zero, .L808651D8     
/* 002BC 808651BC 8FA400C4 */  lw      $a0, 0x00C4($sp)           
.L808651C0:
/* 002C0 808651C0 0C219421 */  jal     func_80865084              
/* 002C4 808651C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002C8 808651C8 0C00B55C */  jal     Actor_Kill
              
/* 002CC 808651CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002D0 808651D0 10000182 */  beq     $zero, $zero, .L808657DC   
/* 002D4 808651D4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808651D8:
/* 002D8 808651D8 0C00BE3C */  jal     func_8002F8F0              
/* 002DC 808651DC 2405100B */  addiu   $a1, $zero, 0x100B         ## $a1 = 0000100B
/* 002E0 808651E0 0C21942B */  jal     func_808650AC              
/* 002E4 808651E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002E8 808651E8 86030210 */  lh      $v1, 0x0210($s0)           ## 00000210
/* 002EC 808651EC 1060002E */  beq     $v1, $zero, .L808652A8     
/* 002F0 808651F0 00000000 */  nop
/* 002F4 808651F4 9218015C */  lbu     $t8, 0x015C($s0)           ## 0000015C
/* 002F8 808651F8 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 002FC 808651FC 1320002A */  beq     $t9, $zero, .L808652A8     
/* 00300 80865200 00000000 */  nop
/* 00304 80865204 8E020184 */  lw      $v0, 0x0184($s0)           ## 00000184
/* 00308 80865208 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0030C 8086520C 90480014 */  lbu     $t0, 0x0014($v0)           ## 00000014
/* 00310 80865210 11010025 */  beq     $t0, $at, .L808652A8       
/* 00314 80865214 00000000 */  nop
/* 00318 80865218 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 0031C 8086521C 8CA90130 */  lw      $t1, 0x0130($a1)           ## 00000130
/* 00320 80865220 11200014 */  beq     $t1, $zero, .L80865274     
/* 00324 80865224 00000000 */  nop
/* 00328 80865228 8CAA0004 */  lw      $t2, 0x0004($a1)           ## 00000004
/* 0032C 8086522C 314B0600 */  andi    $t3, $t2, 0x0600           ## $t3 = 00000000
/* 00330 80865230 11600010 */  beq     $t3, $zero, .L80865274     
/* 00334 80865234 00000000 */  nop
/* 00338 80865238 904C0016 */  lbu     $t4, 0x0016($v0)           ## 00000016
/* 0033C 8086523C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00340 80865240 318D0004 */  andi    $t5, $t4, 0x0004           ## $t5 = 00000000
/* 00344 80865244 11A0000B */  beq     $t5, $zero, .L80865274     
/* 00348 80865248 00000000 */  nop
/* 0034C 8086524C 0C219452 */  jal     func_80865148              
/* 00350 80865250 AFA500C0 */  sw      $a1, 0x00C0($sp)           
/* 00354 80865254 8FA500C0 */  lw      $a1, 0x00C0($sp)           
/* 00358 80865258 24010400 */  addiu   $at, $zero, 0x0400         ## $at = 00000400
/* 0035C 8086525C 8CAE0004 */  lw      $t6, 0x0004($a1)           ## 00000004
/* 00360 80865260 31CF0400 */  andi    $t7, $t6, 0x0400           ## $t7 = 00000000
/* 00364 80865264 15E10003 */  bne     $t7, $at, .L80865274       
/* 00368 80865268 00000000 */  nop
/* 0036C 8086526C 0C219411 */  jal     func_80865044              
/* 00370 80865270 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80865274:
/* 00374 80865274 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00378 80865278 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 0037C 8086527C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00380 80865280 A6000210 */  sh      $zero, 0x0210($s0)         ## 00000210
/* 00384 80865284 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 00388 80865288 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0038C 8086528C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00390 80865290 24041814 */  addiu   $a0, $zero, 0x1814         ## $a0 = 00001814
/* 00394 80865294 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00398 80865298 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0039C 8086529C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 003A0 808652A0 1000014E */  beq     $zero, $zero, .L808657DC   
/* 003A4 808652A4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808652A8:
/* 003A8 808652A8 14600003 */  bne     $v1, $zero, .L808652B8     
/* 003AC 808652AC 2479FFFF */  addiu   $t9, $v1, 0xFFFF           ## $t9 = FFFFFFFF
/* 003B0 808652B0 10000003 */  beq     $zero, $zero, .L808652C0   
/* 003B4 808652B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808652B8:
/* 003B8 808652B8 A6190210 */  sh      $t9, 0x0210($s0)           ## 00000210
/* 003BC 808652BC 86020210 */  lh      $v0, 0x0210($s0)           ## 00000210
.L808652C0:
/* 003C0 808652C0 144000B8 */  bne     $v0, $zero, .L808655A4     
/* 003C4 808652C4 00000000 */  nop
/* 003C8 808652C8 8E070200 */  lw      $a3, 0x0200($s0)           ## 00000200
/* 003CC 808652CC 50E00031 */  beql    $a3, $zero, .L80865394     
/* 003D0 808652D0 8FA400C4 */  lw      $a0, 0x00C4($sp)           
/* 003D4 808652D4 8CE80130 */  lw      $t0, 0x0130($a3)           ## 00000130
/* 003D8 808652D8 51000007 */  beql    $t0, $zero, .L808652F8     
/* 003DC 808652DC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 003E0 808652E0 8CE90004 */  lw      $t1, 0x0004($a3)           ## 00000004
/* 003E4 808652E4 24012000 */  addiu   $at, $zero, 0x2000         ## $at = 00002000
/* 003E8 808652E8 312A2000 */  andi    $t2, $t1, 0x2000           ## $t2 = 00000000
/* 003EC 808652EC 51410005 */  beql    $t2, $at, .L80865304       
/* 003F0 808652F0 8E0B011C */  lw      $t3, 0x011C($s0)           ## 0000011C
/* 003F4 808652F4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L808652F8:
/* 003F8 808652F8 10000025 */  beq     $zero, $zero, .L80865390   
/* 003FC 808652FC AE000200 */  sw      $zero, 0x0200($s0)         ## 00000200
/* 00400 80865300 8E0B011C */  lw      $t3, 0x011C($s0)           ## 0000011C
.L80865304:
/* 00404 80865304 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00408 80865308 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0040C 8086530C 51600021 */  beql    $t3, $zero, .L80865394     
/* 00410 80865310 8FA400C4 */  lw      $a0, 0x00C4($sp)           
/* 00414 80865314 0C00B6D2 */  jal     func_8002DB48              
/* 00418 80865318 AFA700BC */  sw      $a3, 0x00BC($sp)           
/* 0041C 8086531C E7A00094 */  swc1    $f0, 0x0094($sp)           
/* 00420 80865320 C6020204 */  lwc1    $f2, 0x0204($s0)           ## 00000204
/* 00424 80865324 C60C0208 */  lwc1    $f12, 0x0208($s0)          ## 00000208
/* 00428 80865328 C60E020C */  lwc1    $f14, 0x020C($s0)          ## 0000020C
/* 0042C 8086532C 46021102 */  mul.s   $f4, $f2, $f2              
/* 00430 80865330 8FA700BC */  lw      $a3, 0x00BC($sp)           
/* 00434 80865334 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 00438 80865338 460C6182 */  mul.s   $f6, $f12, $f12            
/* 0043C 8086533C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00440 80865340 24E40024 */  addiu   $a0, $a3, 0x0024           ## $a0 = 00000024
/* 00444 80865344 460E7282 */  mul.s   $f10, $f14, $f14           
/* 00448 80865348 46062200 */  add.s   $f8, $f4, $f6              
/* 0044C 8086534C 460A4000 */  add.s   $f0, $f8, $f10             
/* 00450 80865350 46000004 */  sqrt.s  $f0, $f0                   
/* 00454 80865354 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 00458 80865358 E7A00090 */  swc1    $f0, 0x0090($sp)           
/* 0045C 8086535C C7A60094 */  lwc1    $f6, 0x0094($sp)           
/* 00460 80865360 C7A80090 */  lwc1    $f8, 0x0090($sp)           
/* 00464 80865364 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00468 80865368 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 0046C 8086536C 46083281 */  sub.s   $f10, $f6, $f8             
/* 00470 80865370 8FA700BC */  lw      $a3, 0x00BC($sp)           
/* 00474 80865374 460A203C */  c.lt.s  $f4, $f10                  
/* 00478 80865378 00000000 */  nop
/* 0047C 8086537C 45020005 */  bc1fl   .L80865394                 
/* 00480 80865380 8FA400C4 */  lw      $a0, 0x00C4($sp)           
/* 00484 80865384 0C219421 */  jal     func_80865084              
/* 00488 80865388 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0048C 8086538C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L80865390:
/* 00490 80865390 8FA400C4 */  lw      $a0, 0x00C4($sp)           
.L80865394:
/* 00494 80865394 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00498 80865398 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0049C 8086539C 248403C8 */  addiu   $a0, $a0, 0x03C8           ## $a0 = 000003C8
/* 004A0 808653A0 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 004A4 808653A4 27A600B0 */  addiu   $a2, $sp, 0x00B0           ## $a2 = FFFFFFE8
/* 004A8 808653A8 0C01DFF4 */  jal     Math_Vec3f_DistXYZAndStoreDiff
              
/* 004AC 808653AC AFA700BC */  sw      $a3, 0x00BC($sp)           
/* 004B0 808653B0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 004B4 808653B4 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 004B8 808653B8 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 004BC 808653BC 8FA700BC */  lw      $a3, 0x00BC($sp)           
/* 004C0 808653C0 460C003C */  c.lt.s  $f0, $f12                  
/* 004C4 808653C4 C7A600B0 */  lwc1    $f6, 0x00B0($sp)           
/* 004C8 808653C8 27A500A4 */  addiu   $a1, $sp, 0x00A4           ## $a1 = FFFFFFDC
/* 004CC 808653CC 45020006 */  bc1fl   .L808653E8                 
/* 004D0 808653D0 8E0C011C */  lw      $t4, 0x011C($s0)           ## 0000011C
/* 004D4 808653D4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 004D8 808653D8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 004DC 808653DC 10000015 */  beq     $zero, $zero, .L80865434   
/* 004E0 808653E0 00000000 */  nop
/* 004E4 808653E4 8E0C011C */  lw      $t4, 0x011C($s0)           ## 0000011C
.L808653E8:
/* 004E8 808653E8 11800003 */  beq     $t4, $zero, .L808653F8     
/* 004EC 808653EC 00000000 */  nop
/* 004F0 808653F0 10000009 */  beq     $zero, $zero, .L80865418   
/* 004F4 808653F4 46006086 */  mov.s   $f2, $f12                  
.L808653F8:
/* 004F8 808653F8 10E00005 */  beq     $a3, $zero, .L80865410     
/* 004FC 808653FC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00500 80865400 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00504 80865404 44811000 */  mtc1    $at, $f2                   ## $f2 = 50.00
/* 00508 80865408 10000004 */  beq     $zero, $zero, .L8086541C   
/* 0050C 8086540C 4602003E */  c.le.s  $f0, $f2                   
.L80865410:
/* 00510 80865410 44811000 */  mtc1    $at, $f2                   ## $f2 = 50.00
/* 00514 80865414 00000000 */  nop
.L80865418:
/* 00518 80865418 4602003E */  c.le.s  $f0, $f2                   
.L8086541C:
/* 0051C 8086541C 46020401 */  sub.s   $f16, $f0, $f2             
/* 00520 80865420 45020004 */  bc1fl   .L80865434                 
/* 00524 80865424 46008083 */  div.s   $f2, $f16, $f0             
/* 00528 80865428 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0052C 8086542C 00000000 */  nop
/* 00530 80865430 46008083 */  div.s   $f2, $f16, $f0             
.L80865434:
/* 00534 80865434 46023202 */  mul.s   $f8, $f6, $f2              
/* 00538 80865438 C7A400B4 */  lwc1    $f4, 0x00B4($sp)           
/* 0053C 8086543C C7A600B8 */  lwc1    $f6, 0x00B8($sp)           
/* 00540 80865440 8FA600C4 */  lw      $a2, 0x00C4($sp)           
/* 00544 80865444 46022282 */  mul.s   $f10, $f4, $f2             
/* 00548 80865448 24C6005C */  addiu   $a2, $a2, 0x005C           ## $a2 = 0000005C
/* 0054C 8086544C E7A800A4 */  swc1    $f8, 0x00A4($sp)           
/* 00550 80865450 46023202 */  mul.s   $f8, $f6, $f2              
/* 00554 80865454 E7AA00A8 */  swc1    $f10, 0x00A8($sp)          
/* 00558 80865458 E7A800AC */  swc1    $f8, 0x00AC($sp)           
/* 0055C 8086545C 8E0D011C */  lw      $t5, 0x011C($s0)           ## 0000011C
/* 00560 80865460 55A0001E */  bnel    $t5, $zero, .L808654DC     
/* 00564 80865464 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFE8
/* 00568 80865468 10E0000D */  beq     $a3, $zero, .L808654A0     
/* 0056C 8086546C 27A500A4 */  addiu   $a1, $sp, 0x00A4           ## $a1 = FFFFFFDC
/* 00570 80865470 84EE0000 */  lh      $t6, 0x0000($a3)           ## 00000000
/* 00574 80865474 240100D5 */  addiu   $at, $zero, 0x00D5         ## $at = 000000D5
/* 00578 80865478 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 0057C 8086547C 55C10009 */  bnel    $t6, $at, .L808654A4       
/* 00580 80865480 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 00584 80865484 24E40024 */  addiu   $a0, $a3, 0x0024           ## $a0 = 00000024
/* 00588 80865488 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 0058C 8086548C 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 00590 80865490 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00594 80865494 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00598 80865498 1000001F */  beq     $zero, $zero, .L80865518   
/* 0059C 8086549C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L808654A0:
/* 005A0 808654A0 8FA60044 */  lw      $a2, 0x0044($sp)           
.L808654A4:
/* 005A4 808654A4 AFA700BC */  sw      $a3, 0x00BC($sp)           
/* 005A8 808654A8 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 005AC 808654AC E7B0009C */  swc1    $f16, 0x009C($sp)          
/* 005B0 808654B0 8FA700BC */  lw      $a3, 0x00BC($sp)           
/* 005B4 808654B4 C7B0009C */  lwc1    $f16, 0x009C($sp)          
/* 005B8 808654B8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 005BC 808654BC 10E00015 */  beq     $a3, $zero, .L80865514     
/* 005C0 808654C0 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 005C4 808654C4 24E60024 */  addiu   $a2, $a3, 0x0024           ## $a2 = 00000024
/* 005C8 808654C8 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 005CC 808654CC E7B0009C */  swc1    $f16, 0x009C($sp)          
/* 005D0 808654D0 10000010 */  beq     $zero, $zero, .L80865514   
/* 005D4 808654D4 C7B0009C */  lwc1    $f16, 0x009C($sp)          
/* 005D8 808654D8 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFE8
.L808654DC:
/* 005DC 808654DC 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 005E0 808654E0 E7B0009C */  swc1    $f16, 0x009C($sp)          
/* 005E4 808654E4 C7A200B0 */  lwc1    $f2, 0x00B0($sp)           
/* 005E8 808654E8 C7B200B8 */  lwc1    $f18, 0x00B8($sp)          
/* 005EC 808654EC C7AE00B4 */  lwc1    $f14, 0x00B4($sp)          
/* 005F0 808654F0 46021102 */  mul.s   $f4, $f2, $f2              
/* 005F4 808654F4 46007387 */  neg.s   $f14, $f14                 
/* 005F8 808654F8 46129282 */  mul.s   $f10, $f18, $f18           
/* 005FC 808654FC 460A2000 */  add.s   $f0, $f4, $f10             
/* 00600 80865500 0C034199 */  jal     atan2s
              
/* 00604 80865504 46000304 */  sqrt.s  $f12, $f0                  
/* 00608 80865508 8FAF00C4 */  lw      $t7, 0x00C4($sp)           
/* 0060C 8086550C C7B0009C */  lwc1    $f16, 0x009C($sp)          
/* 00610 80865510 A5E20030 */  sh      $v0, 0x0030($t7)           ## 00000030
.L80865514:
/* 00614 80865514 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L80865518:
/* 00618 80865518 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 0061C 8086551C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00620 80865520 4606803C */  c.lt.s  $f16, $f6                  
/* 00624 80865524 00000000 */  nop
/* 00628 80865528 450200AC */  bc1fl   .L808657DC                 
/* 0062C 8086552C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00630 80865530 0C219421 */  jal     func_80865084              
/* 00634 80865534 E7B0009C */  swc1    $f16, 0x009C($sp)          
/* 00638 80865538 C7B0009C */  lwc1    $f16, 0x009C($sp)          
/* 0063C 8086553C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00640 80865540 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00644 80865544 3C058086 */  lui     $a1, %hi(func_80864FC4)    ## $a1 = 80860000
/* 00648 80865548 46088032 */  c.eq.s  $f16, $f8                  
/* 0064C 8086554C 00000000 */  nop
/* 00650 80865550 450200A2 */  bc1fl   .L808657DC                 
/* 00654 80865554 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00658 80865558 0C2193C0 */  jal     func_80864F00              
/* 0065C 8086555C 24A54FC4 */  addiu   $a1, $a1, %lo(func_80864FC4) ## $a1 = 80864FC4
/* 00660 80865560 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00664 80865564 0C219415 */  jal     func_80865054              
/* 00668 80865568 8FA500C4 */  lw      $a1, 0x00C4($sp)           
/* 0066C 8086556C 5040009B */  beql    $v0, $zero, .L808657DC     
/* 00670 80865570 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00674 80865574 8FA200C4 */  lw      $v0, 0x00C4($sp)           
/* 00678 80865578 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0067C 8086557C 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 00680 80865580 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 00684 80865584 2446005C */  addiu   $a2, $v0, 0x005C           ## $a2 = 0000005C
/* 00688 80865588 8FB800C4 */  lw      $t8, 0x00C4($sp)           
/* 0068C 8086558C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00690 80865590 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00694 80865594 C7040060 */  lwc1    $f4, 0x0060($t8)           ## 00000060
/* 00698 80865598 460A2181 */  sub.s   $f6, $f4, $f10             
/* 0069C 8086559C 1000008E */  beq     $zero, $zero, .L808657D8   
/* 006A0 808655A0 E7060060 */  swc1    $f6, 0x0060($t8)           ## 00000060
.L808655A4:
/* 006A4 808655A4 0C00B638 */  jal     Actor_MoveForward
              
/* 006A8 808655A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006AC 808655AC 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 006B0 808655B0 AFA40044 */  sw      $a0, 0x0044($sp)           
/* 006B4 808655B4 26050100 */  addiu   $a1, $s0, 0x0100           ## $a1 = 00000100
/* 006B8 808655B8 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 006BC 808655BC 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFA4
/* 006C0 808655C0 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 006C4 808655C4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 000001E8
/* 006C8 808655C8 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 006CC 808655CC 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 006D0 808655D0 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFA4
/* 006D4 808655D4 C60E0060 */  lwc1    $f14, 0x0060($s0)          ## 00000060
/* 006D8 808655D8 C60C0068 */  lwc1    $f12, 0x0068($s0)          ## 00000068
/* 006DC 808655DC 0C034199 */  jal     atan2s
              
/* 006E0 808655E0 46007387 */  neg.s   $f14, $f14                 
/* 006E4 808655E4 C60001F4 */  lwc1    $f0, 0x01F4($s0)           ## 000001F4
/* 006E8 808655E8 C60801E8 */  lwc1    $f8, 0x01E8($s0)           ## 000001E8
/* 006EC 808655EC A60200B4 */  sh      $v0, 0x00B4($s0)           ## 000000B4
/* 006F0 808655F0 8FA400CC */  lw      $a0, 0x00CC($sp)           
/* 006F4 808655F4 46004101 */  sub.s   $f4, $f8, $f0              
/* 006F8 808655F8 27B90088 */  addiu   $t9, $sp, 0x0088           ## $t9 = FFFFFFC0
/* 006FC 808655FC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00700 80865600 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00704 80865604 46040281 */  sub.s   $f10, $f0, $f4             
/* 00708 80865608 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0070C 8086560C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00710 80865610 27AC0084 */  addiu   $t4, $sp, 0x0084           ## $t4 = FFFFFFBC
/* 00714 80865614 E7AA0060 */  swc1    $f10, 0x0060($sp)          
/* 00718 80865618 C60601EC */  lwc1    $f6, 0x01EC($s0)           ## 000001EC
/* 0071C 8086561C C60201F8 */  lwc1    $f2, 0x01F8($s0)           ## 000001F8
/* 00720 80865620 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00724 80865624 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 00728 80865628 46023201 */  sub.s   $f8, $f6, $f2              
/* 0072C 8086562C 27A50060 */  addiu   $a1, $sp, 0x0060           ## $a1 = FFFFFF98
/* 00730 80865630 27A70078 */  addiu   $a3, $sp, 0x0078           ## $a3 = FFFFFFB0
/* 00734 80865634 46081101 */  sub.s   $f4, $f2, $f8              
/* 00738 80865638 E7A40064 */  swc1    $f4, 0x0064($sp)           
/* 0073C 8086563C C60A01F0 */  lwc1    $f10, 0x01F0($s0)          ## 000001F0
/* 00740 80865640 C60C01FC */  lwc1    $f12, 0x01FC($s0)          ## 000001FC
/* 00744 80865644 AFA4003C */  sw      $a0, 0x003C($sp)           
/* 00748 80865648 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 0074C 8086564C 460C5181 */  sub.s   $f6, $f10, $f12            
/* 00750 80865650 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00754 80865654 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00758 80865658 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 0075C 8086565C 46066201 */  sub.s   $f8, $f12, $f6             
/* 00760 80865660 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00764 80865664 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00768 80865668 0C00F7A1 */  jal     func_8003DE84              
/* 0076C 8086566C E7A80068 */  swc1    $f8, 0x0068($sp)           
/* 00770 80865670 10400053 */  beq     $v0, $zero, .L808657C0     
/* 00774 80865674 8FA70084 */  lw      $a3, 0x0084($sp)           
/* 00778 80865678 27AD0078 */  addiu   $t5, $sp, 0x0078           ## $t5 = FFFFFFB0
/* 0077C 8086567C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00780 80865680 8FA400CC */  lw      $a0, 0x00CC($sp)           
/* 00784 80865684 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00788 80865688 0C00BE7B */  jal     func_8002F9EC              
/* 0078C 8086568C 8FA60088 */  lw      $a2, 0x0088($sp)           
/* 00790 80865690 1440004B */  bne     $v0, $zero, .L808657C0     
/* 00794 80865694 8FAE0088 */  lw      $t6, 0x0088($sp)           
/* 00798 80865698 85CF0008 */  lh      $t7, 0x0008($t6)           ## 00000008
/* 0079C 8086569C 3C018086 */  lui     $at, %hi(D_80865C10)       ## $at = 80860000
/* 007A0 808656A0 C4205C10 */  lwc1    $f0, %lo(D_80865C10)($at)  
/* 007A4 808656A4 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 007A8 808656A8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 007AC 808656AC 27A50078 */  addiu   $a1, $sp, 0x0078           ## $a1 = FFFFFFB0
/* 007B0 808656B0 468022A0 */  cvt.s.w $f10, $f4                  
/* 007B4 808656B4 46005182 */  mul.s   $f6, $f10, $f0             
/* 007B8 808656B8 E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 007BC 808656BC 85D8000C */  lh      $t8, 0x000C($t6)           ## 0000000C
/* 007C0 808656C0 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 007C4 808656C4 00000000 */  nop
/* 007C8 808656C8 46804120 */  cvt.s.w $f4, $f8                   
/* 007CC 808656CC 46002282 */  mul.s   $f10, $f4, $f0             
/* 007D0 808656D0 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 007D4 808656D4 E7AA0058 */  swc1    $f10, 0x0058($sp)          
/* 007D8 808656D8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 007DC 808656DC 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 007E0 808656E0 C7A8005C */  lwc1    $f8, 0x005C($sp)           
/* 007E4 808656E4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 007E8 808656E8 46080102 */  mul.s   $f4, $f0, $f8              
/* 007EC 808656EC C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 007F0 808656F0 46043280 */  add.s   $f10, $f6, $f4             
/* 007F4 808656F4 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 007F8 808656F8 C7A60058 */  lwc1    $f6, 0x0058($sp)           
/* 007FC 808656FC A6000210 */  sh      $zero, 0x0210($s0)         ## 00000210
/* 00800 80865700 46060102 */  mul.s   $f4, $f0, $f6              
/* 00804 80865704 46044280 */  add.s   $f10, $f8, $f4             
/* 00808 80865708 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 0080C 8086570C 8FA60084 */  lw      $a2, 0x0084($sp)           
/* 00810 80865710 8FA50088 */  lw      $a1, 0x0088($sp)           
/* 00814 80865714 0C0107FA */  jal     func_80041FE8              
/* 00818 80865718 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0081C 8086571C 1040001A */  beq     $v0, $zero, .L80865788     
/* 00820 80865720 8FA400CC */  lw      $a0, 0x00CC($sp)           
/* 00824 80865724 8FA70084 */  lw      $a3, 0x0084($sp)           
/* 00828 80865728 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 0082C 8086572C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00830 80865730 10E10007 */  beq     $a3, $at, .L80865750       
/* 00834 80865734 00000000 */  nop
/* 00838 80865738 0C00FAE1 */  jal     func_8003EB84
              ## func_8003EB84
/* 0083C 8086573C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00840 80865740 10400003 */  beq     $v0, $zero, .L80865750     
/* 00844 80865744 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00848 80865748 0C219452 */  jal     func_80865148              
/* 0084C 8086574C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80865750:
/* 00850 80865750 0C219411 */  jal     func_80865044              
/* 00854 80865754 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00858 80865758 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 0085C 8086575C 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 00860 80865760 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00864 80865764 273933E8 */  addiu   $t9, $t9, 0x33E8           ## $t9 = 801333E8
/* 00868 80865768 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0086C 8086576C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00870 80865770 24041829 */  addiu   $a0, $zero, 0x1829         ## $a0 = 00001829
/* 00874 80865774 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00878 80865778 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0087C 8086577C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00880 80865780 10000016 */  beq     $zero, $zero, .L808657DC   
/* 00884 80865784 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80865788:
/* 00888 80865788 0C018B58 */  jal     func_80062D60              
/* 0088C 8086578C 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00890 80865790 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00894 80865794 3C088013 */  lui     $t0, 0x8013                ## $t0 = 80130000
/* 00898 80865798 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 0089C 8086579C 250833E8 */  addiu   $t0, $t0, 0x33E8           ## $t0 = 801333E8
/* 008A0 808657A0 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 008A4 808657A4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 008A8 808657A8 24041813 */  addiu   $a0, $zero, 0x1813         ## $a0 = 00001813
/* 008AC 808657AC 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 008B0 808657B0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 008B4 808657B4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 008B8 808657B8 10000008 */  beq     $zero, $zero, .L808657DC   
/* 008BC 808657BC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808657C0:
/* 008C0 808657C0 8FA900CC */  lw      $t1, 0x00CC($sp)           
/* 008C4 808657C4 952A0020 */  lhu     $t2, 0x0020($t1)           ## 00000020
/* 008C8 808657C8 314BC01F */  andi    $t3, $t2, 0xC01F           ## $t3 = 00000000
/* 008CC 808657CC 51600003 */  beql    $t3, $zero, .L808657DC     
/* 008D0 808657D0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 008D4 808657D4 A6000210 */  sh      $zero, 0x0210($s0)         ## 00000210
.L808657D8:
/* 008D8 808657D8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808657DC:
/* 008DC 808657DC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 008E0 808657E0 27BD00C8 */  addiu   $sp, $sp, 0x00C8           ## $sp = 00000000
/* 008E4 808657E4 03E00008 */  jr      $ra                        
/* 008E8 808657E8 00000000 */  nop


