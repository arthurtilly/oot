.rdata
glabel D_808552A0
    .asciz "../z_player.c"
    .balign 4

glabel D_808552B0
    .asciz "../z_player.c"
    .balign 4

glabel D_808552C0
    .asciz "../z_player.c"
    .balign 4

glabel D_808552D0
    .asciz "../z_player.c"
    .balign 4

glabel D_808552E0
    .asciz "../z_player.c"
    .balign 4

.late_rodata
glabel D_808554DC
 .word 0xC4966000
glabel D_808554E0
 .word 0xC4966000
glabel D_808554E4
 .word 0x3DE38E39

.text
glabel func_8084A0E8
/* 17ED8 8084A0E8 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 17EDC 8084A0EC AFB00034 */  sw      $s0, 0x0034($sp)           
/* 17EE0 8084A0F0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 17EE4 8084A0F4 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 17EE8 8084A0F8 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 17EEC 8084A0FC AFA40090 */  sw      $a0, 0x0090($sp)           
/* 17EF0 8084A100 AFA60098 */  sw      $a2, 0x0098($sp)           
/* 17EF4 8084A104 AFA7009C */  sw      $a3, 0x009C($sp)           
/* 17EF8 8084A108 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 17EFC 8084A10C 3C068085 */  lui     $a2, %hi(D_808552A0)       ## $a2 = 80850000
/* 17F00 8084A110 24C652A0 */  addiu   $a2, $a2, %lo(D_808552A0)  ## $a2 = 808552A0
/* 17F04 8084A114 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFEC
/* 17F08 8084A118 24074B1C */  addiu   $a3, $zero, 0x4B1C         ## $a3 = 00004B1C
/* 17F0C 8084A11C 0C031AB1 */  jal     Graph_OpenDisps              
/* 17F10 8084A120 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 17F14 8084A124 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 17F18 8084A128 8FA5009C */  lw      $a1, 0x009C($sp)           
/* 17F1C 8084A12C 3C04DB06 */  lui     $a0, 0xDB06                ## $a0 = DB060000
/* 17F20 8084A130 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 17F24 8084A134 AE2F02C0 */  sw      $t7, 0x02C0($s1)           ## 000002C0
/* 17F28 8084A138 34840030 */  ori     $a0, $a0, 0x0030           ## $a0 = DB060030
/* 17F2C 8084A13C AC640000 */  sw      $a0, 0x0000($v1)           ## 00000000
/* 17F30 8084A140 AC650004 */  sw      $a1, 0x0004($v1)           ## 00000004
/* 17F34 8084A144 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 17F38 8084A148 3C0C8009 */  lui     $t4, 0x8009                ## $t4 = 80090000
/* 17F3C 8084A14C 258C0D20 */  addiu   $t4, $t4, 0x0D20           ## $t4 = 80090D20
/* 17F40 8084A150 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 17F44 8084A154 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 17F48 8084A158 AC450004 */  sw      $a1, 0x0004($v0)           ## 00000004
/* 17F4C 8084A15C AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 17F50 8084A160 8FB90098 */  lw      $t9, 0x0098($sp)           
/* 17F54 8084A164 920701B6 */  lbu     $a3, 0x01B6($s0)           ## 000001B6
/* 17F58 8084A168 8E0601D4 */  lw      $a2, 0x01D4($s0)           ## 000001D4
/* 17F5C 8084A16C 8E0501B8 */  lw      $a1, 0x01B8($s0)           ## 000001B8
/* 17F60 8084A170 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 17F64 8084A174 8208014C */  lb      $t0, 0x014C($s0)           ## 0000014C
/* 17F68 8084A178 8FAB00A0 */  lw      $t3, 0x00A0($sp)           
/* 17F6C 8084A17C 8FA40090 */  lw      $a0, 0x0090($sp)           
/* 17F70 8084A180 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 17F74 8084A184 8209014F */  lb      $t1, 0x014F($s0)           ## 0000014F
/* 17F78 8084A188 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 17F7C 8084A18C 860A00BA */  lh      $t2, 0x00BA($s0)           ## 000000BA
/* 17F80 8084A190 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 17F84 8084A194 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 17F88 8084A198 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 17F8C 8084A19C 0C023D1C */  jal     func_8008F470              
/* 17F90 8084A1A0 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 17F94 8084A1A4 8FAD00A0 */  lw      $t5, 0x00A0($sp)           
/* 17F98 8084A1A8 3C0E8009 */  lui     $t6, 0x8009                ## $t6 = 80090000
/* 17F9C 8084A1AC 25CE0014 */  addiu   $t6, $t6, 0x0014           ## $t6 = 80090014
/* 17FA0 8084A1B0 55AE0051 */  bnel    $t5, $t6, .L8084A2F8       
/* 17FA4 8084A1B4 8209014F */  lb      $t1, 0x014F($s0)           ## 0000014F
/* 17FA8 8084A1B8 920F015F */  lbu     $t7, 0x015F($s0)           ## 0000015F
/* 17FAC 8084A1BC 8FB80090 */  lw      $t8, 0x0090($sp)           
/* 17FB0 8084A1C0 24050080 */  addiu   $a1, $zero, 0x0080         ## $a1 = 00000080
/* 17FB4 8084A1C4 51E0004C */  beql    $t7, $zero, .L8084A2F8     
/* 17FB8 8084A1C8 8209014F */  lb      $t1, 0x014F($s0)           ## 0000014F
/* 17FBC 8084A1CC 0C031A73 */  jal     Graph_Alloc
              
/* 17FC0 8084A1D0 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 17FC4 8084A1D4 AFA20070 */  sw      $v0, 0x0070($sp)           
/* 17FC8 8084A1D8 9219015F */  lbu     $t9, 0x015F($s0)           ## 0000015F
/* 17FCC 8084A1DC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 17FD0 8084A1E0 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 17FD4 8084A1E4 17210038 */  bne     $t9, $at, .L8084A2C8       
/* 17FD8 8084A1E8 3529002C */  ori     $t1, $t1, 0x002C           ## $t1 = DB06002C
/* 17FDC 8084A1EC 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 17FE0 8084A1F0 3C0142C2 */  lui     $at, 0x42C2                ## $at = 42C20000
/* 17FE4 8084A1F4 44816000 */  mtc1    $at, $f12                  ## $f12 = 97.00
/* 17FE8 8084A1F8 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 17FEC 8084A1FC AE2802C0 */  sw      $t0, 0x02C0($s1)           ## 000002C0
/* 17FF0 8084A200 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 17FF4 8084A204 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 17FF8 8084A208 3C038086 */  lui     $v1, %hi(D_80858AC8)       ## $v1 = 80860000
/* 17FFC 8084A20C 24638AC8 */  addiu   $v1, $v1, %lo(D_80858AC8)  ## $v1 = 80858AC8
/* 18000 8084A210 846A0002 */  lh      $t2, 0x0002($v1)           ## 80858ACA
/* 18004 8084A214 846C0004 */  lh      $t4, 0x0004($v1)           ## 80858ACC
/* 18008 8084A218 846E0000 */  lh      $t6, 0x0000($v1)           ## 80858AC8
/* 1800C 8084A21C 3C018085 */  lui     $at, %hi(D_808554DC)       ## $at = 80850000
/* 18010 8084A220 254B03E2 */  addiu   $t3, $t2, 0x03E2           ## $t3 = 000003E2
/* 18014 8084A224 258D0DBE */  addiu   $t5, $t4, 0x0DBE           ## $t5 = 00000DBE
/* 18018 8084A228 25CFCB76 */  addiu   $t7, $t6, 0xCB76           ## $t7 = FFFFCB76
/* 1801C 8084A22C A7AB0068 */  sh      $t3, 0x0068($sp)           
/* 18020 8084A230 A7AD006A */  sh      $t5, 0x006A($sp)           
/* 18024 8084A234 A7AF006C */  sh      $t7, 0x006C($sp)           
/* 18028 8084A238 C42E54DC */  lwc1    $f14, %lo(D_808554DC)($at) 
/* 1802C 8084A23C 3C06C370 */  lui     $a2, 0xC370                ## $a2 = C3700000
/* 18030 8084A240 0C0345A5 */  jal     func_800D1694              
/* 18034 8084A244 27A70068 */  addiu   $a3, $sp, 0x0068           ## $a3 = FFFFFFD8
/* 18038 8084A248 8FA20070 */  lw      $v0, 0x0070($sp)           
/* 1803C 8084A24C 3C058085 */  lui     $a1, %hi(D_808552B0)       ## $a1 = 80850000
/* 18040 8084A250 24A552B0 */  addiu   $a1, $a1, %lo(D_808552B0)  ## $a1 = 808552B0
/* 18044 8084A254 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 18048 8084A258 24420040 */  addiu   $v0, $v0, 0x0040           ## $v0 = 00000040
/* 1804C 8084A25C AFA20070 */  sw      $v0, 0x0070($sp)           
/* 18050 8084A260 0C034695 */  jal     Matrix_ToMtx              
/* 18054 8084A264 24064B49 */  addiu   $a2, $zero, 0x4B49         ## $a2 = 00004B49
/* 18058 8084A268 3C038086 */  lui     $v1, %hi(D_80858AC8)       ## $v1 = 80860000
/* 1805C 8084A26C 24638AC8 */  addiu   $v1, $v1, %lo(D_80858AC8)  ## $v1 = 80858AC8
/* 18060 8084A270 84780002 */  lh      $t8, 0x0002($v1)           ## 80858ACA
/* 18064 8084A274 84680004 */  lh      $t0, 0x0004($v1)           ## 80858ACC
/* 18068 8084A278 846B0000 */  lh      $t3, 0x0000($v1)           ## 80858AC8
/* 1806C 8084A27C 3C0142C2 */  lui     $at, 0x42C2                ## $at = 42C20000
/* 18070 8084A280 2409F242 */  addiu   $t1, $zero, 0xF242         ## $t1 = FFFFF242
/* 18074 8084A284 44816000 */  mtc1    $at, $f12                  ## $f12 = 97.00
/* 18078 8084A288 3C018085 */  lui     $at, %hi(D_808554E0)       ## $at = 80850000
/* 1807C 8084A28C 2719FC1E */  addiu   $t9, $t8, 0xFC1E           ## $t9 = FFFFFC1E
/* 18080 8084A290 01285023 */  subu    $t2, $t1, $t0              
/* 18084 8084A294 256CCB76 */  addiu   $t4, $t3, 0xCB76           ## $t4 = FFFFCB76
/* 18088 8084A298 A7B90068 */  sh      $t9, 0x0068($sp)           
/* 1808C 8084A29C A7AA006A */  sh      $t2, 0x006A($sp)           
/* 18090 8084A2A0 A7AC006C */  sh      $t4, 0x006C($sp)           
/* 18094 8084A2A4 C42E54E0 */  lwc1    $f14, %lo(D_808554E0)($at) 
/* 18098 8084A2A8 3C064370 */  lui     $a2, 0x4370                ## $a2 = 43700000
/* 1809C 8084A2AC 0C0345A5 */  jal     func_800D1694              
/* 180A0 8084A2B0 27A70068 */  addiu   $a3, $sp, 0x0068           ## $a3 = FFFFFFD8
/* 180A4 8084A2B4 3C058085 */  lui     $a1, %hi(D_808552C0)       ## $a1 = 80850000
/* 180A8 8084A2B8 24A552C0 */  addiu   $a1, $a1, %lo(D_808552C0)  ## $a1 = 808552C0
/* 180AC 8084A2BC 8FA40070 */  lw      $a0, 0x0070($sp)           
/* 180B0 8084A2C0 0C034695 */  jal     Matrix_ToMtx              
/* 180B4 8084A2C4 24064B4F */  addiu   $a2, $zero, 0x4B4F         ## $a2 = 00004B4F
.L8084A2C8:
/* 180B8 8084A2C8 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 180BC 8084A2CC 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 180C0 8084A2D0 3C198085 */  lui     $t9, %hi(D_80854840)       ## $t9 = 80850000
/* 180C4 8084A2D4 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 180C8 8084A2D8 AE2D02C0 */  sw      $t5, 0x02C0($s1)           ## 000002C0
/* 180CC 8084A2DC AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 180D0 8084A2E0 920F015F */  lbu     $t7, 0x015F($s0)           ## 0000015F
/* 180D4 8084A2E4 000FC080 */  sll     $t8, $t7,  2               
/* 180D8 8084A2E8 0338C821 */  addu    $t9, $t9, $t8              
/* 180DC 8084A2EC 8F394840 */  lw      $t9, %lo(D_80854840)($t9)  
/* 180E0 8084A2F0 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 180E4 8084A2F4 8209014F */  lb      $t1, 0x014F($s0)           ## 0000014F
.L8084A2F8:
/* 180E8 8084A2F8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 180EC 8084A2FC 552100A6 */  bnel    $t1, $at, .L8084A598       
/* 180F0 8084A300 8FAE0090 */  lw      $t6, 0x0090($sp)           
/* 180F4 8084A304 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
/* 180F8 8084A308 310A0001 */  andi    $t2, $t0, 0x0001           ## $t2 = 00000000
/* 180FC 8084A30C 554000A2 */  bnel    $t2, $zero, .L8084A598     
/* 18100 8084A310 8FAE0090 */  lw      $t6, 0x0090($sp)           
/* 18104 8084A314 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 18108 8084A318 000B6200 */  sll     $t4, $t3,  8               
/* 1810C 8084A31C 0582009E */  bltzl   $t4, .L8084A598            
/* 18110 8084A320 8FAE0090 */  lw      $t6, 0x0090($sp)           
/* 18114 8084A324 92030893 */  lbu     $v1, 0x0893($s0)           ## 00000893
/* 18118 8084A328 1060009A */  beq     $v1, $zero, .L8084A594     
/* 1811C 8084A32C 28610013 */  slti    $at, $v1, 0x0013           
/* 18120 8084A330 10200098 */  beq     $at, $zero, .L8084A594     
/* 18124 8084A334 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 18128 8084A338 2861000F */  slti    $at, $v1, 0x000F           
/* 1812C 8084A33C 1420000C */  bne     $at, $zero, .L8084A370     
/* 18130 8084A340 240D0013 */  addiu   $t5, $zero, 0x0013         ## $t5 = 00000013
/* 18134 8084A344 01A37023 */  subu    $t6, $t5, $v1              
/* 18138 8084A348 448E2000 */  mtc1    $t6, $f4                   ## $f4 = -2305843009213693952.00
/* 1813C 8084A34C 3C01424C */  lui     $at, 0x424C                ## $at = 424C0000
/* 18140 8084A350 44814000 */  mtc1    $at, $f8                   ## $f8 = 51.00
/* 18144 8084A354 468021A0 */  cvt.s.w $f6, $f4                   
/* 18148 8084A358 3C018085 */  lui     $at, %hi(D_8085486C)       ## $at = 80850000
/* 1814C 8084A35C 46083282 */  mul.s   $f10, $f6, $f8             
/* 18150 8084A360 4600540D */  trunc.w.s $f16, $f10                 
/* 18154 8084A364 44038000 */  mfc1    $v1, $f16                  
/* 18158 8084A368 10000030 */  beq     $zero, $zero, .L8084A42C   
/* 1815C 8084A36C AC23486C */  sw      $v1, %lo(D_8085486C)($at)  
.L8084A370:
/* 18160 8084A370 28410013 */  slti    $at, $v0, 0x0013           
/* 18164 8084A374 1020002D */  beq     $at, $zero, .L8084A42C     
/* 18168 8084A378 2841000A */  slti    $at, $v0, 0x000A           
/* 1816C 8084A37C 14200002 */  bne     $at, $zero, .L8084A388     
/* 18170 8084A380 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 18174 8084A384 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
.L8084A388:
/* 18178 8084A388 00051823 */  subu    $v1, $zero, $a1            
/* 1817C 8084A38C 00031880 */  sll     $v1, $v1,  2               
/* 18180 8084A390 24630024 */  addiu   $v1, $v1, 0x0024           ## $v1 = 00000024
/* 18184 8084A394 00630019 */  multu   $v1, $v1                   
/* 18188 8084A398 3C018085 */  lui     $at, %hi(D_8085486C)       ## $at = 80850000
/* 1818C 8084A39C AFA5005C */  sw      $a1, 0x005C($sp)           
/* 18190 8084A3A0 00001812 */  mflo    $v1                        
/* 18194 8084A3A4 00032400 */  sll     $a0, $v1, 16               
/* 18198 8084A3A8 00042403 */  sra     $a0, $a0, 16               
/* 1819C 8084A3AC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 181A0 8084A3B0 AC23486C */  sw      $v1, %lo(D_8085486C)($at)  
/* 181A4 8084A3B4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 181A8 8084A3B8 44811000 */  mtc1    $at, $f2                   ## $f2 = 100.00
/* 181AC 8084A3BC 3C01425C */  lui     $at, 0x425C                ## $at = 425C0000
/* 181B0 8084A3C0 44818000 */  mtc1    $at, $f16                  ## $f16 = 55.00
/* 181B4 8084A3C4 46020482 */  mul.s   $f18, $f0, $f2             
/* 181B8 8084A3C8 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 181BC 8084A3CC 3C018085 */  lui     $at, %hi(D_808554E4)       ## $at = 80850000
/* 181C0 8084A3D0 46029100 */  add.s   $f4, $f18, $f2             
/* 181C4 8084A3D4 4600218D */  trunc.w.s $f6, $f4                   
/* 181C8 8084A3D8 44193000 */  mfc1    $t9, $f6                   
/* 181CC 8084A3DC 44853000 */  mtc1    $a1, $f6                   ## $f6 = 0.00
/* 181D0 8084A3E0 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 181D4 8084A3E4 00000000 */  nop
/* 181D8 8084A3E8 468042A0 */  cvt.s.w $f10, $f8                  
/* 181DC 8084A3EC 46803220 */  cvt.s.w $f8, $f6                   
/* 181E0 8084A3F0 46105480 */  add.s   $f18, $f10, $f16           
/* 181E4 8084A3F4 C42A54E4 */  lwc1    $f10, %lo(D_808554E4)($at) 
/* 181E8 8084A3F8 3C018085 */  lui     $at, %hi(D_8085486C)       ## $at = 80850000
/* 181EC 8084A3FC 4600910D */  trunc.w.s $f4, $f18                  
/* 181F0 8084A400 460A4402 */  mul.s   $f16, $f8, $f10            
/* 181F4 8084A404 44032000 */  mfc1    $v1, $f4                   
/* 181F8 8084A408 00000000 */  nop
/* 181FC 8084A40C 44839000 */  mtc1    $v1, $f18                  ## $f18 = 0.00
/* 18200 8084A410 00000000 */  nop
/* 18204 8084A414 46809120 */  cvt.s.w $f4, $f18                  
/* 18208 8084A418 46102182 */  mul.s   $f6, $f4, $f16             
/* 1820C 8084A41C 4600320D */  trunc.w.s $f8, $f6                   
/* 18210 8084A420 44034000 */  mfc1    $v1, $f8                   
/* 18214 8084A424 00000000 */  nop
/* 18218 8084A428 AC23486C */  sw      $v1, %lo(D_8085486C)($at)  
.L8084A42C:
/* 1821C 8084A42C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 18220 8084A430 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 18224 8084A434 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 18228 8084A438 3C078085 */  lui     $a3, %hi(D_80854864)       ## $a3 = 80850000
/* 1822C 8084A43C 24E74864 */  addiu   $a3, $a3, %lo(D_80854864)  ## $a3 = 80854864
/* 18230 8084A440 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 18234 8084A444 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 18238 8084A448 0C0345A5 */  jal     func_800D1694              
/* 1823C 8084A44C 46125380 */  add.s   $f14, $f10, $f18           
/* 18240 8084A450 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 18244 8084A454 44816000 */  mtc1    $at, $f12                  ## $f12 = 4.00
/* 18248 8084A458 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 1824C 8084A45C 44066000 */  mfc1    $a2, $f12                  
/* 18250 8084A460 0C0342A3 */  jal     Matrix_Scale              
/* 18254 8084A464 46006386 */  mov.s   $f14, $f12                 
/* 18258 8084A468 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 1825C 8084A46C 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 18260 8084A470 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 18264 8084A474 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 18268 8084A478 AE2A02D0 */  sw      $t2, 0x02D0($s1)           ## 000002D0
/* 1826C 8084A47C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 18270 8084A480 8FAC0090 */  lw      $t4, 0x0090($sp)           
/* 18274 8084A484 3C058085 */  lui     $a1, %hi(D_808552D0)       ## $a1 = 80850000
/* 18278 8084A488 24A552D0 */  addiu   $a1, $a1, %lo(D_808552D0)  ## $a1 = 808552D0
/* 1827C 8084A48C 24064B75 */  addiu   $a2, $zero, 0x4B75         ## $a2 = 00004B75
/* 18280 8084A490 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 18284 8084A494 0C0346A2 */  jal     Matrix_NewMtx              
/* 18288 8084A498 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 1828C 8084A49C AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 18290 8084A4A0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 18294 8084A4A4 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 18298 8084A4A8 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 1829C 8084A4AC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 182A0 8084A4B0 AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 182A4 8084A4B4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 182A8 8084A4B8 8FAF0090 */  lw      $t7, 0x0090($sp)           
/* 182AC 8084A4BC 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 182B0 8084A4C0 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 182B4 8084A4C4 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 182B8 8084A4C8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 182BC 8084A4CC 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 182C0 8084A4D0 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 182C4 8084A4D4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 182C8 8084A4D8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 182CC 8084A4DC AFB80010 */  sw      $t8, 0x0010($sp)           
/* 182D0 8084A4E0 010F4021 */  addu    $t0, $t0, $t7              
/* 182D4 8084A4E4 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 182D8 8084A4E8 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 182DC 8084A4EC 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 182E0 8084A4F0 00080823 */  subu    $at, $zero, $t0            
/* 182E4 8084A4F4 00015100 */  sll     $t2, $at,  4               
/* 182E8 8084A4F8 01415023 */  subu    $t2, $t2, $at              
/* 182EC 8084A4FC 314B007F */  andi    $t3, $t2, 0x007F           ## $t3 = 00000000
/* 182F0 8084A500 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 182F4 8084A504 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 182F8 8084A508 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 182FC 8084A50C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 18300 8084A510 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 18304 8084A514 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 18308 8084A518 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 1830C 8084A51C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 18310 8084A520 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 18314 8084A524 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 18318 8084A528 3C038085 */  lui     $v1, %hi(D_8085486C)       ## $v1 = 80850000
/* 1831C 8084A52C 8C63486C */  lw      $v1, %lo(D_8085486C)($v1)  
/* 18320 8084A530 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 18324 8084A534 AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 18328 8084A538 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 1832C 8084A53C 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 18330 8084A540 307900FF */  andi    $t9, $v1, 0x00FF           ## $t9 = 00000000
/* 18334 8084A544 03214825 */  or      $t1, $t9, $at              ## $t1 = FFFFFF00
/* 18338 8084A548 37188080 */  ori     $t8, $t8, 0x8080           ## $t8 = FA008080
/* 1833C 8084A54C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 18340 8084A550 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 18344 8084A554 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 18348 8084A558 3C0A785A */  lui     $t2, 0x785A                ## $t2 = 785A0000
/* 1834C 8084A55C 354A1E80 */  ori     $t2, $t2, 0x1E80           ## $t2 = 785A1E80
/* 18350 8084A560 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 18354 8084A564 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 18358 8084A568 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 1835C 8084A56C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 18360 8084A570 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 18364 8084A574 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 18368 8084A578 3C0D0403 */  lui     $t5, 0x0403                ## $t5 = 04030000
/* 1836C 8084A57C 25AD7E30 */  addiu   $t5, $t5, 0x7E30           ## $t5 = 04037E30
/* 18370 8084A580 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 18374 8084A584 AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 18378 8084A588 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 1837C 8084A58C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 18380 8084A590 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
.L8084A594:
/* 18384 8084A594 8FAE0090 */  lw      $t6, 0x0090($sp)           
.L8084A598:
/* 18388 8084A598 3C068085 */  lui     $a2, %hi(D_808552E0)       ## $a2 = 80850000
/* 1838C 8084A59C 24C652E0 */  addiu   $a2, $a2, %lo(D_808552E0)  ## $a2 = 808552E0
/* 18390 8084A5A0 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFEC
/* 18394 8084A5A4 24074B80 */  addiu   $a3, $zero, 0x4B80         ## $a3 = 00004B80
/* 18398 8084A5A8 0C031AD5 */  jal     Graph_CloseDisps              
/* 1839C 8084A5AC 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000008
/* 183A0 8084A5B0 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 183A4 8084A5B4 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 183A8 8084A5B8 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 183AC 8084A5BC 03E00008 */  jr      $ra                        
/* 183B0 8084A5C0 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
