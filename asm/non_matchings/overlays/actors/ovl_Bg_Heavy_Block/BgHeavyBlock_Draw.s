glabel BgHeavyBlock_Draw
/* 0147C 80884C0C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01480 80884C10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01484 80884C14 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01488 80884C18 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 0148C 80884C1C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 01490 80884C20 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01494 80884C24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01498 80884C28 3C068088 */  lui     $a2, %hi(D_80884F60)       ## $a2 = 80880000
/* 0149C 80884C2C 24C64F60 */  addiu   $a2, $a2, %lo(D_80884F60)  ## $a2 = 80884F60
/* 014A0 80884C30 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 014A4 80884C34 24070388 */  addiu   $a3, $zero, 0x0388         ## $a3 = 00000388
/* 014A8 80884C38 AFA20044 */  sw      $v0, 0x0044($sp)           
/* 014AC 80884C3C 0C031AB1 */  jal     Graph_OpenDisps              
/* 014B0 80884C40 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 014B4 80884C44 8E030174 */  lw      $v1, 0x0174($s0)           ## 00000174
/* 014B8 80884C48 3C0F8088 */  lui     $t7, %hi(func_808844D0)    ## $t7 = 80880000
/* 014BC 80884C4C 25EF44D0 */  addiu   $t7, $t7, %lo(func_808844D0) ## $t7 = 808844D0
/* 014C0 80884C50 146F0011 */  bne     $v1, $t7, .L80884C98       
/* 014C4 80884C54 8FA20044 */  lw      $v0, 0x0044($sp)           
/* 014C8 80884C58 C44C03B0 */  lwc1    $f12, 0x03B0($v0)          ## 000003B0
/* 014CC 80884C5C C44E03B4 */  lwc1    $f14, 0x03B4($v0)          ## 000003B4
/* 014D0 80884C60 8C4603B8 */  lw      $a2, 0x03B8($v0)           ## 000003B8
/* 014D4 80884C64 0C0345A5 */  jal     func_800D1694              
/* 014D8 80884C68 260700B4 */  addiu   $a3, $s0, 0x00B4           ## $a3 = 000000B4
/* 014DC 80884C6C C604016C */  lwc1    $f4, 0x016C($s0)           ## 0000016C
/* 014E0 80884C70 C60C0164 */  lwc1    $f12, 0x0164($s0)          ## 00000164
/* 014E4 80884C74 C60E0168 */  lwc1    $f14, 0x0168($s0)          ## 00000168
/* 014E8 80884C78 46002187 */  neg.s   $f6, $f4                   
/* 014EC 80884C7C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 014F0 80884C80 44063000 */  mfc1    $a2, $f6                   
/* 014F4 80884C84 46006307 */  neg.s   $f12, $f12                 
/* 014F8 80884C88 0C034261 */  jal     Matrix_Translate              
/* 014FC 80884C8C 46007387 */  neg.s   $f14, $f14                 
/* 01500 80884C90 10000019 */  beq     $zero, $zero, .L80884CF8   
/* 01504 80884C94 00000000 */  nop
.L80884C98:
/* 01508 80884C98 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0150C 80884C9C C60A006C */  lwc1    $f10, 0x006C($s0)          ## 0000006C
/* 01510 80884CA0 3C188088 */  lui     $t8, %hi(func_80884978)    ## $t8 = 80880000
/* 01514 80884CA4 27184978 */  addiu   $t8, $t8, %lo(func_80884978) ## $t8 = 80884978
/* 01518 80884CA8 460A4032 */  c.eq.s  $f8, $f10                  
/* 0151C 80884CAC 00000000 */  nop
/* 01520 80884CB0 45000011 */  bc1f    .L80884CF8                 
/* 01524 80884CB4 00000000 */  nop
/* 01528 80884CB8 1478000F */  bne     $v1, $t8, .L80884CF8       
/* 0152C 80884CBC 260700B4 */  addiu   $a3, $s0, 0x00B4           ## $a3 = 000000B4
/* 01530 80884CC0 C60C0008 */  lwc1    $f12, 0x0008($s0)          ## 00000008
/* 01534 80884CC4 C60E000C */  lwc1    $f14, 0x000C($s0)          ## 0000000C
/* 01538 80884CC8 0C0345A5 */  jal     func_800D1694              
/* 0153C 80884CCC 8E060010 */  lw      $a2, 0x0010($s0)           ## 00000010
/* 01540 80884CD0 3C018088 */  lui     $at, %hi(D_80884ED4)       ## $at = 80880000
/* 01544 80884CD4 C4304EDC */  lwc1    $f16, %lo(D_80884EDC)($at) 
/* 01548 80884CD8 C42C4ED4 */  lwc1    $f12, %lo(D_80884ED4)($at) 
/* 0154C 80884CDC C42E4ED8 */  lwc1    $f14, %lo(D_80884ED8)($at) 
/* 01550 80884CE0 46008487 */  neg.s   $f18, $f16                 
/* 01554 80884CE4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01558 80884CE8 44069000 */  mfc1    $a2, $f18                  
/* 0155C 80884CEC 46006307 */  neg.s   $f12, $f12                 
/* 01560 80884CF0 0C034261 */  jal     Matrix_Translate              
/* 01564 80884CF4 46007387 */  neg.s   $f14, $f14                 
.L80884CF8:
/* 01568 80884CF8 3C048088 */  lui     $a0, %hi(D_80884EC8)       ## $a0 = 80880000
/* 0156C 80884CFC 24844EC8 */  addiu   $a0, $a0, %lo(D_80884EC8)  ## $a0 = 80884EC8
/* 01570 80884D00 0C0346BD */  jal     Matrix_MultVec3f              
/* 01574 80884D04 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 01578 80884D08 3C048088 */  lui     $a0, %hi(D_80884ED4)       ## $a0 = 80880000
/* 0157C 80884D0C 24844ED4 */  addiu   $a0, $a0, %lo(D_80884ED4)  ## $a0 = 80884ED4
/* 01580 80884D10 0C0346BD */  jal     Matrix_MultVec3f              
/* 01584 80884D14 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 01588 80884D18 8FB90054 */  lw      $t9, 0x0054($sp)           
/* 0158C 80884D1C 0C024F46 */  jal     func_80093D18              
/* 01590 80884D20 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 01594 80884D24 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 01598 80884D28 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 0159C 80884D2C 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 015A0 80884D30 8C6202C0 */  lw      $v0, 0x02C0($v1)           ## 000002C0
/* 015A4 80884D34 3C058088 */  lui     $a1, %hi(D_80884F78)       ## $a1 = 80880000
/* 015A8 80884D38 24A54F78 */  addiu   $a1, $a1, %lo(D_80884F78)  ## $a1 = 80884F78
/* 015AC 80884D3C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 015B0 80884D40 AC6802C0 */  sw      $t0, 0x02C0($v1)           ## 000002C0
/* 015B4 80884D44 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 015B8 80884D48 8FAA0054 */  lw      $t2, 0x0054($sp)           
/* 015BC 80884D4C 240603A3 */  addiu   $a2, $zero, 0x03A3         ## $a2 = 000003A3
/* 015C0 80884D50 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 015C4 80884D54 0C0346A2 */  jal     Matrix_NewMtx              
/* 015C8 80884D58 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 015CC 80884D5C AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 015D0 80884D60 8FAB0040 */  lw      $t3, 0x0040($sp)           
/* 015D4 80884D64 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 015D8 80884D68 25CE13C0 */  addiu   $t6, $t6, 0x13C0           ## $t6 = 060013C0
/* 015DC 80884D6C 8D6202C0 */  lw      $v0, 0x02C0($t3)           ## 000002C0
/* 015E0 80884D70 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 015E4 80884D74 3C068088 */  lui     $a2, %hi(D_80884F90)       ## $a2 = 80880000
/* 015E8 80884D78 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 015EC 80884D7C AD6C02C0 */  sw      $t4, 0x02C0($t3)           ## 000002C0
/* 015F0 80884D80 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 015F4 80884D84 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 015F8 80884D88 8FAF0054 */  lw      $t7, 0x0054($sp)           
/* 015FC 80884D8C 24C64F90 */  addiu   $a2, $a2, %lo(D_80884F90)  ## $a2 = 80884F90
/* 01600 80884D90 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 01604 80884D94 240703A7 */  addiu   $a3, $zero, 0x03A7         ## $a3 = 000003A7
/* 01608 80884D98 0C031AD5 */  jal     Graph_CloseDisps              
/* 0160C 80884D9C 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 01610 80884DA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01614 80884DA4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01618 80884DA8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 0161C 80884DAC 03E00008 */  jr      $ra                        
/* 01620 80884DB0 00000000 */  nop


