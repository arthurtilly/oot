glabel func_80912C94
/* 02654 80912C94 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02658 80912C98 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0265C 80912C9C AFA50024 */  sw      $a1, 0x0024($sp)
/* 02660 80912CA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02664 80912CA4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 02668 80912CA8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0266C 80912CAC 24A5090C */  addiu   $a1, $a1, 0x090C           ## $a1 = 0600090C
/* 02670 80912CB0 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 02674 80912CB4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02678 80912CB8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0267C 80912CBC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 02680 80912CC0 2484090C */  addiu   $a0, $a0, 0x090C           ## $a0 = 0600090C
/* 02684 80912CC4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02688 80912CC8 3C0E8091 */  lui     $t6, %hi(func_80912D2C)    ## $t6 = 80910000
/* 0268C 80912CCC 25CE2D2C */  addiu   $t6, $t6, %lo(func_80912D2C) ## $t6 = 80912D2C
/* 02690 80912CD0 468021A0 */  cvt.s.w $f6, $f4
/* 02694 80912CD4 3C041001 */  lui     $a0, 0x1001                ## $a0 = 10010000
/* 02698 80912CD8 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 0269C 80912CDC 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 100100FF
/* 026A0 80912CE0 0C03E803 */  jal     Audio_SetBGM

/* 026A4 80912CE4 E60601D0 */  swc1    $f6, 0x01D0($s0)           ## 000001D0
/* 026A8 80912CE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026AC 80912CEC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 026B0 80912CF0 240538AF */  addiu   $a1, $zero, 0x38AF         ## $a1 = 000038AF
/* 026B4 80912CF4 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 026B8 80912CF8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 026BC 80912CFC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 026C0 80912D00 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 026C4 80912D04 0301C824 */  and     $t9, $t8, $at
/* 026C8 80912D08 A60F035E */  sh      $t7, 0x035E($s0)           ## 0000035E
/* 026CC 80912D0C AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 026D0 80912D10 A6000194 */  sh      $zero, 0x0194($s0)         ## 00000194
/* 026D4 80912D14 A20801C8 */  sb      $t0, 0x01C8($s0)           ## 000001C8
/* 026D8 80912D18 8FBF001C */  lw      $ra, 0x001C($sp)
/* 026DC 80912D1C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 026E0 80912D20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 026E4 80912D24 03E00008 */  jr      $ra
/* 026E8 80912D28 00000000 */  nop


