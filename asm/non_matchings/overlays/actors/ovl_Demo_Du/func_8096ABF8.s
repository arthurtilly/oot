glabel func_8096ABF8
/* 01128 8096ABF8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0112C 8096ABFC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01130 8096AC00 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01134 8096AC04 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 01138 8096AC08 51C0001E */  beql    $t6, $zero, .L8096AC84
/* 0113C 8096AC0C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01140 8096AC10 8CA21D94 */  lw      $v0, 0x1D94($a1)           ## 00001D94
/* 01144 8096AC14 5040001B */  beql    $v0, $zero, .L8096AC84
/* 01148 8096AC18 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0114C 8096AC1C 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 01150 8096AC20 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01154 8096AC24 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01158 8096AC28 51E10016 */  beql    $t7, $at, .L8096AC84
/* 0115C 8096AC2C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01160 8096AC30 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01164 8096AC34 24842374 */  addiu   $a0, $a0, 0x2374           ## $a0 = 06002374
/* 01168 8096AC38 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0116C 8096AC3C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 01170 8096AC40 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 01174 8096AC44 468021A0 */  cvt.s.w $f6, $f4
/* 01178 8096AC48 8FA40028 */  lw      $a0, 0x0028($sp)
/* 0117C 8096AC4C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01180 8096AC50 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01184 8096AC54 AFB80014 */  sw      $t8, 0x0014($sp)
/* 01188 8096AC58 24A52374 */  addiu   $a1, $a1, 0x2374           ## $a1 = 06002374
/* 0118C 8096AC5C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01190 8096AC60 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01194 8096AC64 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01198 8096AC68 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0119C 8096AC6C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 011A0 8096AC70 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 011A4 8096AC74 8FA80028 */  lw      $t0, 0x0028($sp)
/* 011A8 8096AC78 2419000D */  addiu   $t9, $zero, 0x000D         ## $t9 = 0000000D
/* 011AC 8096AC7C AD190198 */  sw      $t9, 0x0198($t0)           ## 00000198
/* 011B0 8096AC80 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8096AC84:
/* 011B4 8096AC84 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 011B8 8096AC88 03E00008 */  jr      $ra
/* 011BC 8096AC8C 00000000 */  nop


