glabel func_80A5372C
/* 0088C 80A5372C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00890 80A53730 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00894 80A53734 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00898 80A53738 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0089C 80A5373C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 008A0 80A53740 AFA50034 */  sw      $a1, 0x0034($sp)
/* 008A4 80A53744 0C028800 */  jal     SkelAnime_GetFrameCount

/* 008A8 80A53748 24845C30 */  addiu   $a0, $a0, 0x5C30           ## $a0 = 06005C30
/* 008AC 80A5374C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 008B0 80A53750 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 008B4 80A53754 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 008B8 80A53758 468021A0 */  cvt.s.w $f6, $f4
/* 008BC 80A5375C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008C0 80A53760 24A55C30 */  addiu   $a1, $a1, 0x5C30           ## $a1 = 06005C30
/* 008C4 80A53764 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 008C8 80A53768 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008CC 80A5376C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 008D0 80A53770 4600320D */  trunc.w.s $f8, $f6
/* 008D4 80A53774 AFA00014 */  sw      $zero, 0x0014($sp)
/* 008D8 80A53778 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 008DC 80A5377C 440F4000 */  mfc1    $t7, $f8
/* 008E0 80A53780 00000000 */  nop
/* 008E4 80A53784 000FC400 */  sll     $t8, $t7, 16
/* 008E8 80A53788 0018CC03 */  sra     $t9, $t8, 16
/* 008EC 80A5378C 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 008F0 80A53790 00000000 */  nop
/* 008F4 80A53794 46805420 */  cvt.s.w $f16, $f10
/* 008F8 80A53798 0C029468 */  jal     SkelAnime_ChangeAnim

/* 008FC 80A5379C E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00900 80A537A0 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 00904 80A537A4 A60802F2 */  sh      $t0, 0x02F2($s0)           ## 000002F2
/* 00908 80A537A8 0C03008C */  jal     func_800C0230
/* 0090C 80A537AC 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00910 80A537B0 A6020310 */  sh      $v0, 0x0310($s0)           ## 00000310
/* 00914 80A537B4 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00918 80A537B8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0091C 80A537BC 0C0300C5 */  jal     func_800C0314
/* 00920 80A537C0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00924 80A537C4 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00928 80A537C8 86050310 */  lh      $a1, 0x0310($s0)           ## 00000310
/* 0092C 80A537CC 0C0300C5 */  jal     func_800C0314
/* 00930 80A537D0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00934 80A537D4 3C0180A5 */  lui     $at, %hi(D_80A552D0)       ## $at = 80A50000
/* 00938 80A537D8 C42452D0 */  lwc1    $f4, %lo(D_80A552D0)($at)
/* 0093C 80A537DC 3C0180A5 */  lui     $at, %hi(D_80A552D4)       ## $at = 80A50000
/* 00940 80A537E0 86050310 */  lh      $a1, 0x0310($s0)           ## 00000310
/* 00944 80A537E4 E6040280 */  swc1    $f4, 0x0280($s0)           ## 00000280
/* 00948 80A537E8 C42652D4 */  lwc1    $f6, %lo(D_80A552D4)($at)
/* 0094C 80A537EC 3C0180A5 */  lui     $at, %hi(D_80A552D8)       ## $at = 80A50000
/* 00950 80A537F0 26060280 */  addiu   $a2, $s0, 0x0280           ## $a2 = 00000280
/* 00954 80A537F4 E6060284 */  swc1    $f6, 0x0284($s0)           ## 00000284
/* 00958 80A537F8 C42852D8 */  lwc1    $f8, %lo(D_80A552D8)($at)
/* 0095C 80A537FC 3C0180A5 */  lui     $at, %hi(D_80A552DC)       ## $at = 80A50000
/* 00960 80A53800 2607028C */  addiu   $a3, $s0, 0x028C           ## $a3 = 0000028C
/* 00964 80A53804 E6080288 */  swc1    $f8, 0x0288($s0)           ## 00000288
/* 00968 80A53808 C42A52DC */  lwc1    $f10, %lo(D_80A552DC)($at)
/* 0096C 80A5380C 3C0180A5 */  lui     $at, %hi(D_80A552E0)       ## $at = 80A50000
/* 00970 80A53810 E60A028C */  swc1    $f10, 0x028C($s0)          ## 0000028C
/* 00974 80A53814 C43052E0 */  lwc1    $f16, %lo(D_80A552E0)($at)
/* 00978 80A53818 3C0180A5 */  lui     $at, %hi(D_80A552E4)       ## $at = 80A50000
/* 0097C 80A5381C E6100290 */  swc1    $f16, 0x0290($s0)          ## 00000290
/* 00980 80A53820 C43252E4 */  lwc1    $f18, %lo(D_80A552E4)($at)
/* 00984 80A53824 E6120294 */  swc1    $f18, 0x0294($s0)          ## 00000294
/* 00988 80A53828 0C030136 */  jal     func_800C04D8
/* 0098C 80A5382C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00990 80A53830 3C0980A5 */  lui     $t1, %hi(func_80A53850)    ## $t1 = 80A50000
/* 00994 80A53834 25293850 */  addiu   $t1, $t1, %lo(func_80A53850) ## $t1 = 80A53850
/* 00998 80A53838 AE09025C */  sw      $t1, 0x025C($s0)           ## 0000025C
/* 0099C 80A5383C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 009A0 80A53840 8FB00028 */  lw      $s0, 0x0028($sp)
/* 009A4 80A53844 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 009A8 80A53848 03E00008 */  jr      $ra
/* 009AC 80A5384C 00000000 */  nop


