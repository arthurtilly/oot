.late_rodata
glabel D_80B85E58
    .float 0.13

.text
glabel func_80B858B4
/* 002C4 80B858B4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 002C8 80B858B8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 002CC 80B858BC AFB10020 */  sw      $s1, 0x0020($sp)           
/* 002D0 80B858C0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 002D4 80B858C4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 002D8 80B858C8 0C00BD04 */  jal     func_8002F410              
/* 002DC 80B858CC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 002E0 80B858D0 10400011 */  beq     $v0, $zero, .L80B85918     
/* 002E4 80B858D4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002E8 80B858D8 862E001C */  lh      $t6, 0x001C($s1)           ## 0000001C
/* 002EC 80B858DC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002F0 80B858E0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 002F4 80B858E4 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 002F8 80B858E8 15E10007 */  bne     $t7, $at, .L80B85908       
/* 002FC 80B858EC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00300 80B858F0 94580EDA */  lhu     $t8, 0x0EDA($v0)           ## 8015F53A
/* 00304 80B858F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00308 80B858F8 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 0030C 80B858FC 37190002 */  ori     $t9, $t8, 0x0002           ## $t9 = 00000002
/* 00310 80B85900 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00314 80B85904 A4590EDA */  sh      $t9, 0x0EDA($v0)           ## 8015F53A
.L80B85908:
/* 00318 80B85908 0C00B55C */  jal     Actor_Kill
              
/* 0031C 80B8590C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00320 80B85910 1000001A */  beq     $zero, $zero, .L80B8597C   
/* 00324 80B85914 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B85918:
/* 00328 80B85918 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0032C 80B8591C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00330 80B85920 86260152 */  lh      $a2, 0x0152($s1)           ## 00000152
/* 00334 80B85924 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00338 80B85928 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 0033C 80B8592C 0C00BD0D */  jal     func_8002F434              
/* 00340 80B85930 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00344 80B85934 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 00348 80B85938 01104021 */  addu    $t0, $t0, $s0              
/* 0034C 80B8593C 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 00350 80B85940 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00354 80B85944 26250024 */  addiu   $a1, $s1, 0x0024           ## $a1 = 00000024
/* 00358 80B85948 3109000D */  andi    $t1, $t0, 0x000D           ## $t1 = 00000000
/* 0035C 80B8594C 1520000A */  bne     $t1, $zero, .L80B85978     
/* 00360 80B85950 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00364 80B85954 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00368 80B85958 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 0036C 80B8595C 3C0180B8 */  lui     $at, %hi(D_80B85E58)       ## $at = 80B80000
/* 00370 80B85960 C4285E58 */  lwc1    $f8, %lo(D_80B85E58)($at)  
/* 00374 80B85964 44060000 */  mfc1    $a2, $f0                   
/* 00378 80B85968 44070000 */  mfc1    $a3, $f0                   
/* 0037C 80B8596C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00380 80B85970 0C00A4F9 */  jal     func_800293E4              
/* 00384 80B85974 E7A80014 */  swc1    $f8, 0x0014($sp)           
.L80B85978:
/* 00388 80B85978 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B8597C:
/* 0038C 80B8597C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00390 80B85980 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00394 80B85984 03E00008 */  jr      $ra                        
/* 00398 80B85988 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
