glabel func_80B34380
/* 006D0 80B34380 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 006D4 80B34384 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 006D8 80B34388 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 006DC 80B3438C 44812000 */  mtc1    $at, $f4                   ## $f4 = 7.00
/* 006E0 80B34390 AFB00028 */  sw      $s0, 0x0028($sp)
/* 006E4 80B34394 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006E8 80B34398 AFBF002C */  sw      $ra, 0x002C($sp)
/* 006EC 80B3439C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006F0 80B343A0 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 006F4 80B343A4 44070000 */  mfc1    $a3, $f0
/* 006F8 80B343A8 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 006FC 80B343AC 24A55430 */  addiu   $a1, $a1, 0x5430           ## $a1 = 06005430
/* 00700 80B343B0 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00704 80B343B4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00708 80B343B8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0070C 80B343BC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00710 80B343C0 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00714 80B343C4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00718 80B343C8 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 0071C 80B343CC C606000C */  lwc1    $f6, 0x000C($s0)           ## 0000000C
/* 00720 80B343D0 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 00724 80B343D4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00728 80B343D8 46083281 */  sub.s   $f10, $f6, $f8
/* 0072C 80B343DC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00730 80B343E0 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00734 80B343E4 3C0580B3 */  lui     $a1, %hi(func_80B34428)    ## $a1 = 80B30000
/* 00738 80B343E8 0301C824 */  and     $t9, $t8, $at
/* 0073C 80B343EC E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 00740 80B343F0 AE0F02E8 */  sw      $t7, 0x02E8($s0)           ## 000002E8
/* 00744 80B343F4 A6000300 */  sh      $zero, 0x0300($s0)         ## 00000300
/* 00748 80B343F8 AE0002D4 */  sw      $zero, 0x02D4($s0)         ## 000002D4
/* 0074C 80B343FC AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00750 80B34400 24A54428 */  addiu   $a1, $a1, %lo(func_80B34428) ## $a1 = 80B34428
/* 00754 80B34404 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00758 80B34408 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 0075C 80B3440C 0C2CCF2C */  jal     func_80B33CB0
/* 00760 80B34410 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 00764 80B34414 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00768 80B34418 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0076C 80B3441C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00770 80B34420 03E00008 */  jr      $ra
/* 00774 80B34424 00000000 */  nop


