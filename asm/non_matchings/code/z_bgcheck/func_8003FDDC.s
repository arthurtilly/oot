.late_rodata
glabel D_80138FB0
    .float 0.008
    
.text
glabel func_8003FDDC
/* AB6F7C 8003FDDC 27BDFEE0 */  addiu $sp, $sp, -0x120
/* AB6F80 8003FDE0 AFBF004C */  sw    $ra, 0x4c($sp)
/* AB6F84 8003FDE4 AFB30048 */  sw    $s3, 0x48($sp)
/* AB6F88 8003FDE8 AFB20044 */  sw    $s2, 0x44($sp)
/* AB6F8C 8003FDEC AFB10040 */  sw    $s1, 0x40($sp)
/* AB6F90 8003FDF0 AFB0003C */  sw    $s0, 0x3c($sp)
/* AB6F94 8003FDF4 F7B40030 */  sdc1  $f20, 0x30($sp)
/* AB6F98 8003FDF8 8C8F0018 */  lw    $t7, 0x18($a0)
/* AB6F9C 8003FDFC 3C01C6FA */  li    $at, 0xC6FA0000 # 0.000000
/* AB6FA0 8003FE00 240E0032 */  li    $t6, 50
/* AB6FA4 8003FE04 ADEE0000 */  sw    $t6, ($t7)
/* AB6FA8 8003FE08 4481A000 */  mtc1  $at, $f20
/* AB6FAC 8003FE0C 00808025 */  move  $s0, $a0
/* AB6FB0 8003FE10 8C860004 */  lw    $a2, 4($a0)
/* AB6FB4 8003FE14 00009025 */  move  $s2, $zero
/* AB6FB8 8003FE18 00009825 */  move  $s3, $zero
.L8003FE1C:
/* AB6FBC 8003FE1C 00D3C021 */  addu  $t8, $a2, $s3
/* AB6FC0 8003FE20 971913DC */  lhu   $t9, 0x13dc($t8)
/* AB6FC4 8003FE24 00128880 */  sll   $s1, $s2, 2
/* AB6FC8 8003FE28 02328823 */  subu  $s1, $s1, $s2
/* AB6FCC 8003FE2C 332C0001 */  andi  $t4, $t9, 1
/* AB6FD0 8003FE30 1180005C */  beqz  $t4, .L8003FFA4
/* AB6FD4 8003FE34 001188C0 */   sll   $s1, $s1, 3
/* AB6FD8 8003FE38 02328821 */  addu  $s1, $s1, $s2
/* AB6FDC 8003FE3C 00118880 */  sll   $s1, $s1, 2
/* AB6FE0 8003FE40 00D11821 */  addu  $v1, $a2, $s1
/* AB6FE4 8003FE44 8C6E0054 */  lw    $t6, 0x54($v1)
/* AB6FE8 8003FE48 8E0D001C */  lw    $t5, 0x1c($s0)
/* AB6FEC 8003FE4C 51AE0056 */  beql  $t5, $t6, .L8003FFA8
/* AB6FF0 8003FE50 26520001 */   addiu $s2, $s2, 1
/* AB6FF4 8003FE54 8E020014 */  lw    $v0, 0x14($s0)
/* AB6FF8 8003FE58 C46600B0 */  lwc1  $f6, 0xb0($v1)
/* AB6FFC 8003FE5C 246400A8 */  addiu $a0, $v1, 0xa8
/* AB7000 8003FE60 C4440004 */  lwc1  $f4, 4($v0)
/* AB7004 8003FE64 4606203C */  c.lt.s $f4, $f6
/* AB7008 8003FE68 00000000 */  nop
/* AB700C 8003FE6C 4503004E */  bc1tl .L8003FFA8
/* AB7010 8003FE70 26520001 */   addiu $s2, $s2, 1
/* AB7014 8003FE74 8C450000 */  lw    $a1, ($v0)
/* AB7018 8003FE78 0C034120 */  jal   func_800D0480
/* AB701C 8003FE7C 8C460008 */   lw    $a2, 8($v0)
/* AB7020 8003FE80 54400004 */  bnezl $v0, .L8003FE94
/* AB7024 8003FE84 8E060004 */   lw    $a2, 4($s0)
/* AB7028 8003FE88 10000046 */  b     .L8003FFA4
/* AB702C 8003FE8C 8E060004 */   lw    $a2, 4($s0)
/* AB7030 8003FE90 8E060004 */  lw    $a2, 4($s0)
.L8003FE94:
/* AB7034 8003FE94 8E180020 */  lw    $t8, 0x20($s0)
/* AB7038 8003FE98 02002025 */  move  $a0, $s0
/* AB703C 8003FE9C 24CF0050 */  addiu $t7, $a2, 0x50
/* AB7040 8003FEA0 33190004 */  andi  $t9, $t8, 4
/* AB7044 8003FEA4 1320000F */  beqz  $t9, .L8003FEE4
/* AB7048 8003FEA8 AE0F0028 */   sw    $t7, 0x28($s0)
/* AB704C 8003FEAC 00D16021 */  addu  $t4, $a2, $s1
/* AB7050 8003FEB0 258D0062 */  addiu $t5, $t4, 0x62
/* AB7054 8003FEB4 AE0D002C */  sw    $t5, 0x2c($s0)
/* AB7058 8003FEB8 0C00FEFD */  jal   func_8003FBF4
/* AB705C 8003FEBC 24050001 */   li    $a1, 1
/* AB7060 8003FEC0 C6080010 */  lwc1  $f8, 0x10($s0)
/* AB7064 8003FEC4 4600403C */  c.lt.s $f8, $f0
/* AB7068 8003FEC8 00000000 */  nop
/* AB706C 8003FECC 45020006 */  bc1fl .L8003FEE8
/* AB7070 8003FED0 8E020020 */   lw    $v0, 0x20($s0)
/* AB7074 8003FED4 8E0E0018 */  lw    $t6, 0x18($s0)
/* AB7078 8003FED8 E6000010 */  swc1  $f0, 0x10($s0)
/* AB707C 8003FEDC 46000506 */  mov.s $f20, $f0
/* AB7080 8003FEE0 ADD20000 */  sw    $s2, ($t6)
.L8003FEE4:
/* AB7084 8003FEE4 8E020020 */  lw    $v0, 0x20($s0)
.L8003FEE8:
/* AB7088 8003FEE8 304F0002 */  andi  $t7, $v0, 2
/* AB708C 8003FEEC 55E00009 */  bnezl $t7, .L8003FF14
/* AB7090 8003FEF0 8E0D0004 */   lw    $t5, 4($s0)
/* AB7094 8003FEF4 8E18000C */  lw    $t8, 0xc($s0)
/* AB7098 8003FEF8 304C0008 */  andi  $t4, $v0, 8
/* AB709C 8003FEFC 8F190000 */  lw    $t9, ($t8)
/* AB70A0 8003FF00 57200014 */  bnezl $t9, .L8003FF54
/* AB70A4 8003FF04 8E190020 */   lw    $t9, 0x20($s0)
/* AB70A8 8003FF08 51800012 */  beql  $t4, $zero, .L8003FF54
/* AB70AC 8003FF0C 8E190020 */   lw    $t9, 0x20($s0)
/* AB70B0 8003FF10 8E0D0004 */  lw    $t5, 4($s0)
.L8003FF14:
/* AB70B4 8003FF14 02002025 */  move  $a0, $s0
/* AB70B8 8003FF18 24050002 */  li    $a1, 2
/* AB70BC 8003FF1C 01B17021 */  addu  $t6, $t5, $s1
/* AB70C0 8003FF20 25CF0060 */  addiu $t7, $t6, 0x60
/* AB70C4 8003FF24 0C00FEFD */  jal   func_8003FBF4
/* AB70C8 8003FF28 AE0F002C */   sw    $t7, 0x2c($s0)
/* AB70CC 8003FF2C C60A0010 */  lwc1  $f10, 0x10($s0)
/* AB70D0 8003FF30 4600503C */  c.lt.s $f10, $f0
/* AB70D4 8003FF34 00000000 */  nop
/* AB70D8 8003FF38 45020006 */  bc1fl .L8003FF54
/* AB70DC 8003FF3C 8E190020 */   lw    $t9, 0x20($s0)
/* AB70E0 8003FF40 8E180018 */  lw    $t8, 0x18($s0)
/* AB70E4 8003FF44 E6000010 */  swc1  $f0, 0x10($s0)
/* AB70E8 8003FF48 46000506 */  mov.s $f20, $f0
/* AB70EC 8003FF4C AF120000 */  sw    $s2, ($t8)
/* AB70F0 8003FF50 8E190020 */  lw    $t9, 0x20($s0)
.L8003FF54:
/* AB70F4 8003FF54 332C0001 */  andi  $t4, $t9, 1
/* AB70F8 8003FF58 51800012 */  beql  $t4, $zero, .L8003FFA4
/* AB70FC 8003FF5C 8E060004 */   lw    $a2, 4($s0)
/* AB7100 8003FF60 8E0D0004 */  lw    $t5, 4($s0)
/* AB7104 8003FF64 02002025 */  move  $a0, $s0
/* AB7108 8003FF68 24050004 */  li    $a1, 4
/* AB710C 8003FF6C 01B17021 */  addu  $t6, $t5, $s1
/* AB7110 8003FF70 25CF005E */  addiu $t7, $t6, 0x5e
/* AB7114 8003FF74 0C00FEFD */  jal   func_8003FBF4
/* AB7118 8003FF78 AE0F002C */   sw    $t7, 0x2c($s0)
/* AB711C 8003FF7C C6100010 */  lwc1  $f16, 0x10($s0)
/* AB7120 8003FF80 4600803C */  c.lt.s $f16, $f0
/* AB7124 8003FF84 00000000 */  nop
/* AB7128 8003FF88 45020006 */  bc1fl .L8003FFA4
/* AB712C 8003FF8C 8E060004 */   lw    $a2, 4($s0)
/* AB7130 8003FF90 8E180018 */  lw    $t8, 0x18($s0)
/* AB7134 8003FF94 E6000010 */  swc1  $f0, 0x10($s0)
/* AB7138 8003FF98 46000506 */  mov.s $f20, $f0
/* AB713C 8003FF9C AF120000 */  sw    $s2, ($t8)
/* AB7140 8003FFA0 8E060004 */  lw    $a2, 4($s0)
.L8003FFA4:
/* AB7144 8003FFA4 26520001 */  addiu $s2, $s2, 1
.L8003FFA8:
/* AB7148 8003FFA8 24010032 */  li    $at, 50
/* AB714C 8003FFAC 1641FF9B */  bne   $s2, $at, .L8003FE1C
/* AB7150 8003FFB0 26730002 */   addiu $s3, $s3, 2
/* AB7154 8003FFB4 8E190018 */  lw    $t9, 0x18($s0)
/* AB7158 8003FFB8 00C02025 */  move  $a0, $a2
/* AB715C 8003FFBC 0C00FAE1 */  jal   func_8003EB84
/* AB7160 8003FFC0 8F250000 */   lw    $a1, ($t9)
/* AB7164 8003FFC4 3C01C6FA */  li    $at, 0xC6FA0000 # 0.000000
/* AB7168 8003FFC8 44819000 */  mtc1  $at, $f18
/* AB716C 8003FFCC 00000000 */  nop
/* AB7170 8003FFD0 4612A032 */  c.eq.s $f20, $f18
/* AB7174 8003FFD4 00000000 */  nop
/* AB7178 8003FFD8 450300A2 */  bc1tl .L80040264
/* AB717C 8003FFDC 8FBF004C */   lw    $ra, 0x4c($sp)
/* AB7180 8003FFE0 504000A0 */  beql  $v0, $zero, .L80040264
/* AB7184 8003FFE4 8FBF004C */   lw    $ra, 0x4c($sp)
/* AB7188 8003FFE8 8E030000 */  lw    $v1, ($s0)
/* AB718C 8003FFEC 3C010001 */  lui   $at, 1
/* AB7190 8003FFF0 1060009B */  beqz  $v1, .L80040260
/* AB7194 8003FFF4 00612021 */   addu  $a0, $v1, $at
/* AB7198 8003FFF8 94820934 */  lhu   $v0, 0x934($a0)
/* AB719C 8003FFFC 0002102B */  sltu  $v0, $zero, $v0
/* AB71A0 80040000 14400003 */  bnez  $v0, .L80040010
/* AB71A4 80040004 00000000 */   nop
/* AB71A8 80040008 94820936 */  lhu   $v0, 0x936($a0)
/* AB71AC 8004000C 0002102B */  sltu  $v0, $zero, $v0
.L80040010:
/* AB71B0 80040010 54400094 */  bnezl $v0, .L80040264
/* AB71B4 80040014 8FBF004C */   lw    $ra, 0x4c($sp)
/* AB71B8 80040018 8E0C0018 */  lw    $t4, 0x18($s0)
/* AB71BC 8004001C 8E0D0004 */  lw    $t5, 4($s0)
/* AB71C0 80040020 8D8B0000 */  lw    $t3, ($t4)
/* AB71C4 80040024 000B7040 */  sll   $t6, $t3, 1
/* AB71C8 80040028 01AE7821 */  addu  $t7, $t5, $t6
/* AB71CC 8004002C 95F813DC */  lhu   $t8, 0x13dc($t7)
/* AB71D0 80040030 000B6080 */  sll   $t4, $t3, 2
/* AB71D4 80040034 018B6023 */  subu  $t4, $t4, $t3
/* AB71D8 80040038 33190002 */  andi  $t9, $t8, 2
/* AB71DC 8004003C 13200088 */  beqz  $t9, .L80040260
/* AB71E0 80040040 000C60C0 */   sll   $t4, $t4, 3
/* AB71E4 80040044 8E080028 */  lw    $t0, 0x28($s0)
/* AB71E8 80040048 018B6021 */  addu  $t4, $t4, $t3
/* AB71EC 8004004C 000C6080 */  sll   $t4, $t4, 2
/* AB71F0 80040050 010C1821 */  addu  $v1, $t0, $t4
/* AB71F4 80040054 946D000C */  lhu   $t5, 0xc($v1)
/* AB71F8 80040058 8D0F13F0 */  lw    $t7, 0x13f0($t0)
/* AB71FC 8004005C 24620038 */  addiu $v0, $v1, 0x38
/* AB7200 80040060 000D7100 */  sll   $t6, $t5, 4
/* AB7204 80040064 8E18000C */  lw    $t8, 0xc($s0)
/* AB7208 80040068 8C6C0008 */  lw    $t4, 8($v1)
/* AB720C 8004006C 01CF4821 */  addu  $t1, $t6, $t7
/* AB7210 80040070 844F000C */  lh    $t7, 0xc($v0)
/* AB7214 80040074 8F190000 */  lw    $t9, ($t8)
/* AB7218 80040078 8D8D0018 */  lw    $t5, 0x18($t4)
/* AB721C 8004007C 8C450000 */  lw    $a1, ($v0)
/* AB7220 80040080 8C460004 */  lw    $a2, 4($v0)
/* AB7224 80040084 8C470008 */  lw    $a3, 8($v0)
/* AB7228 80040088 AFAF0010 */  sw    $t7, 0x10($sp)
/* AB722C 8004008C 8458000E */  lh    $t8, 0xe($v0)
/* AB7230 80040090 03295023 */  subu  $t2, $t9, $t1
/* AB7234 80040094 000A5103 */  sra   $t2, $t2, 4
/* AB7238 80040098 AFB80014 */  sw    $t8, 0x14($sp)
/* AB723C 8004009C 84590010 */  lh    $t9, 0x10($v0)
/* AB7240 800400A0 000A7100 */  sll   $t6, $t2, 4
/* AB7244 800400A4 27A4008C */  addiu $a0, $sp, 0x8c
/* AB7248 800400A8 AFB90018 */  sw    $t9, 0x18($sp)
/* AB724C 800400AC C4440014 */  lwc1  $f4, 0x14($v0)
/* AB7250 800400B0 01AE9821 */  addu  $s3, $t5, $t6
/* AB7254 800400B4 E7A4001C */  swc1  $f4, 0x1c($sp)
/* AB7258 800400B8 C4460018 */  lwc1  $f6, 0x18($v0)
/* AB725C 800400BC E7A60020 */  swc1  $f6, 0x20($sp)
/* AB7260 800400C0 C448001C */  lwc1  $f8, 0x1c($v0)
/* AB7264 800400C4 0C029EC1 */  jal   func_800A7B04
/* AB7268 800400C8 E7A80024 */   swc1  $f8, 0x24($sp)
/* AB726C 800400CC 8E0D0018 */  lw    $t5, 0x18($s0)
/* AB7270 800400D0 8E0C0028 */  lw    $t4, 0x28($s0)
/* AB7274 800400D4 02609025 */  move  $s2, $s3
/* AB7278 800400D8 8DAE0000 */  lw    $t6, ($t5)
/* AB727C 800400DC 27B30074 */  addiu $s3, $sp, 0x74
/* AB7280 800400E0 27B100E0 */  addiu $s1, $sp, 0xe0
/* AB7284 800400E4 000E7880 */  sll   $t7, $t6, 2
/* AB7288 800400E8 01EE7823 */  subu  $t7, $t7, $t6
/* AB728C 800400EC 000F78C0 */  sll   $t7, $t7, 3
/* AB7290 800400F0 01EE7821 */  addu  $t7, $t7, $t6
/* AB7294 800400F4 000F7880 */  sll   $t7, $t7, 2
/* AB7298 800400F8 018FC021 */  addu  $t8, $t4, $t7
/* AB729C 800400FC 8F190008 */  lw    $t9, 8($t8)
/* AB72A0 80040100 8F220010 */  lw    $v0, 0x10($t9)
/* AB72A4 80040104 AFA20084 */  sw    $v0, 0x84($sp)
.L80040108:
/* AB72A8 80040108 964D0002 */  lhu   $t5, 2($s2)
/* AB72AC 8004010C 8FA20084 */  lw    $v0, 0x84($sp)
/* AB72B0 80040110 02602025 */  move  $a0, $s3
/* AB72B4 80040114 31AE1FFF */  andi  $t6, $t5, 0x1fff
/* AB72B8 80040118 000E6080 */  sll   $t4, $t6, 2
/* AB72BC 8004011C 018E6023 */  subu  $t4, $t4, $t6
/* AB72C0 80040120 000C6040 */  sll   $t4, $t4, 1
/* AB72C4 80040124 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AB72C8 80040128 01822821 */   addu  $a1, $t4, $v0
/* AB72CC 8004012C 27A4008C */  addiu $a0, $sp, 0x8c
/* AB72D0 80040130 02602825 */  move  $a1, $s3
/* AB72D4 80040134 0C029BBD */  jal   func_800A6EF4
/* AB72D8 80040138 02203025 */   move  $a2, $s1
/* AB72DC 8004013C 2631000C */  addiu $s1, $s1, 0xc
/* AB72E0 80040140 27AF0104 */  addiu $t7, $sp, 0x104
/* AB72E4 80040144 162FFFF0 */  bne   $s1, $t7, .L80040108
/* AB72E8 80040148 26520002 */   addiu $s2, $s2, 2
/* AB72EC 8004014C 27B100E0 */  addiu $s1, $sp, 0xe0
/* AB72F0 80040150 27B200EC */  addiu $s2, $sp, 0xec
/* AB72F4 80040154 27B300F8 */  addiu $s3, $sp, 0xf8
/* AB72F8 80040158 02603025 */  move  $a2, $s3
/* AB72FC 8004015C 02402825 */  move  $a1, $s2
/* AB7300 80040160 02202025 */  move  $a0, $s1
/* AB7304 80040164 0C032E09 */  jal   Math3D_SurfaceNorm
/* AB7308 80040168 27A700D4 */   addiu $a3, $sp, 0xd4
/* AB730C 8004016C 0C032D8A */  jal   Math3D_Vec3fMagnitude
/* AB7310 80040170 27A400D4 */   addiu $a0, $sp, 0xd4
/* AB7314 80040174 3C018014 */  lui   $at, %hi(D_80138FB0)
/* AB7318 80040178 C42A8FB0 */  lwc1  $f10, %lo(D_80138FB0)($at)
/* AB731C 8004017C 46000306 */  mov.s $f12, $f0
/* AB7320 80040180 46000005 */  abs.s $f0, $f0
/* AB7324 80040184 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB7328 80040188 460A003C */  c.lt.s $f0, $f10
/* AB732C 8004018C 00000000 */  nop
/* AB7330 80040190 45030034 */  bc1tl .L80040264
/* AB7334 80040194 8FBF004C */   lw    $ra, 0x4c($sp)
/* AB7338 80040198 44818000 */  mtc1  $at, $f16
/* AB733C 8004019C C7B200D4 */  lwc1  $f18, 0xd4($sp)
/* AB7340 800401A0 C7A600D8 */  lwc1  $f6, 0xd8($sp)
/* AB7344 800401A4 460C8003 */  div.s $f0, $f16, $f12
/* AB7348 800401A8 C7AA00DC */  lwc1  $f10, 0xdc($sp)
/* AB734C 800401AC 27B80070 */  addiu $t8, $sp, 0x70
/* AB7350 800401B0 02202025 */  move  $a0, $s1
/* AB7354 800401B4 02402825 */  move  $a1, $s2
/* AB7358 800401B8 02603025 */  move  $a2, $s3
/* AB735C 800401BC 46009102 */  mul.s $f4, $f18, $f0
/* AB7360 800401C0 C7B200E0 */  lwc1  $f18, 0xe0($sp)
/* AB7364 800401C4 46003202 */  mul.s $f8, $f6, $f0
/* AB7368 800401C8 00000000 */  nop
/* AB736C 800401CC 46005402 */  mul.s $f16, $f10, $f0
/* AB7370 800401D0 C7AA00E4 */  lwc1  $f10, 0xe4($sp)
/* AB7374 800401D4 E7A400D4 */  swc1  $f4, 0xd4($sp)
/* AB7378 800401D8 46122182 */  mul.s $f6, $f4, $f18
/* AB737C 800401DC E7A800D8 */  swc1  $f8, 0xd8($sp)
/* AB7380 800401E0 E7A80010 */  swc1  $f8, 0x10($sp)
/* AB7384 800401E4 460A4482 */  mul.s $f18, $f8, $f10
/* AB7388 800401E8 E7B000DC */  swc1  $f16, 0xdc($sp)
/* AB738C 800401EC E7B00014 */  swc1  $f16, 0x14($sp)
/* AB7390 800401F0 44072000 */  mfc1  $a3, $f4
/* AB7394 800401F4 46123280 */  add.s $f10, $f6, $f18
/* AB7398 800401F8 C7A600E8 */  lwc1  $f6, 0xe8($sp)
/* AB739C 800401FC 46103482 */  mul.s $f18, $f6, $f16
/* AB73A0 80040200 460A9080 */  add.s $f2, $f18, $f10
/* AB73A4 80040204 46001087 */  neg.s $f2, $f2
/* AB73A8 80040208 E7A20018 */  swc1  $f2, 0x18($sp)
/* AB73AC 8004020C 8E020014 */  lw    $v0, 0x14($s0)
/* AB73B0 80040210 C4460008 */  lwc1  $f6, 8($v0)
/* AB73B4 80040214 E7A6001C */  swc1  $f6, 0x1c($sp)
/* AB73B8 80040218 C4520000 */  lwc1  $f18, ($v0)
/* AB73BC 8004021C AFB80024 */  sw    $t8, 0x24($sp)
/* AB73C0 80040220 E7B20020 */  swc1  $f18, 0x20($sp)
/* AB73C4 80040224 C60A0024 */  lwc1  $f10, 0x24($s0)
/* AB73C8 80040228 0C033411 */  jal   func_800CD044
/* AB73CC 8004022C E7AA0028 */   swc1  $f10, 0x28($sp)
/* AB73D0 80040230 5040000C */  beql  $v0, $zero, .L80040264
/* AB73D4 80040234 8FBF004C */   lw    $ra, 0x4c($sp)
/* AB73D8 80040238 C7A20070 */  lwc1  $f2, 0x70($sp)
/* AB73DC 8004023C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB73E0 80040240 44812000 */  mtc1  $at, $f4
/* AB73E4 80040244 46141001 */  sub.s $f0, $f2, $f20
/* AB73E8 80040248 46000005 */  abs.s $f0, $f0
/* AB73EC 8004024C 4604003C */  c.lt.s $f0, $f4
/* AB73F0 80040250 00000000 */  nop
/* AB73F4 80040254 45020003 */  bc1fl .L80040264
/* AB73F8 80040258 8FBF004C */   lw    $ra, 0x4c($sp)
/* AB73FC 8004025C 46001506 */  mov.s $f20, $f2
.L80040260:
/* AB7400 80040260 8FBF004C */  lw    $ra, 0x4c($sp)
.L80040264:
/* AB7404 80040264 4600A006 */  mov.s $f0, $f20
/* AB7408 80040268 D7B40030 */  ldc1  $f20, 0x30($sp)
/* AB740C 8004026C 8FB0003C */  lw    $s0, 0x3c($sp)
/* AB7410 80040270 8FB10040 */  lw    $s1, 0x40($sp)
/* AB7414 80040274 8FB20044 */  lw    $s2, 0x44($sp)
/* AB7418 80040278 8FB30048 */  lw    $s3, 0x48($sp)
/* AB741C 8004027C 03E00008 */  jr    $ra
/* AB7420 80040280 27BD0120 */   addiu $sp, $sp, 0x120

