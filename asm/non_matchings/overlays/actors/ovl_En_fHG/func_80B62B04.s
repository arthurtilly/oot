.late_rodata
glabel D_80B65398
 .word 0xC54F3000

.text
glabel func_80B62B04
/* 00144 80B62B04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00148 80B62B08 AFA5001C */  sw      $a1, 0x001C($sp)
/* 0014C 80B62B0C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00150 80B62B10 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00154 80B62B14 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00158 80B62B18 24A5E8A0 */  addiu   $a1, $a1, 0xE8A0           ## $a1 = 0600E8A0
/* 0015C 80B62B1C AFA60018 */  sw      $a2, 0x0018($sp)
/* 00160 80B62B20 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00164 80B62B24 24840250 */  addiu   $a0, $a0, 0x0250           ## $a0 = 00000250
/* 00168 80B62B28 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 0016C 80B62B2C 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00170 80B62B30 44812000 */  mtc1    $at, $f4                   ## $f4 = 14.00
/* 00174 80B62B34 3C01C396 */  lui     $at, 0xC396                ## $at = C3960000
/* 00178 80B62B38 44813000 */  mtc1    $at, $f6                   ## $f6 = -300.00
/* 0017C 80B62B3C 3C0E80B6 */  lui     $t6, %hi(func_80B62B6C)    ## $t6 = 80B60000
/* 00180 80B62B40 25CE2B6C */  addiu   $t6, $t6, %lo(func_80B62B6C) ## $t6 = 80B62B6C
/* 00184 80B62B44 3C0180B6 */  lui     $at, %hi(D_80B65398)       ## $at = 80B60000
/* 00188 80B62B48 ACCE01FC */  sw      $t6, 0x01FC($a2)           ## 000001FC
/* 0018C 80B62B4C E4C40024 */  swc1    $f4, 0x0024($a2)           ## 00000024
/* 00190 80B62B50 E4C60028 */  swc1    $f6, 0x0028($a2)           ## 00000028
/* 00194 80B62B54 C4285398 */  lwc1    $f8, %lo(D_80B65398)($at)
/* 00198 80B62B58 E4C8002C */  swc1    $f8, 0x002C($a2)           ## 0000002C
/* 0019C 80B62B5C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 001A0 80B62B60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001A4 80B62B64 03E00008 */  jr      $ra
/* 001A8 80B62B68 00000000 */  nop
