glabel func_8087E2D8
/* 004A8 8087E2D8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004AC 8087E2DC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 004B0 8087E2E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004B4 8087E2E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004B8 8087E2E8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 004BC 8087E2EC 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 004C0 8087E2F0 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 004C4 8087E2F4 0C01DE80 */  jal     Math_ApproxF
              
/* 004C8 8087E2F8 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 004CC 8087E2FC 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 004D0 8087E300 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 004D4 8087E304 0C01DE80 */  jal     Math_ApproxF
              
/* 004D8 8087E308 8E060068 */  lw      $a2, 0x0068($s0)           ## 00000068
/* 004DC 8087E30C 10400008 */  beq     $v0, $zero, .L8087E330     
/* 004E0 8087E310 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004E4 8087E314 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004E8 8087E318 0C00B56E */  jal     Actor_SetHeight
              
/* 004EC 8087E31C 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 004F0 8087E320 3C0E8088 */  lui     $t6, %hi(func_8087E34C)    ## $t6 = 80880000
/* 004F4 8087E324 25CEE34C */  addiu   $t6, $t6, %lo(func_8087E34C) ## $t6 = 8087E34C
/* 004F8 8087E328 10000003 */  beq     $zero, $zero, .L8087E338   
/* 004FC 8087E32C AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
.L8087E330:
/* 00500 8087E330 0C00BE5D */  jal     func_8002F974              
/* 00504 8087E334 24052859 */  addiu   $a1, $zero, 0x2859         ## $a1 = 00002859
.L8087E338:
/* 00508 8087E338 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0050C 8087E33C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00510 8087E340 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00514 8087E344 03E00008 */  jr      $ra                        
/* 00518 8087E348 00000000 */  nop


