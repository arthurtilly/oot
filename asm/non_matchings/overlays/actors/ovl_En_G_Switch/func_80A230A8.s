glabel func_80A230A8
/* 011E8 80A230A8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 011EC 80A230AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 011F0 80A230B0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 011F4 80A230B4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 011F8 80A230B8 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 011FC 80A230BC 848F015A */  lh      $t7, 0x015A($a0)           ## 0000015A
/* 01200 80A230C0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01204 80A230C4 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 01208 80A230C8 15E00041 */  bne     $t7, $zero, .L80A231D0     
/* 0120C 80A230CC 3C0680A2 */  lui     $a2, %hi(D_80A23A8C)       ## $a2 = 80A20000
/* 01210 80A230D0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01214 80A230D4 24C63A8C */  addiu   $a2, $a2, %lo(D_80A23A8C)  ## $a2 = 80A23A8C
/* 01218 80A230D8 240703B7 */  addiu   $a3, $zero, 0x03B7         ## $a3 = 000003B7
/* 0121C 80A230DC 0C031AB1 */  jal     Graph_OpenDisps              
/* 01220 80A230E0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01224 80A230E4 0C024F46 */  jal     func_80093D18              
/* 01228 80A230E8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0122C 80A230EC 8FA40050 */  lw      $a0, 0x0050($sp)           
/* 01230 80A230F0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01234 80A230F4 0C00BAF3 */  jal     func_8002EBCC              
/* 01238 80A230F8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0123C 80A230FC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01240 80A23100 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 01244 80A23104 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 01248 80A23108 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0124C 80A2310C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 01250 80A23110 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01254 80A23114 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01258 80A23118 3C0580A2 */  lui     $a1, %hi(D_80A23AA0)       ## $a1 = 80A20000
/* 0125C 80A2311C 24A53AA0 */  addiu   $a1, $a1, %lo(D_80A23AA0)  ## $a1 = 80A23AA0
/* 01260 80A23120 240603BD */  addiu   $a2, $zero, 0x03BD         ## $a2 = 000003BD
/* 01264 80A23124 0C0346A2 */  jal     Matrix_NewMtx              
/* 01268 80A23128 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 0126C 80A2312C 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 01270 80A23130 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 01274 80A23134 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 01278 80A23138 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0127C 80A2313C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01280 80A23140 3C0480A2 */  lui     $a0, %hi(D_80A2375C)       ## $a0 = 80A20000
/* 01284 80A23144 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 01288 80A23148 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0128C 80A2314C AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 01290 80A23150 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01294 80A23154 8FAA0050 */  lw      $t2, 0x0050($sp)           
/* 01298 80A23158 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0129C 80A2315C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 012A0 80A23160 854B0158 */  lh      $t3, 0x0158($t2)           ## 00000158
/* 012A4 80A23164 3C0680A2 */  lui     $a2, %hi(D_80A23AB4)       ## $a2 = 80A20000
/* 012A8 80A23168 24C63AB4 */  addiu   $a2, $a2, %lo(D_80A23AB4)  ## $a2 = 80A23AB4
/* 012AC 80A2316C 000B6080 */  sll     $t4, $t3,  2               
/* 012B0 80A23170 008C2021 */  addu    $a0, $a0, $t4              
/* 012B4 80A23174 8C84375C */  lw      $a0, %lo(D_80A2375C)($a0)  
/* 012B8 80A23178 3C0C0404 */  lui     $t4, 0x0404                ## $t4 = 04040000
/* 012BC 80A2317C 258C2440 */  addiu   $t4, $t4, 0x2440           ## $t4 = 04042440
/* 012C0 80A23180 00047100 */  sll     $t6, $a0,  4               
/* 012C4 80A23184 000E7F02 */  srl     $t7, $t6, 28               
/* 012C8 80A23188 000FC080 */  sll     $t8, $t7,  2               
/* 012CC 80A2318C 0338C821 */  addu    $t9, $t9, $t8              
/* 012D0 80A23190 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 012D4 80A23194 00816824 */  and     $t5, $a0, $at              
/* 012D8 80A23198 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 012DC 80A2319C 01B94021 */  addu    $t0, $t5, $t9              
/* 012E0 80A231A0 01014821 */  addu    $t1, $t0, $at              
/* 012E4 80A231A4 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 012E8 80A231A8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 012EC 80A231AC 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 012F0 80A231B0 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 012F4 80A231B4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 012F8 80A231B8 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 012FC 80A231BC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 01300 80A231C0 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01304 80A231C4 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 01308 80A231C8 0C031AD5 */  jal     Graph_CloseDisps              
/* 0130C 80A231CC 240703C1 */  addiu   $a3, $zero, 0x03C1         ## $a3 = 000003C1
.L80A231D0:
/* 01310 80A231D0 8FAE0050 */  lw      $t6, 0x0050($sp)           
/* 01314 80A231D4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01318 80A231D8 85CF0150 */  lh      $t7, 0x0150($t6)           ## 00000150
/* 0131C 80A231DC 01C02025 */  or      $a0, $t6, $zero            ## $a0 = 00000000
/* 01320 80A231E0 55E10004 */  bnel    $t7, $at, .L80A231F4       
/* 01324 80A231E4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01328 80A231E8 0C288D35 */  jal     func_80A234D4              
/* 0132C 80A231EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01330 80A231F0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A231F4:
/* 01334 80A231F4 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01338 80A231F8 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0133C 80A231FC 03E00008 */  jr      $ra                        
/* 01340 80A23200 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


