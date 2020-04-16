glabel BgHakaTubo_Init
/* 00000 80881250 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80881254 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00008 80881258 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 8088125C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 80881260 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00014 80881264 3C058088 */  lui     $a1, %hi(D_80881BBC)       ## $a1 = 80880000
/* 00018 80881268 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 8088126C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00020 80881270 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00024 80881274 24A51BBC */  addiu   $a1, $a1, %lo(D_80881BBC)  ## $a1 = 80881BBC
/* 00028 80881278 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0002C 8088127C 0C010D20 */  jal     func_80043480
              
/* 00030 80881280 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00034 80881284 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00038 80881288 248408B8 */  addiu   $a0, $a0, 0x08B8           ## $a0 = 060108B8
/* 0003C 8088128C 0C010620 */  jal     func_80041880
              
/* 00040 80881290 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00044 80881294 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00048 80881298 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 0004C 8088129C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00050 808812A0 0C00FA9D */  jal     func_8003EA74
              ## func_8003EA74
/* 00054 808812A4 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00058 808812A8 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0005C 808812AC 2605016C */  addiu   $a1, $s0, 0x016C           ## $a1 = 0000016C
/* 00060 808812B0 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00064 808812B4 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00068 808812B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0006C 808812BC 3C078088 */  lui     $a3, %hi(D_80881B60)       ## $a3 = 80880000
/* 00070 808812C0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00074 808812C4 24E71B60 */  addiu   $a3, $a3, %lo(D_80881B60)  ## $a3 = 80881B60
/* 00078 808812C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0007C 808812CC 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00080 808812D0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00084 808812D4 260501B8 */  addiu   $a1, $s0, 0x01B8           ## $a1 = 000001B8
/* 00088 808812D8 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 0008C 808812DC 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00090 808812E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00094 808812E4 3C078088 */  lui     $a3, %hi(D_80881B8C)       ## $a3 = 80880000
/* 00098 808812E8 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0009C 808812EC 24E71B8C */  addiu   $a3, $a3, %lo(D_80881B8C)  ## $a3 = 80881B8C
/* 000A0 808812F0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000A4 808812F4 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000A8 808812F8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000AC 808812FC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000B0 80881300 00000000 */  nop
/* 000B4 80881304 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 000B8 80881308 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 000BC 8088130C 3C018088 */  lui     $at, %hi(D_80881BB8)       ## $at = 80880000
/* 000C0 80881310 3C188088 */  lui     $t8, %hi(func_808813A0)    ## $t8 = 80880000
/* 000C4 80881314 46040182 */  mul.s   $f6, $f0, $f4              
/* 000C8 80881318 271813A0 */  addiu   $t8, $t8, %lo(func_808813A0) ## $t8 = 808813A0
/* 000CC 8088131C 4600320D */  trunc.w.s $f8, $f6                   
/* 000D0 80881320 440F4000 */  mfc1    $t7, $f8                   
/* 000D4 80881324 00000000 */  nop
/* 000D8 80881328 A60F016A */  sh      $t7, 0x016A($s0)           ## 0000016A
/* 000DC 8088132C AC201BB8 */  sw      $zero, %lo(D_80881BB8)($at) 
/* 000E0 80881330 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
/* 000E4 80881334 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000E8 80881338 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 000EC 8088133C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 000F0 80881340 03E00008 */  jr      $ra                        
/* 000F4 80881344 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


