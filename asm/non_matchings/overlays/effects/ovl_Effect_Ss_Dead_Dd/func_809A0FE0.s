glabel func_809A0FE0
/* 000000 809A0FE0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 000004 809A0FE4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 000008 809A0FE8 AFB20038 */  sw    $s2, 0x38($sp)
/* 00000C 809A0FEC AFB10034 */  sw    $s1, 0x34($sp)
/* 000010 809A0FF0 AFB00030 */  sw    $s0, 0x30($sp)
/* 000014 809A0FF4 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 000018 809A0FF8 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 00001C 809A0FFC F7B40018 */  sdc1  $f20, 0x18($sp)
/* 000020 809A1000 AFA40040 */  sw    $a0, 0x40($sp)
/* 000024 809A1004 AFA50044 */  sw    $a1, 0x44($sp)
/* 000028 809A1008 90E20040 */  lbu   $v0, 0x40($a3)
/* 00002C 809A100C 00C08025 */  move  $s0, $a2
/* 000030 809A1010 00E08825 */  move  $s1, $a3
/* 000034 809A1014 54400044 */  bnezl $v0, .L809A1128
/* 000038 809A1018 24010001 */   li    $at, 1
/* 00003C 809A101C 8E2F0000 */  lw    $t7, ($s1)
/* 000040 809A1020 AE0F0000 */  sw    $t7, ($s0)
/* 000044 809A1024 8E2E0004 */  lw    $t6, 4($s1)
/* 000048 809A1028 AE0E0004 */  sw    $t6, 4($s0)
/* 00004C 809A102C 8E2F0008 */  lw    $t7, 8($s1)
/* 000050 809A1030 AE0F0008 */  sw    $t7, 8($s0)
/* 000054 809A1034 8E39000C */  lw    $t9, 0xc($s1)
/* 000058 809A1038 AE19000C */  sw    $t9, 0xc($s0)
/* 00005C 809A103C 8E380010 */  lw    $t8, 0x10($s1)
/* 000060 809A1040 AE180010 */  sw    $t8, 0x10($s0)
/* 000064 809A1044 8E390014 */  lw    $t9, 0x14($s1)
/* 000068 809A1048 3C18809A */  lui   $t8, %hi(func_809A12B4) # $t8, 0x809a
/* 00006C 809A104C 271812B4 */  addiu $t8, %lo(func_809A12B4) # addiu $t8, $t8, 0x12b4
/* 000070 809A1050 AE190014 */  sw    $t9, 0x14($s0)
/* 000074 809A1054 8E290018 */  lw    $t1, 0x18($s1)
/* 000078 809A1058 3C19809A */  lui   $t9, %hi(func_809A14B0) # $t9, 0x809a
/* 00007C 809A105C 273914B0 */  addiu $t9, %lo(func_809A14B0) # addiu $t9, $t9, 0x14b0
/* 000080 809A1060 AE090018 */  sw    $t1, 0x18($s0)
/* 000084 809A1064 8E28001C */  lw    $t0, 0x1c($s1)
/* 000088 809A1068 AE08001C */  sw    $t0, 0x1c($s0)
/* 00008C 809A106C 8E290020 */  lw    $t1, 0x20($s1)
/* 000090 809A1070 AE090020 */  sw    $t1, 0x20($s0)
/* 000094 809A1074 8E2A0034 */  lw    $t2, 0x34($s1)
/* 000098 809A1078 A60A005C */  sh    $t2, 0x5c($s0)
/* 00009C 809A107C 862B0026 */  lh    $t3, 0x26($s1)
/* 0000A0 809A1080 A60B0052 */  sh    $t3, 0x52($s0)
/* 0000A4 809A1084 862C0030 */  lh    $t4, 0x30($s1)
/* 0000A8 809A1088 A60C0056 */  sh    $t4, 0x56($s0)
/* 0000AC 809A108C 86220030 */  lh    $v0, 0x30($s1)
/* 0000B0 809A1090 50400004 */  beql  $v0, $zero, .L809A10A4
/* 0000B4 809A1094 922D002B */   lbu   $t5, 0x2b($s1)
/* 0000B8 809A1098 1000000F */  b     .L809A10D8
/* 0000BC 809A109C A6020054 */   sh    $v0, 0x54($s0)
/* 0000C0 809A10A0 922D002B */  lbu   $t5, 0x2b($s1)
.L809A10A4:
/* 0000C4 809A10A4 8E2E0034 */  lw    $t6, 0x34($s1)
/* 0000C8 809A10A8 01AE001A */  div   $zero, $t5, $t6
/* 0000CC 809A10AC 00007812 */  mflo  $t7
/* 0000D0 809A10B0 A60F0054 */  sh    $t7, 0x54($s0)
/* 0000D4 809A10B4 15C00002 */  bnez  $t6, .L809A10C0
/* 0000D8 809A10B8 00000000 */   nop   
/* 0000DC 809A10BC 0007000D */  break 7
.L809A10C0:
/* 0000E0 809A10C0 2401FFFF */  li    $at, -1
/* 0000E4 809A10C4 15C10004 */  bne   $t6, $at, .L809A10D8
/* 0000E8 809A10C8 3C018000 */   lui   $at, 0x8000
/* 0000EC 809A10CC 15A10002 */  bne   $t5, $at, .L809A10D8
/* 0000F0 809A10D0 00000000 */   nop   
/* 0000F4 809A10D4 0006000D */  break 6
.L809A10D8:
/* 0000F8 809A10D8 AE180028 */  sw    $t8, 0x28($s0)
/* 0000FC 809A10DC AE190024 */  sw    $t9, 0x24($s0)
/* 000100 809A10E0 86280024 */  lh    $t0, 0x24($s1)
/* 000104 809A10E4 A6080040 */  sh    $t0, 0x40($s0)
/* 000108 809A10E8 92290028 */  lbu   $t1, 0x28($s1)
/* 00010C 809A10EC A6090044 */  sh    $t1, 0x44($s0)
/* 000110 809A10F0 922A0029 */  lbu   $t2, 0x29($s1)
/* 000114 809A10F4 A60A0046 */  sh    $t2, 0x46($s0)
/* 000118 809A10F8 922B002A */  lbu   $t3, 0x2a($s1)
/* 00011C 809A10FC A60B0048 */  sh    $t3, 0x48($s0)
/* 000120 809A1100 922C002B */  lbu   $t4, 0x2b($s1)
/* 000124 809A1104 A60C004A */  sh    $t4, 0x4a($s0)
/* 000128 809A1108 922D002C */  lbu   $t5, 0x2c($s1)
/* 00012C 809A110C A60D004C */  sh    $t5, 0x4c($s0)
/* 000130 809A1110 922E002D */  lbu   $t6, 0x2d($s1)
/* 000134 809A1114 A60E004E */  sh    $t6, 0x4e($s0)
/* 000138 809A1118 922F002E */  lbu   $t7, 0x2e($s1)
/* 00013C 809A111C 1000005B */  b     .L809A128C
/* 000140 809A1120 A60F0050 */   sh    $t7, 0x50($s0)
/* 000144 809A1124 24010001 */  li    $at, 1
.L809A1128:
/* 000148 809A1128 14410053 */  bne   $v0, $at, .L809A1278
/* 00014C 809A112C 240300FF */   li    $v1, 255
/* 000150 809A1130 8E380034 */  lw    $t8, 0x34($s1)
/* 000154 809A1134 2402009B */  li    $v0, 155
/* 000158 809A1138 3C0D809A */  lui   $t5, %hi(func_809A12B4) # $t5, 0x809a
/* 00015C 809A113C A618005C */  sh    $t8, 0x5c($s0)
/* 000160 809A1140 86390026 */  lh    $t9, 0x26($s1)
/* 000164 809A1144 A6000056 */  sh    $zero, 0x56($s0)
/* 000168 809A1148 3C0E809A */  lui   $t6, %hi(func_809A14B0) # $t6, 0x809a
/* 00016C 809A114C A6190052 */  sh    $t9, 0x52($s0)
/* 000170 809A1150 8E280034 */  lw    $t0, 0x34($s1)
/* 000174 809A1154 240B00FA */  li    $t3, 250
/* 000178 809A1158 240C00B4 */  li    $t4, 180
/* 00017C 809A115C 0048001A */  div   $zero, $v0, $t0
/* 000180 809A1160 00004812 */  mflo  $t1
/* 000184 809A1164 A6090054 */  sh    $t1, 0x54($s0)
/* 000188 809A1168 862A0024 */  lh    $t2, 0x24($s1)
/* 00018C 809A116C 25AD12B4 */  addiu $t5, %lo(func_809A12B4) # addiu $t5, $t5, 0x12b4
/* 000190 809A1170 25CE14B0 */  addiu $t6, %lo(func_809A14B0) # addiu $t6, $t6, 0x14b0
/* 000194 809A1174 A6030044 */  sh    $v1, 0x44($s0)
/* 000198 809A1178 A6030046 */  sh    $v1, 0x46($s0)
/* 00019C 809A117C A6020048 */  sh    $v0, 0x48($s0)
/* 0001A0 809A1180 A602004A */  sh    $v0, 0x4a($s0)
/* 0001A4 809A1184 A60B004C */  sh    $t3, 0x4c($s0)
/* 0001A8 809A1188 A60C004E */  sh    $t4, 0x4e($s0)
/* 0001AC 809A118C A6000050 */  sh    $zero, 0x50($s0)
/* 0001B0 809A1190 AE0D0028 */  sw    $t5, 0x28($s0)
/* 0001B4 809A1194 AE0E0024 */  sw    $t6, 0x24($s0)
/* 0001B8 809A1198 A60A0040 */  sh    $t2, 0x40($s0)
/* 0001BC 809A119C 8E32003C */  lw    $s2, 0x3c($s1)
/* 0001C0 809A11A0 15000002 */  bnez  $t0, .L809A11AC
/* 0001C4 809A11A4 00000000 */   nop   
/* 0001C8 809A11A8 0007000D */  break 7
.L809A11AC:
/* 0001CC 809A11AC 2401FFFF */  li    $at, -1
/* 0001D0 809A11B0 15010004 */  bne   $t0, $at, .L809A11C4
/* 0001D4 809A11B4 3C018000 */   lui   $at, 0x8000
/* 0001D8 809A11B8 14410002 */  bne   $v0, $at, .L809A11C4
/* 0001DC 809A11BC 00000000 */   nop   
/* 0001E0 809A11C0 0006000D */  break 6
.L809A11C4:
/* 0001E4 809A11C4 1A400031 */  blez  $s2, .L809A128C
/* 0001E8 809A11C8 3C013F00 */   li    $at, 0x3F000000 # 0.500000
/* 0001EC 809A11CC 4481C000 */  mtc1  $at, $f24
/* 0001F0 809A11D0 00000000 */  nop   
.L809A11D4:
/* 0001F4 809A11D4 0C03F66B */  jal   Math_Rand_ZeroOne
/* 0001F8 809A11D8 00000000 */   nop   
/* 0001FC 809A11DC 46180101 */  sub.s $f4, $f0, $f24
/* 000200 809A11E0 C6260038 */  lwc1  $f6, 0x38($s1)
/* 000204 809A11E4 C62A0000 */  lwc1  $f10, ($s1)
/* 000208 809A11E8 46062202 */  mul.s $f8, $f4, $f6
/* 00020C 809A11EC 460A4400 */  add.s $f16, $f8, $f10
/* 000210 809A11F0 0C03F66B */  jal   Math_Rand_ZeroOne
/* 000214 809A11F4 E6100000 */   swc1  $f16, ($s0)
/* 000218 809A11F8 46180481 */  sub.s $f18, $f0, $f24
/* 00021C 809A11FC C6240038 */  lwc1  $f4, 0x38($s1)
/* 000220 809A1200 C6280004 */  lwc1  $f8, 4($s1)
/* 000224 809A1204 46049182 */  mul.s $f6, $f18, $f4
/* 000228 809A1208 46083280 */  add.s $f10, $f6, $f8
/* 00022C 809A120C 0C03F66B */  jal   Math_Rand_ZeroOne
/* 000230 809A1210 E60A0004 */   swc1  $f10, 4($s0)
/* 000234 809A1214 46180401 */  sub.s $f16, $f0, $f24
/* 000238 809A1218 C6320038 */  lwc1  $f18, 0x38($s1)
/* 00023C 809A121C C6260008 */  lwc1  $f6, 8($s1)
/* 000240 809A1220 46128102 */  mul.s $f4, $f16, $f18
/* 000244 809A1224 46062200 */  add.s $f8, $f4, $f6
/* 000248 809A1228 0C03F66B */  jal   Math_Rand_ZeroOne
/* 00024C 809A122C E6080008 */   swc1  $f8, 8($s0)
/* 000250 809A1230 46180501 */  sub.s $f20, $f0, $f24
/* 000254 809A1234 4614A580 */  add.s $f22, $f20, $f20
/* 000258 809A1238 E616000C */  swc1  $f22, 0xc($s0)
/* 00025C 809A123C 0C03F66B */  jal   Math_Rand_ZeroOne
/* 000260 809A1240 E6160018 */   swc1  $f22, 0x18($s0)
/* 000264 809A1244 46180501 */  sub.s $f20, $f0, $f24
/* 000268 809A1248 4614A580 */  add.s $f22, $f20, $f20
/* 00026C 809A124C E6160010 */  swc1  $f22, 0x10($s0)
/* 000270 809A1250 0C03F66B */  jal   Math_Rand_ZeroOne
/* 000274 809A1254 E616001C */   swc1  $f22, 0x1c($s0)
/* 000278 809A1258 46180501 */  sub.s $f20, $f0, $f24
/* 00027C 809A125C 2652FFFF */  addiu $s2, $s2, -1
/* 000280 809A1260 4614A580 */  add.s $f22, $f20, $f20
/* 000284 809A1264 E6160014 */  swc1  $f22, 0x14($s0)
/* 000288 809A1268 1E40FFDA */  bgtz  $s2, .L809A11D4
/* 00028C 809A126C E6160020 */   swc1  $f22, 0x20($s0)
/* 000290 809A1270 10000007 */  b     .L809A1290
/* 000294 809A1274 24020001 */   li    $v0, 1
.L809A1278:
/* 000298 809A1278 3C04809A */  lui   $a0, %hi(D_809A1550) # $a0, 0x809a
/* 00029C 809A127C 0C00084C */  jal   osSyncPrintf
/* 0002A0 809A1280 24841550 */   addiu $a0, %lo(D_809A1550) # addiu $a0, $a0, 0x1550
/* 0002A4 809A1284 10000002 */  b     .L809A1290
/* 0002A8 809A1288 00001025 */   move  $v0, $zero
.L809A128C:
/* 0002AC 809A128C 24020001 */  li    $v0, 1
.L809A1290:
/* 0002B0 809A1290 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0002B4 809A1294 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0002B8 809A1298 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 0002BC 809A129C D7B80028 */  ldc1  $f24, 0x28($sp)
/* 0002C0 809A12A0 8FB00030 */  lw    $s0, 0x30($sp)
/* 0002C4 809A12A4 8FB10034 */  lw    $s1, 0x34($sp)
/* 0002C8 809A12A8 8FB20038 */  lw    $s2, 0x38($sp)
/* 0002CC 809A12AC 03E00008 */  jr    $ra
/* 0002D0 809A12B0 27BD0040 */   addiu $sp, $sp, 0x40

