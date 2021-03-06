glabel func_809D0D18
/* 02638 809D0D18 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0263C 809D0D1C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02640 809D0D20 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 02644 809D0D24 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 02648 809D0D28 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 0264C 809D0D2C AFA60050 */  sw      $a2, 0x0050($sp)           
/* 02650 809D0D30 14A1007B */  bne     $a1, $at, .L809D0F20       
/* 02654 809D0D34 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 02658 809D0D38 8FA80060 */  lw      $t0, 0x0060($sp)           
/* 0265C 809D0D3C 8FB0005C */  lw      $s0, 0x005C($sp)           
/* 02660 809D0D40 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 02664 809D0D44 8D020000 */  lw      $v0, 0x0000($t0)           ## 00000000
/* 02668 809D0D48 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 0266C 809D0D4C 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 02670 809D0D50 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 02674 809D0D54 AD0E0000 */  sw      $t6, 0x0000($t0)           ## 00000000
/* 02678 809D0D58 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0267C 809D0D5C 8FB80048 */  lw      $t8, 0x0048($sp)           
/* 02680 809D0D60 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 02684 809D0D64 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 02688 809D0D68 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0268C 809D0D6C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 02690 809D0D70 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 02694 809D0D74 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 02698 809D0D78 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 0269C 809D0D7C 920B023A */  lbu     $t3, 0x023A($s0)           ## 0000023A
/* 026A0 809D0D80 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 026A4 809D0D84 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 026A8 809D0D88 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 026AC 809D0D8C AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 026B0 809D0D90 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 026B4 809D0D94 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 026B8 809D0D98 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 026BC 809D0D9C AFA20040 */  sw      $v0, 0x0040($sp)           
/* 026C0 809D0DA0 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 026C4 809D0DA4 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 026C8 809D0DA8 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 026CC 809D0DAC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 026D0 809D0DB0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 026D4 809D0DB4 92020220 */  lbu     $v0, 0x0220($s0)           ## 00000220
/* 026D8 809D0DB8 10410003 */  beq     $v0, $at, .L809D0DC8       
/* 026DC 809D0DBC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 026E0 809D0DC0 54410058 */  bnel    $v0, $at, .L809D0F24       
/* 026E4 809D0DC4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809D0DC8:
/* 026E8 809D0DC8 0C034213 */  jal     Matrix_Push              
/* 026EC 809D0DCC 00000000 */  nop
/* 026F0 809D0DD0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 026F4 809D0DD4 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 026F8 809D0DD8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 026FC 809D0DDC 44066000 */  mfc1    $a2, $f12                  
/* 02700 809D0DE0 0C0342A3 */  jal     Matrix_Scale              
/* 02704 809D0DE4 46006386 */  mov.s   $f14, $f12                 
/* 02708 809D0DE8 3C01809D */  lui     $at, %hi(D_809D16B4)       ## $at = 809D0000
/* 0270C 809D0DEC C42616B4 */  lwc1    $f6, %lo(D_809D16B4)($at)  
/* 02710 809D0DF0 C6040258 */  lwc1    $f4, 0x0258($s0)           ## 00000258
/* 02714 809D0DF4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02718 809D0DF8 46062302 */  mul.s   $f12, $f4, $f6             
/* 0271C 809D0DFC 0C0342DC */  jal     Matrix_RotateX              
/* 02720 809D0E00 00000000 */  nop
/* 02724 809D0E04 3C01809D */  lui     $at, %hi(D_809D16B8)       ## $at = 809D0000
/* 02728 809D0E08 C42A16B8 */  lwc1    $f10, %lo(D_809D16B8)($at) 
/* 0272C 809D0E0C C6080258 */  lwc1    $f8, 0x0258($s0)           ## 00000258
/* 02730 809D0E10 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02734 809D0E14 460A4302 */  mul.s   $f12, $f8, $f10            
/* 02738 809D0E18 0C034348 */  jal     Matrix_RotateY              
/* 0273C 809D0E1C 00000000 */  nop
/* 02740 809D0E20 3C01809D */  lui     $at, %hi(D_809D16BC)       ## $at = 809D0000
/* 02744 809D0E24 C43216BC */  lwc1    $f18, %lo(D_809D16BC)($at) 
/* 02748 809D0E28 C6100258 */  lwc1    $f16, 0x0258($s0)          ## 00000258
/* 0274C 809D0E2C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02750 809D0E30 46128302 */  mul.s   $f12, $f16, $f18           
/* 02754 809D0E34 0C0343B5 */  jal     Matrix_RotateZ              
/* 02758 809D0E38 00000000 */  nop
/* 0275C 809D0E3C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02760 809D0E40 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 02764 809D0E44 C6000260 */  lwc1    $f0, 0x0260($s0)           ## 00000260
/* 02768 809D0E48 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0276C 809D0E4C 46001301 */  sub.s   $f12, $f2, $f0             
/* 02770 809D0E50 46020380 */  add.s   $f14, $f0, $f2             
/* 02774 809D0E54 44066000 */  mfc1    $a2, $f12                  
/* 02778 809D0E58 0C0342A3 */  jal     Matrix_Scale              
/* 0277C 809D0E5C 00000000 */  nop
/* 02780 809D0E60 3C01809D */  lui     $at, %hi(D_809D16C0)       ## $at = 809D0000
/* 02784 809D0E64 C42616C0 */  lwc1    $f6, %lo(D_809D16C0)($at)  
/* 02788 809D0E68 C6040258 */  lwc1    $f4, 0x0258($s0)           ## 00000258
/* 0278C 809D0E6C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02790 809D0E70 46062302 */  mul.s   $f12, $f4, $f6             
/* 02794 809D0E74 0C0343B5 */  jal     Matrix_RotateZ              
/* 02798 809D0E78 46006307 */  neg.s   $f12, $f12                 
/* 0279C 809D0E7C 3C01809D */  lui     $at, %hi(D_809D16C4)       ## $at = 809D0000
/* 027A0 809D0E80 C42A16C4 */  lwc1    $f10, %lo(D_809D16C4)($at) 
/* 027A4 809D0E84 C6080258 */  lwc1    $f8, 0x0258($s0)           ## 00000258
/* 027A8 809D0E88 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 027AC 809D0E8C 460A4302 */  mul.s   $f12, $f8, $f10            
/* 027B0 809D0E90 0C034348 */  jal     Matrix_RotateY              
/* 027B4 809D0E94 46006307 */  neg.s   $f12, $f12                 
/* 027B8 809D0E98 3C01809D */  lui     $at, %hi(D_809D16C8)       ## $at = 809D0000
/* 027BC 809D0E9C C43216C8 */  lwc1    $f18, %lo(D_809D16C8)($at) 
/* 027C0 809D0EA0 C6100258 */  lwc1    $f16, 0x0258($s0)          ## 00000258
/* 027C4 809D0EA4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 027C8 809D0EA8 46128302 */  mul.s   $f12, $f16, $f18           
/* 027CC 809D0EAC 0C0342DC */  jal     Matrix_RotateX              
/* 027D0 809D0EB0 46006307 */  neg.s   $f12, $f12                 
/* 027D4 809D0EB4 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 027D8 809D0EB8 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 027DC 809D0EBC 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 027E0 809D0EC0 8C620000 */  lw      $v0, 0x0000($v1)           ## 00000000
/* 027E4 809D0EC4 3C05809D */  lui     $a1, %hi(D_809D1560)       ## $a1 = 809D0000
/* 027E8 809D0EC8 24A51560 */  addiu   $a1, $a1, %lo(D_809D1560)  ## $a1 = 809D1560
/* 027EC 809D0ECC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 027F0 809D0ED0 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 027F4 809D0ED4 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 027F8 809D0ED8 8FB80048 */  lw      $t8, 0x0048($sp)           
/* 027FC 809D0EDC 2406056C */  addiu   $a2, $zero, 0x056C         ## $a2 = 0000056C
/* 02800 809D0EE0 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02804 809D0EE4 0C0346A2 */  jal     Matrix_NewMtx              
/* 02808 809D0EE8 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0280C 809D0EEC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 02810 809D0EF0 8FB90060 */  lw      $t9, 0x0060($sp)           
/* 02814 809D0EF4 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 02818 809D0EF8 8F220000 */  lw      $v0, 0x0000($t9)           ## 00000000
/* 0281C 809D0EFC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 02820 809D0F00 AF290000 */  sw      $t1, 0x0000($t9)           ## 00000000
/* 02824 809D0F04 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 02828 809D0F08 8FAB0050 */  lw      $t3, 0x0050($sp)           
/* 0282C 809D0F0C 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 02830 809D0F10 0C034221 */  jal     Matrix_Pull              
/* 02834 809D0F14 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 02838 809D0F18 10000002 */  beq     $zero, $zero, .L809D0F24   
/* 0283C 809D0F1C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809D0F20:
/* 02840 809D0F20 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809D0F24:
/* 02844 809D0F24 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 02848 809D0F28 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0284C 809D0F2C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 02850 809D0F30 03E00008 */  jr      $ra                        
/* 02854 809D0F34 00000000 */  nop


