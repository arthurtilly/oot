glabel BgJyaIronobj_Init
/* 00960 80899200 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00964 80899204 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00968 80899208 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0096C 8089920C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00970 80899210 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00974 80899214 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00978 80899218 0C010D20 */  jal     func_80043480
              
/* 0097C 8089921C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00980 80899220 3C05808A */  lui     $a1, %hi(D_80899540)       ## $a1 = 808A0000
/* 00984 80899224 24A59540 */  addiu   $a1, $a1, %lo(D_80899540)  ## $a1 = 80899540
/* 00988 80899228 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0098C 8089922C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00990 80899230 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00994 80899234 0C226228 */  jal     func_808988A0              
/* 00998 80899238 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0099C 8089923C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 009A0 80899240 3C04808A */  lui     $a0, %hi(D_80899550)       ## $a0 = 808A0000
/* 009A4 80899244 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 009A8 80899248 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 009AC 8089924C 000FC080 */  sll     $t8, $t7,  2               
/* 009B0 80899250 00982021 */  addu    $a0, $a0, $t8              
/* 009B4 80899254 0C010620 */  jal     func_80041880
              
/* 009B8 80899258 8C849550 */  lw      $a0, %lo(D_80899550)($a0)  
/* 009BC 8089925C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 009C0 80899260 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 009C4 80899264 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 009C8 80899268 0C00FA9D */  jal     func_8003EA74
              ## func_8003EA74
/* 009CC 8089926C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 009D0 80899270 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 009D4 80899274 0C2264B6 */  jal     func_808992D8              
/* 009D8 80899278 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009DC 8089927C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009E0 80899280 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 009E4 80899284 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 009E8 80899288 03E00008 */  jr      $ra                        
/* 009EC 8089928C 00000000 */  nop


