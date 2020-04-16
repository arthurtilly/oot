glabel BgHidanDalm_Init
/* 00000 80885E20 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80885E24 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00008 80885E28 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80885E2C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00010 80885E30 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00014 80885E34 3C058088 */  lui     $a1, %hi(D_808865A0)       ## $a1 = 80880000
/* 00018 80885E38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80885E3C AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00020 80885E40 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00024 80885E44 24A565A0 */  addiu   $a1, $a1, %lo(D_808865A0)  ## $a1 = 808865A0
/* 00028 80885E48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0002C 80885E4C 0C010D20 */  jal     func_80043480
              
/* 00030 80885E50 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00034 80885E54 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00038 80885E58 2484DA10 */  addiu   $a0, $a0, 0xDA10           ## $a0 = 0600DA10
/* 0003C 80885E5C 0C010620 */  jal     func_80041880
              
/* 00040 80885E60 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00044 80885E64 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00048 80885E68 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 0004C 80885E6C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00050 80885E70 0C00FA9D */  jal     func_8003EA74
              ## func_8003EA74
/* 00054 80885E74 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 00058 80885E78 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0005C 80885E7C 2605016C */  addiu   $a1, $s0, 0x016C           ## $a1 = 0000016C
/* 00060 80885E80 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00064 80885E84 0C0171F8 */  jal     func_8005C7E0              
/* 00068 80885E88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0006C 80885E8C 3C078088 */  lui     $a3, %hi(D_80886590)       ## $a3 = 80880000
/* 00070 80885E90 260E018C */  addiu   $t6, $s0, 0x018C           ## $t6 = 0000018C
/* 00074 80885E94 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00078 80885E98 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0007C 80885E9C 24E76590 */  addiu   $a3, $a3, %lo(D_80886590)  ## $a3 = 80886590
/* 00080 80885EA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00084 80885EA4 0C0172EB */  jal     func_8005CBAC              
/* 00088 80885EA8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0008C 80885EAC 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00090 80885EB0 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00094 80885EB4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00098 80885EB8 000FCA03 */  sra     $t9, $t7,  8               
/* 0009C 80885EBC 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000000
/* 000A0 80885EC0 A2190168 */  sb      $t9, 0x0168($s0)           ## 00000168
/* 000A4 80885EC4 A609001C */  sh      $t1, 0x001C($s0)           ## 0000001C
/* 000A8 80885EC8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000AC 80885ECC 332500FF */  andi    $a1, $t9, 0x00FF           ## $a1 = 00000000
/* 000B0 80885ED0 10400005 */  beq     $v0, $zero, .L80885EE8     
/* 000B4 80885ED4 3C0A8088 */  lui     $t2, %hi(func_80885F4C)    ## $t2 = 80880000
/* 000B8 80885ED8 0C00B55C */  jal     Actor_Kill
              
/* 000BC 80885EDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000C0 80885EE0 10000004 */  beq     $zero, $zero, .L80885EF4   
/* 000C4 80885EE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80885EE8:
/* 000C8 80885EE8 254A5F4C */  addiu   $t2, $t2, %lo(func_80885F4C) ## $t2 = 00005F4C
/* 000CC 80885EEC AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
/* 000D0 80885EF0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80885EF4:
/* 000D4 80885EF4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 000D8 80885EF8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 000DC 80885EFC 03E00008 */  jr      $ra                        
/* 000E0 80885F00 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
