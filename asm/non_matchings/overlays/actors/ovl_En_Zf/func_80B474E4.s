glabel func_80B474E4
/* 03494 80B474E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03498 80B474E8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0349C 80B474EC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 034A0 80B474F0 AC8003E4 */  sw      $zero, 0x03E4($a0)         ## 000003E4
/* 034A4 80B474F4 3C0580B5 */  lui     $a1, %hi(D_80B4A280)       ## $a1 = 80B50000
/* 034A8 80B474F8 8CA5A280 */  lw      $a1, %lo(D_80B4A280)($a1)
/* 034AC 80B474FC AFA70018 */  sw      $a3, 0x0018($sp)
/* 034B0 80B47500 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 034B4 80B47504 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 034B8 80B47508 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 034BC 80B4750C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 034C0 80B47510 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 034C4 80B47514 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 034C8 80B47518 3C0580B4 */  lui     $a1, %hi(func_80B47544)    ## $a1 = 80B40000
/* 034CC 80B4751C 24A57544 */  addiu   $a1, $a1, %lo(func_80B47544) ## $a1 = 80B47544
/* 034D0 80B47520 AC8E03DC */  sw      $t6, 0x03DC($a0)           ## 000003DC
/* 034D4 80B47524 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 034D8 80B47528 E480040C */  swc1    $f0, 0x040C($a0)           ## 0000040C
/* 034DC 80B4752C 0C2D1014 */  jal     func_80B44050
/* 034E0 80B47530 E4800408 */  swc1    $f0, 0x0408($a0)           ## 00000408
/* 034E4 80B47534 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 034E8 80B47538 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 034EC 80B4753C 03E00008 */  jr      $ra
/* 034F0 80B47540 00000000 */  nop


