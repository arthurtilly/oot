glabel func_809841F4
/* 00EF4 809841F4 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00EF8 809841F8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EFC 809841FC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F00 80984200 AFA40068 */  sw      $a0, 0x0068($sp)           
/* 00F04 80984204 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 00F08 80984208 AFA60070 */  sw      $a2, 0x0070($sp)           
/* 00F0C 8098420C AFA70074 */  sw      $a3, 0x0074($sp)           
/* 00F10 80984210 8C900000 */  lw      $s0, 0x0000($a0)           ## 00000000
/* 00F14 80984214 0C260D0A */  jal     func_80983428              
/* 00F18 80984218 8FA40078 */  lw      $a0, 0x0078($sp)           
/* 00F1C 8098421C 3C068098 */  lui     $a2, %hi(D_809848AC)       ## $a2 = 80980000
/* 00F20 80984220 E7A0005C */  swc1    $f0, 0x005C($sp)           
/* 00F24 80984224 24C648AC */  addiu   $a2, $a2, %lo(D_809848AC)  ## $a2 = 809848AC
/* 00F28 80984228 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 00F2C 8098422C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F30 80984230 0C031AB1 */  jal     Graph_OpenDisps              
/* 00F34 80984234 2407010C */  addiu   $a3, $zero, 0x010C         ## $a3 = 0000010C
/* 00F38 80984238 8FAE006C */  lw      $t6, 0x006C($sp)           
/* 00F3C 8098423C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F40 80984240 C7A4005C */  lwc1    $f4, 0x005C($sp)           
/* 00F44 80984244 15C1006A */  bne     $t6, $at, .L809843F0       
/* 00F48 80984248 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00F4C 8098424C 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 00F50 80984250 8FAF0078 */  lw      $t7, 0x0078($sp)           
/* 00F54 80984254 4604303E */  c.le.s  $f6, $f4                   
/* 00F58 80984258 00000000 */  nop
/* 00F5C 8098425C 45000064 */  bc1f    .L809843F0                 
/* 00F60 80984260 00000000 */  nop
/* 00F64 80984264 85E2001C */  lh      $v0, 0x001C($t7)           ## 0000001C
/* 00F68 80984268 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00F6C 8098426C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00F70 80984270 10410009 */  beq     $v0, $at, .L80984298       
/* 00F74 80984274 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00F78 80984278 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00F7C 8098427C 1041001B */  beq     $v0, $at, .L809842EC       
/* 00F80 80984280 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 00F84 80984284 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00F88 80984288 1041002E */  beq     $v0, $at, .L80984344       
/* 00F8C 8098428C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00F90 80984290 10000042 */  beq     $zero, $zero, .L8098439C   
/* 00F94 80984294 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
.L80984298:
/* 00F98 80984298 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00F9C 8098429C 3C058098 */  lui     $a1, %hi(D_809848C4)       ## $a1 = 80980000
/* 00FA0 809842A0 24A548C4 */  addiu   $a1, $a1, %lo(D_809848C4)  ## $a1 = 809848C4
/* 00FA4 809842A4 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00FA8 809842A8 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00FAC 809842AC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00FB0 809842B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FB4 809842B4 24060112 */  addiu   $a2, $zero, 0x0112         ## $a2 = 00000112
/* 00FB8 809842B8 0C0346A2 */  jal     Matrix_NewMtx              
/* 00FBC 809842BC AFA20044 */  sw      $v0, 0x0044($sp)           
/* 00FC0 809842C0 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 00FC4 809842C4 3C0A0601 */  lui     $t2, 0x0601                ## $t2 = 06010000
/* 00FC8 809842C8 254A7028 */  addiu   $t2, $t2, 0x7028           ## $t2 = 06017028
/* 00FCC 809842CC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00FD0 809842D0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00FD4 809842D4 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 00FD8 809842D8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00FDC 809842DC AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 00FE0 809842E0 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00FE4 809842E4 10000042 */  beq     $zero, $zero, .L809843F0   
/* 00FE8 809842E8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
.L809842EC:
/* 00FEC 809842EC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00FF0 809842F0 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = 00000003
/* 00FF4 809842F4 3C058098 */  lui     $a1, %hi(D_809848DC)       ## $a1 = 80980000
/* 00FF8 809842F8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00FFC 809842FC AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 01000 80984300 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01004 80984304 24A548DC */  addiu   $a1, $a1, %lo(D_809848DC)  ## $a1 = 809848DC
/* 01008 80984308 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0100C 8098430C 24060118 */  addiu   $a2, $zero, 0x0118         ## $a2 = 00000118
/* 01010 80984310 0C0346A2 */  jal     Matrix_NewMtx              
/* 01014 80984314 AFA2003C */  sw      $v0, 0x003C($sp)           
/* 01018 80984318 8FA3003C */  lw      $v1, 0x003C($sp)           
/* 0101C 8098431C 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 01020 80984320 25EF7170 */  addiu   $t7, $t7, 0x7170           ## $t7 = 06017170
/* 01024 80984324 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01028 80984328 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0102C 8098432C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 01030 80984330 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01034 80984334 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 01038 80984338 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 0103C 8098433C 1000002C */  beq     $zero, $zero, .L809843F0   
/* 01040 80984340 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
.L80984344:
/* 01044 80984344 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01048 80984348 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = 00000003
/* 0104C 8098434C 3C058098 */  lui     $a1, %hi(D_809848F4)       ## $a1 = 80980000
/* 01050 80984350 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01054 80984354 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01058 80984358 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0105C 8098435C 24A548F4 */  addiu   $a1, $a1, %lo(D_809848F4)  ## $a1 = 809848F4
/* 01060 80984360 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01064 80984364 2406011E */  addiu   $a2, $zero, 0x011E         ## $a2 = 0000011E
/* 01068 80984368 0C0346A2 */  jal     Matrix_NewMtx              
/* 0106C 8098436C AFA20034 */  sw      $v0, 0x0034($sp)           
/* 01070 80984370 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 01074 80984374 3C0A0601 */  lui     $t2, 0x0601                ## $t2 = 06010000
/* 01078 80984378 254A6BE0 */  addiu   $t2, $t2, 0x6BE0           ## $t2 = 06016BE0
/* 0107C 8098437C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01080 80984380 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01084 80984384 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 01088 80984388 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0108C 8098438C AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 01090 80984390 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 01094 80984394 10000016 */  beq     $zero, $zero, .L809843F0   
/* 01098 80984398 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
.L8098439C:
/* 0109C 8098439C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 010A0 809843A0 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = 00000003
/* 010A4 809843A4 3C058098 */  lui     $a1, %hi(D_8098490C)       ## $a1 = 80980000
/* 010A8 809843A8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 010AC 809843AC AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 010B0 809843B0 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 010B4 809843B4 24A5490C */  addiu   $a1, $a1, %lo(D_8098490C)  ## $a1 = 8098490C
/* 010B8 809843B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010BC 809843BC 24060124 */  addiu   $a2, $zero, 0x0124         ## $a2 = 00000124
/* 010C0 809843C0 0C0346A2 */  jal     Matrix_NewMtx              
/* 010C4 809843C4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 010C8 809843C8 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 010CC 809843CC 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 010D0 809843D0 25EF6CD8 */  addiu   $t7, $t7, 0x6CD8           ## $t7 = 06016CD8
/* 010D4 809843D4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 010D8 809843D8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 010DC 809843DC 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 010E0 809843E0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 010E4 809843E4 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 010E8 809843E8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 010EC 809843EC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
.L809843F0:
/* 010F0 809843F0 3C068098 */  lui     $a2, %hi(D_80984924)       ## $a2 = 80980000
/* 010F4 809843F4 24C64924 */  addiu   $a2, $a2, %lo(D_80984924)  ## $a2 = 80984924
/* 010F8 809843F8 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 010FC 809843FC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01100 80984400 0C031AD5 */  jal     Graph_CloseDisps              
/* 01104 80984404 2407012C */  addiu   $a3, $zero, 0x012C         ## $a3 = 0000012C
/* 01108 80984408 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0110C 8098440C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01110 80984410 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 01114 80984414 03E00008 */  jr      $ra                        
/* 01118 80984418 00000000 */  nop


