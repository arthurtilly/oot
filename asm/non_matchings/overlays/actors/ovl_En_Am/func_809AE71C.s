glabel func_809AE71C
/* 007FC 809AE71C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00800 809AE720 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00804 809AE724 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00808 809AE728 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0080C 809AE72C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00810 809AE730 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00814 809AE734 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00818 809AE738 24845B3C */  addiu   $a0, $a0, 0x5B3C           ## $a0 = 06005B3C
/* 0081C 809AE73C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00820 809AE740 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00824 809AE744 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 00828 809AE748 468021A0 */  cvt.s.w $f6, $f4
/* 0082C 809AE74C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00830 809AE750 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00834 809AE754 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00838 809AE758 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 0083C 809AE75C 24A55B3C */  addiu   $a1, $a1, 0x5B3C           ## $a1 = 06005B3C
/* 00840 809AE760 46083281 */  sub.s   $f10, $f6, $f8
/* 00844 809AE764 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 00848 809AE768 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0084C 809AE76C 3C074080 */  lui     $a3, 0x4080                ## $a3 = 40800000
/* 00850 809AE770 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 00854 809AE774 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00858 809AE778 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 0085C 809AE77C 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 00860 809AE780 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00864 809AE784 AE0F01A8 */  sw      $t7, 0x01A8($s0)           ## 000001A8
/* 00868 809AE788 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0086C 809AE78C 24053847 */  addiu   $a1, $zero, 0x3847         ## $a1 = 00003847
/* 00870 809AE790 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00874 809AE794 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 00878 809AE798 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0087C 809AE79C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00880 809AE7A0 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 00884 809AE7A4 0C26B7CA */  jal     func_809ADF28
/* 00888 809AE7A8 86070032 */  lh      $a3, 0x0032($s0)           ## 00000032
/* 0088C 809AE7AC 10400005 */  beq     $v0, $zero, .L809AE7C4
/* 00890 809AE7B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00894 809AE7B4 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 00898 809AE7B8 44819000 */  mtc1    $at, $f18                  ## $f18 = -6.00
/* 0089C 809AE7BC 00000000 */  nop
/* 008A0 809AE7C0 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
.L809AE7C4:
/* 008A4 809AE7C4 A2000114 */  sb      $zero, 0x0114($s0)         ## 00000114
/* 008A8 809AE7C8 0C00CB1F */  jal     func_80032C7C
/* 008AC 809AE7CC 8FA40034 */  lw      $a0, 0x0034($sp)
/* 008B0 809AE7D0 3C05809B */  lui     $a1, %hi(func_809AEF00)    ## $a1 = 809B0000
/* 008B4 809AE7D4 24A5EF00 */  addiu   $a1, $a1, %lo(func_809AEF00) ## $a1 = 809AEF00
/* 008B8 809AE7D8 0C26B7C8 */  jal     func_809ADF20
/* 008BC 809AE7DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008C0 809AE7E0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 008C4 809AE7E4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 008C8 809AE7E8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 008CC 809AE7EC 03E00008 */  jr      $ra
/* 008D0 809AE7F0 00000000 */  nop
