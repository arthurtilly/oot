glabel func_80041A4C
/* AB8BEC 80041A4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB8BF0 80041A50 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB8BF4 80041A54 AFA5001C */  sw    $a1, 0x1c($sp)
/* AB8BF8 80041A58 0C00F131 */  jal   func_8003C4C4
/* AB8BFC 80041A5C 00C02825 */   move  $a1, $a2
/* AB8C00 80041A60 14400003 */  bnez  $v0, .L80041A70
/* AB8C04 80041A64 00402825 */   move  $a1, $v0
/* AB8C08 80041A68 10000006 */  b     .L80041A84
/* AB8C0C 80041A6C 00001025 */   move  $v0, $zero
.L80041A70:
/* AB8C10 80041A70 8FAE001C */  lw    $t6, 0x1c($sp)
/* AB8C14 80041A74 8CA30020 */  lw    $v1, 0x20($a1)
/* AB8C18 80041A78 000E78C0 */  sll   $t7, $t6, 3
/* AB8C1C 80041A7C 006FC021 */  addu  $t8, $v1, $t7
/* AB8C20 80041A80 97020000 */  lhu   $v0, ($t8)
.L80041A84:
/* AB8C24 80041A84 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB8C28 80041A88 27BD0018 */  addiu $sp, $sp, 0x18
/* AB8C2C 80041A8C 03E00008 */  jr    $ra
/* AB8C30 80041A90 00000000 */   nop   

/* AB8C34 80041A94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB8C38 80041A98 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB8C3C 80041A9C AFA5001C */  sw    $a1, 0x1c($sp)
/* AB8C40 80041AA0 AFA40018 */  sw    $a0, 0x18($sp)
/* AB8C44 80041AA4 AFA60020 */  sw    $a2, 0x20($sp)
/* AB8C48 80041AA8 0C00F131 */  jal   func_8003C4C4
/* AB8C4C 80041AAC 00C02825 */   move  $a1, $a2
/* AB8C50 80041AB0 14400003 */  bnez  $v0, .L80041AC0
/* AB8C54 80041AB4 3C048016 */   lui   $a0, %hi(gSegments) # $a0, 0x8016
/* AB8C58 80041AB8 10000016 */  b     .L80041B14
/* AB8C5C 80041ABC 00001025 */   move  $v0, $zero
.L80041AC0:
/* AB8C60 80041AC0 8C846FA8 */  lw    $a0, %lo(gSegments)($a0)
/* AB8C64 80041AC4 8C430020 */  lw    $v1, 0x20($v0)
/* AB8C68 80041AC8 3C018000 */  lui   $at, 0x8000
/* AB8C6C 80041ACC 00812021 */  addu  $a0, $a0, $at
/* AB8C70 80041AD0 54640004 */  bnel  $v1, $a0, .L80041AE4
/* AB8C74 80041AD4 8C43001C */   lw    $v1, 0x1c($v0)
/* AB8C78 80041AD8 1000000E */  b     .L80041B14
/* AB8C7C 80041ADC 00001025 */   move  $v0, $zero
/* AB8C80 80041AE0 8C43001C */  lw    $v1, 0x1c($v0)
.L80041AE4:
/* AB8C84 80041AE4 8FA5001C */  lw    $a1, 0x1c($sp)
/* AB8C88 80041AE8 8FA60020 */  lw    $a2, 0x20($sp)
/* AB8C8C 80041AEC 14640003 */  bne   $v1, $a0, .L80041AFC
/* AB8C90 80041AF0 00000000 */   nop   
/* AB8C94 80041AF4 10000007 */  b     .L80041B14
/* AB8C98 80041AF8 00001025 */   move  $v0, $zero
.L80041AFC:
/* AB8C9C 80041AFC 0C01068A */  jal   func_80041A28
/* AB8CA0 80041B00 8FA40018 */   lw    $a0, 0x18($sp)
/* AB8CA4 80041B04 8FA40018 */  lw    $a0, 0x18($sp)
/* AB8CA8 80041B08 00402825 */  move  $a1, $v0
/* AB8CAC 80041B0C 0C010693 */  jal   func_80041A4C
/* AB8CB0 80041B10 8FA60020 */   lw    $a2, 0x20($sp)
.L80041B14:
/* AB8CB4 80041B14 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB8CB8 80041B18 27BD0018 */  addiu $sp, $sp, 0x18
/* AB8CBC 80041B1C 03E00008 */  jr    $ra
/* AB8CC0 80041B20 00000000 */   nop   

