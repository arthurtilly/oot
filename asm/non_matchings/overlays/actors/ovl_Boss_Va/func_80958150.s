glabel func_80958150
/* 08E90 80958150 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 08E94 80958154 3C0F8096 */  lui     $t7, %hi(D_8095C258)       ## $t7 = 80960000
/* 08E98 80958158 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 08E9C 8095815C AFA40088 */  sw      $a0, 0x0088($sp)           
/* 08EA0 80958160 AFA5008C */  sw      $a1, 0x008C($sp)           
/* 08EA4 80958164 AFA60090 */  sw      $a2, 0x0090($sp)           
/* 08EA8 80958168 AFA70094 */  sw      $a3, 0x0094($sp)           
/* 08EAC 8095816C 25EFC258 */  addiu   $t7, $t7, %lo(D_8095C258)  ## $t7 = 8095C258
/* 08EB0 80958170 8DF90000 */  lw      $t9, 0x0000($t7)           ## 8095C258
/* 08EB4 80958174 27AE0078 */  addiu   $t6, $sp, 0x0078           ## $t6 = FFFFFFF0
/* 08EB8 80958178 8DF80004 */  lw      $t8, 0x0004($t7)           ## 8095C25C
/* 08EBC 8095817C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 08EC0 80958180 8DF90008 */  lw      $t9, 0x0008($t7)           ## 8095C260
/* 08EC4 80958184 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 08EC8 80958188 3C068096 */  lui     $a2, %hi(D_8095C3D0)       ## $a2 = 80960000
/* 08ECC 8095818C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 08ED0 80958190 8FAC0088 */  lw      $t4, 0x0088($sp)           
/* 08ED4 80958194 24C6C3D0 */  addiu   $a2, $a2, %lo(D_8095C3D0)  ## $a2 = 8095C3D0
/* 08ED8 80958198 24071060 */  addiu   $a3, $zero, 0x1060         ## $a3 = 00001060
/* 08EDC 8095819C 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 08EE0 809581A0 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFD8
/* 08EE4 809581A4 0C031AB1 */  jal     Graph_OpenDisps              
/* 08EE8 809581A8 AFA50070 */  sw      $a1, 0x0070($sp)           
/* 08EEC 809581AC 8FAA008C */  lw      $t2, 0x008C($sp)           
/* 08EF0 809581B0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 08EF4 809581B4 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 08EF8 809581B8 15410012 */  bne     $t2, $at, .L80958204       
/* 08EFC 809581BC 3C0D8096 */  lui     $t5, %hi(D_809668D1)       ## $t5 = 80960000
/* 08F00 809581C0 91AD68D1 */  lbu     $t5, %lo(D_809668D1)($t5)  
/* 08F04 809581C4 29A10009 */  slti    $at, $t5, 0x0009           
/* 08F08 809581C8 10200004 */  beq     $at, $zero, .L809581DC     
/* 08F0C 809581CC 3C01C47A */  lui     $at, 0xC47A                ## $at = C47A0000
/* 08F10 809581D0 44812000 */  mtc1    $at, $f4                   ## $f4 = -1000.00
/* 08F14 809581D4 10000005 */  beq     $zero, $zero, .L809581EC   
/* 08F18 809581D8 E7A40078 */  swc1    $f4, 0x0078($sp)           
.L809581DC:
/* 08F1C 809581DC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 08F20 809581E0 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 08F24 809581E4 00000000 */  nop
/* 08F28 809581E8 E7A60078 */  swc1    $f6, 0x0078($sp)           
.L809581EC:
/* 08F2C 809581EC 8FA50098 */  lw      $a1, 0x0098($sp)           
/* 08F30 809581F0 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFF0
/* 08F34 809581F4 0C0346BD */  jal     Matrix_MultVec3f              
/* 08F38 809581F8 24A501D8 */  addiu   $a1, $a1, 0x01D8           ## $a1 = 000001D8
/* 08F3C 809581FC 100000EA */  beq     $zero, $zero, .L809585A8   
/* 08F40 80958200 8FAA008C */  lw      $t2, 0x008C($sp)           
.L80958204:
/* 08F44 80958204 2941000A */  slti    $at, $t2, 0x000A           
/* 08F48 80958208 14200067 */  bne     $at, $zero, .L809583A8     
/* 08F4C 8095820C 29410014 */  slti    $at, $t2, 0x0014           
/* 08F50 80958210 10200065 */  beq     $at, $zero, .L809583A8     
/* 08F54 80958214 3C0E8096 */  lui     $t6, %hi(D_8095C226)       ## $t6 = 80960000
/* 08F58 80958218 01CA7021 */  addu    $t6, $t6, $t2              
/* 08F5C 8095821C 91CEC226 */  lbu     $t6, %lo(D_8095C226)($t6)  
/* 08F60 80958220 29410010 */  slti    $at, $t2, 0x0010           
/* 08F64 80958224 51C00061 */  beql    $t6, $zero, .L809583AC     
/* 08F68 80958228 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 08F6C 8095822C 10200004 */  beq     $at, $zero, .L80958240     
/* 08F70 80958230 3C0F8096 */  lui     $t7, %hi(D_809668D1)       ## $t7 = 80960000
/* 08F74 80958234 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 08F78 80958238 55410021 */  bnel    $t2, $at, .L809582C0       
/* 08F7C 8095823C 2941000B */  slti    $at, $t2, 0x000B           
.L80958240:
/* 08F80 80958240 91EF68D1 */  lbu     $t7, %lo(D_809668D1)($t7)  
/* 08F84 80958244 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 08F88 80958248 29E1000A */  slti    $at, $t7, 0x000A           
/* 08F8C 8095824C 5020001C */  beql    $at, $zero, .L809582C0     
/* 08F90 80958250 2941000B */  slti    $at, $t2, 0x000B           
/* 08F94 80958254 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 08F98 80958258 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 08F9C 8095825C 3C058096 */  lui     $a1, %hi(D_8095C3E0)       ## $a1 = 80960000
/* 08FA0 80958260 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 08FA4 80958264 AD1802D0 */  sw      $t8, 0x02D0($t0)           ## 000002D0
/* 08FA8 80958268 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 08FAC 8095826C 8FAC0088 */  lw      $t4, 0x0088($sp)           
/* 08FB0 80958270 24A5C3E0 */  addiu   $a1, $a1, %lo(D_8095C3E0)  ## $a1 = 8095C3E0
/* 08FB4 80958274 24061070 */  addiu   $a2, $zero, 0x1070         ## $a2 = 00001070
/* 08FB8 80958278 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 08FBC 8095827C AFA80070 */  sw      $t0, 0x0070($sp)           
/* 08FC0 80958280 0C0346A2 */  jal     Matrix_NewMtx              
/* 08FC4 80958284 AFA2005C */  sw      $v0, 0x005C($sp)           
/* 08FC8 80958288 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 08FCC 8095828C 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 08FD0 80958290 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 08FD4 80958294 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 08FD8 80958298 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 08FDC 8095829C 25EF8BB8 */  addiu   $t7, $t7, 0x8BB8           ## $t7 = 06008BB8
/* 08FE0 809582A0 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 08FE4 809582A4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 08FE8 809582A8 AD0D02D0 */  sw      $t5, 0x02D0($t0)           ## 000002D0
/* 08FEC 809582AC AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 08FF0 809582B0 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 08FF4 809582B4 10000022 */  beq     $zero, $zero, .L80958340   
/* 08FF8 809582B8 8FAA008C */  lw      $t2, 0x008C($sp)           
/* 08FFC 809582BC 2941000B */  slti    $at, $t2, 0x000B           
.L809582C0:
/* 09000 809582C0 1420001F */  bne     $at, $zero, .L80958340     
/* 09004 809582C4 3C188096 */  lui     $t8, %hi(D_809668D1)       ## $t8 = 80960000
/* 09008 809582C8 931868D1 */  lbu     $t8, %lo(D_809668D1)($t8)  
/* 0900C 809582CC 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 09010 809582D0 2B010004 */  slti    $at, $t8, 0x0004           
/* 09014 809582D4 1020001A */  beq     $at, $zero, .L80958340     
/* 09018 809582D8 00000000 */  nop
/* 0901C 809582DC 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 09020 809582E0 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 09024 809582E4 3C058096 */  lui     $a1, %hi(D_8095C3F0)       ## $a1 = 80960000
/* 09028 809582E8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0902C 809582EC AD1902D0 */  sw      $t9, 0x02D0($t0)           ## 000002D0
/* 09030 809582F0 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 09034 809582F4 8FAD0088 */  lw      $t5, 0x0088($sp)           
/* 09038 809582F8 24A5C3F0 */  addiu   $a1, $a1, %lo(D_8095C3F0)  ## $a1 = 8095C3F0
/* 0903C 809582FC 24061074 */  addiu   $a2, $zero, 0x1074         ## $a2 = 00001074
/* 09040 80958300 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000008
/* 09044 80958304 AFA80070 */  sw      $t0, 0x0070($sp)           
/* 09048 80958308 0C0346A2 */  jal     Matrix_NewMtx              
/* 0904C 8095830C AFA20054 */  sw      $v0, 0x0054($sp)           
/* 09050 80958310 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 09054 80958314 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 09058 80958318 3C180601 */  lui     $t8, 0x0601                ## $t8 = 06010000
/* 0905C 8095831C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 09060 80958320 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 09064 80958324 27188BB8 */  addiu   $t8, $t8, 0x8BB8           ## $t8 = 06008BB8
/* 09068 80958328 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 0906C 8095832C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 09070 80958330 AD0E02D0 */  sw      $t6, 0x02D0($t0)           ## 000002D0
/* 09074 80958334 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 09078 80958338 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0907C 8095833C 8FAA008C */  lw      $t2, 0x008C($sp)           
.L80958340:
/* 09080 80958340 3C198096 */  lui     $t9, %hi(D_809668D2)       ## $t9 = 80960000
/* 09084 80958344 833968D2 */  lb      $t9, %lo(D_809668D2)($t9)  
/* 09088 80958348 2B21000E */  slti    $at, $t9, 0x000E           
/* 0908C 8095834C 1420000C */  bne     $at, $zero, .L80958380     
/* 09090 80958350 3C018096 */  lui     $at, %hi(D_8095C824)       ## $at = 80960000
/* 09094 80958354 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 09098 80958358 C42CC824 */  lwc1    $f12, %lo(D_8095C824)($at) 
/* 0909C 8095835C 3C018096 */  lui     $at, %hi(D_8095C828)       ## $at = 80960000
/* 090A0 80958360 E7A00078 */  swc1    $f0, 0x0078($sp)           
/* 090A4 80958364 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 090A8 80958368 C42CC828 */  lwc1    $f12, %lo(D_8095C828)($at) 
/* 090AC 8095836C 3C01C270 */  lui     $at, 0xC270                ## $at = C2700000
/* 090B0 80958370 44814000 */  mtc1    $at, $f8                   ## $f8 = -60.00
/* 090B4 80958374 E7A0007C */  swc1    $f0, 0x007C($sp)           
/* 090B8 80958378 8FAA008C */  lw      $t2, 0x008C($sp)           
/* 090BC 8095837C E7A80080 */  swc1    $f8, 0x0080($sp)           
.L80958380:
/* 090C0 80958380 8FAC0098 */  lw      $t4, 0x0098($sp)           
/* 090C4 80958384 000A6880 */  sll     $t5, $t2,  2               
/* 090C8 80958388 01AA6823 */  subu    $t5, $t5, $t2              
/* 090CC 8095838C 000D6880 */  sll     $t5, $t5,  2               
/* 090D0 80958390 018D2821 */  addu    $a1, $t4, $t5              
/* 090D4 80958394 24A50184 */  addiu   $a1, $a1, 0x0184           ## $a1 = 00000184
/* 090D8 80958398 0C0346BD */  jal     Matrix_MultVec3f              
/* 090DC 8095839C 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFF0
/* 090E0 809583A0 10000081 */  beq     $zero, $zero, .L809585A8   
/* 090E4 809583A4 8FAA008C */  lw      $t2, 0x008C($sp)           
.L809583A8:
/* 090E8 809583A8 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
.L809583AC:
/* 090EC 809583AC 15410042 */  bne     $t2, $at, .L809584B8       
/* 090F0 809583B0 8FB90090 */  lw      $t9, 0x0090($sp)           
/* 090F4 809583B4 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 090F8 809583B8 8FAB0088 */  lw      $t3, 0x0088($sp)           
/* 090FC 809583BC 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 09100 809583C0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 09104 809583C4 AD0E02D0 */  sw      $t6, 0x02D0($t0)           ## 000002D0
/* 09108 809583C8 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 0910C 809583CC 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 09110 809583D0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 09114 809583D4 006B1821 */  addu    $v1, $v1, $t3              
/* 09118 809583D8 8C631DE4 */  lw      $v1, 0x1DE4($v1)           ## 00011DE4
/* 0911C 809583DC 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 09120 809583E0 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 09124 809583E4 00033880 */  sll     $a3, $v1,  2               
/* 09128 809583E8 00036880 */  sll     $t5, $v1,  2               
/* 0912C 809583EC AFB80010 */  sw      $t8, 0x0010($sp)           
/* 09130 809583F0 01A36821 */  addu    $t5, $t5, $v1              
/* 09134 809583F4 00E33821 */  addu    $a3, $a3, $v1              
/* 09138 809583F8 00073840 */  sll     $a3, $a3,  1               
/* 0913C 809583FC 31AE007F */  andi    $t6, $t5, 0x007F           ## $t6 = 00000000
/* 09140 80958400 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 09144 80958404 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 09148 80958408 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 0914C 8095840C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 09150 80958410 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 09154 80958414 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 09158 80958418 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 0915C 8095841C AFB80028 */  sw      $t8, 0x0028($sp)           
/* 09160 80958420 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 09164 80958424 30E7007F */  andi    $a3, $a3, 0x007F           ## $a3 = 00000000
/* 09168 80958428 AFA80070 */  sw      $t0, 0x0070($sp)           
/* 0916C 8095842C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 09170 80958430 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 09174 80958434 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 09178 80958438 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0917C 8095843C AFA2004C */  sw      $v0, 0x004C($sp)           
/* 09180 80958440 8FA9004C */  lw      $t1, 0x004C($sp)           
/* 09184 80958444 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 09188 80958448 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 0918C 8095844C AD220004 */  sw      $v0, 0x0004($t1)           ## 00000004
/* 09190 80958450 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 09194 80958454 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 09198 80958458 3C058096 */  lui     $a1, %hi(D_8095C400)       ## $a1 = 80960000
/* 0919C 8095845C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 091A0 80958460 AD1902D0 */  sw      $t9, 0x02D0($t0)           ## 000002D0
/* 091A4 80958464 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 091A8 80958468 8FAD0088 */  lw      $t5, 0x0088($sp)           
/* 091AC 8095846C 24A5C400 */  addiu   $a1, $a1, %lo(D_8095C400)  ## $a1 = 8095C400
/* 091B0 80958470 24061088 */  addiu   $a2, $zero, 0x1088         ## $a2 = 00001088
/* 091B4 80958474 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 091B8 80958478 AFA80070 */  sw      $t0, 0x0070($sp)           
/* 091BC 8095847C 0C0346A2 */  jal     Matrix_NewMtx              
/* 091C0 80958480 AFA20048 */  sw      $v0, 0x0048($sp)           
/* 091C4 80958484 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 091C8 80958488 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 091CC 8095848C 3C180601 */  lui     $t8, 0x0601                ## $t8 = 06010000
/* 091D0 80958490 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 091D4 80958494 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 091D8 80958498 27188D70 */  addiu   $t8, $t8, 0x8D70           ## $t8 = 06008D70
/* 091DC 8095849C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 091E0 809584A0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 091E4 809584A4 AD0E02D0 */  sw      $t6, 0x02D0($t0)           ## 000002D0
/* 091E8 809584A8 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 091EC 809584AC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 091F0 809584B0 1000003D */  beq     $zero, $zero, .L809585A8   
/* 091F4 809584B4 8FAA008C */  lw      $t2, 0x008C($sp)           
.L809584B8:
/* 091F8 809584B8 8F2C0000 */  lw      $t4, 0x0000($t9)           ## 00000000
/* 091FC 809584BC 2941001D */  slti    $at, $t2, 0x001D           
/* 09200 809584C0 51800020 */  beql    $t4, $zero, .L80958544     
/* 09204 809584C4 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 09208 809584C8 1420001D */  bne     $at, $zero, .L80958540     
/* 0920C 809584CC 29410038 */  slti    $at, $t2, 0x0038           
/* 09210 809584D0 1020001B */  beq     $at, $zero, .L80958540     
/* 09214 809584D4 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 09218 809584D8 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 0921C 809584DC 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 09220 809584E0 3C058096 */  lui     $a1, %hi(D_8095C410)       ## $a1 = 80960000
/* 09224 809584E4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 09228 809584E8 AD0D02D0 */  sw      $t5, 0x02D0($t0)           ## 000002D0
/* 0922C 809584EC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 09230 809584F0 8FAF0088 */  lw      $t7, 0x0088($sp)           
/* 09234 809584F4 24A5C410 */  addiu   $a1, $a1, %lo(D_8095C410)  ## $a1 = 8095C410
/* 09238 809584F8 2406108C */  addiu   $a2, $zero, 0x108C         ## $a2 = 0000108C
/* 0923C 809584FC 8DE40000 */  lw      $a0, 0x0000($t7)           ## DE000000
/* 09240 80958500 AFA80070 */  sw      $t0, 0x0070($sp)           
/* 09244 80958504 0C0346A2 */  jal     Matrix_NewMtx              
/* 09248 80958508 AFA20040 */  sw      $v0, 0x0040($sp)           
/* 0924C 8095850C 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 09250 80958510 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 09254 80958514 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 09258 80958518 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0925C 8095851C 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 09260 80958520 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 09264 80958524 AD1802D0 */  sw      $t8, 0x02D0($t0)           ## 000002D0
/* 09268 80958528 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0926C 8095852C 8FAC0090 */  lw      $t4, 0x0090($sp)           
/* 09270 80958530 8D8D0000 */  lw      $t5, 0x0000($t4)           ## 00000000
/* 09274 80958534 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 09278 80958538 1000001B */  beq     $zero, $zero, .L809585A8   
/* 0927C 8095853C 8FAA008C */  lw      $t2, 0x008C($sp)           
.L80958540:
/* 09280 80958540 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
.L80958544:
/* 09284 80958544 15410018 */  bne     $t2, $at, .L809585A8       
/* 09288 80958548 3C0E8096 */  lui     $t6, %hi(D_809668D2)       ## $t6 = 80960000
/* 0928C 8095854C 81CE68D2 */  lb      $t6, %lo(D_809668D2)($t6)  
/* 09290 80958550 8FAF0098 */  lw      $t7, 0x0098($sp)           
/* 09294 80958554 29C1000E */  slti    $at, $t6, 0x000E           
/* 09298 80958558 10200013 */  beq     $at, $zero, .L809585A8     
/* 0929C 8095855C 3C0143E1 */  lui     $at, 0x43E1                ## $at = 43E10000
/* 092A0 80958560 44818000 */  mtc1    $at, $f16                  ## $f16 = 450.00
/* 092A4 80958564 C5EA00BC */  lwc1    $f10, 0x00BC($t7)          ## 000000BC
/* 092A8 80958568 3C01C30C */  lui     $at, 0xC30C                ## $at = C30C0000
/* 092AC 8095856C 44812000 */  mtc1    $at, $f4                   ## $f4 = -140.00
/* 092B0 80958570 46105480 */  add.s   $f18, $f10, $f16           
/* 092B4 80958574 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFF0
/* 092B8 80958578 25E50280 */  addiu   $a1, $t7, 0x0280           ## $a1 = 00000280
/* 092BC 8095857C 46049180 */  add.s   $f6, $f18, $f4             
/* 092C0 80958580 0C0346BD */  jal     Matrix_MultVec3f              
/* 092C4 80958584 E7A60078 */  swc1    $f6, 0x0078($sp)           
/* 092C8 80958588 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 092CC 8095858C 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 092D0 80958590 8FA50098 */  lw      $a1, 0x0098($sp)           
/* 092D4 80958594 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFF0
/* 092D8 80958598 E7A80078 */  swc1    $f8, 0x0078($sp)           
/* 092DC 8095859C 0C0346BD */  jal     Matrix_MultVec3f              
/* 092E0 809585A0 24A50274 */  addiu   $a1, $a1, 0x0274           ## $a1 = 00000274
/* 092E4 809585A4 8FAA008C */  lw      $t2, 0x008C($sp)           
.L809585A8:
/* 092E8 809585A8 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 092EC 809585AC 15410032 */  bne     $t2, $at, .L80958678       
/* 092F0 809585B0 3C188096 */  lui     $t8, %hi(D_809668D2)       ## $t8 = 80960000
/* 092F4 809585B4 831868D2 */  lb      $t8, %lo(D_809668D2)($t8)  
/* 092F8 809585B8 8FB90098 */  lw      $t9, 0x0098($sp)           
/* 092FC 809585BC 2B01000E */  slti    $at, $t8, 0x000E           
/* 09300 809585C0 1420002D */  bne     $at, $zero, .L80958678     
/* 09304 809585C4 272C0274 */  addiu   $t4, $t9, 0x0274           ## $t4 = 00000274
/* 09308 809585C8 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 0930C 809585CC 44816000 */  mtc1    $at, $f12                  ## $f12 = 320.00
/* 09310 809585D0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 09314 809585D4 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 09318 809585D8 3C01C37A */  lui     $at, 0xC37A                ## $at = C37A0000
/* 0931C 809585DC 44815000 */  mtc1    $at, $f10                  ## $f10 = -250.00
/* 09320 809585E0 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 09324 809585E4 44816000 */  mtc1    $at, $f12                  ## $f12 = 320.00
/* 09328 809585E8 460A0400 */  add.s   $f16, $f0, $f10            
/* 0932C 809585EC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 09330 809585F0 E7B00078 */  swc1    $f16, 0x0078($sp)          
/* 09334 809585F4 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 09338 809585F8 44816000 */  mtc1    $at, $f12                  ## $f12 = 320.00
/* 0933C 809585FC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 09340 80958600 E7A0007C */  swc1    $f0, 0x007C($sp)           
/* 09344 80958604 C7A2007C */  lwc1    $f2, 0x007C($sp)           
/* 09348 80958608 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 0934C 8095860C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 09350 80958610 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFF0
/* 09354 80958614 460E103C */  c.lt.s  $f2, $f14                  
/* 09358 80958618 00000000 */  nop
/* 0935C 8095861C 45020008 */  bc1fl   .L80958640                 
/* 09360 80958620 44816000 */  mtc1    $at, $f12                  ## $f12 = 150.00
/* 09364 80958624 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 09368 80958628 44816000 */  mtc1    $at, $f12                  ## $f12 = 150.00
/* 0936C 8095862C 00000000 */  nop
/* 09370 80958630 460C1081 */  sub.s   $f2, $f2, $f12             
/* 09374 80958634 10000005 */  beq     $zero, $zero, .L8095864C   
/* 09378 80958638 E7A2007C */  swc1    $f2, 0x007C($sp)           
/* 0937C 8095863C 44816000 */  mtc1    $at, $f12                  ## $f12 = 150.00
.L80958640:
/* 09380 80958640 00000000 */  nop
/* 09384 80958644 460C1080 */  add.s   $f2, $f2, $f12             
/* 09388 80958648 E7A2007C */  swc1    $f2, 0x007C($sp)           
.L8095864C:
/* 0938C 8095864C 460E003C */  c.lt.s  $f0, $f14                  
/* 09390 80958650 00000000 */  nop
/* 09394 80958654 45020005 */  bc1fl   .L8095866C                 
/* 09398 80958658 460C0100 */  add.s   $f4, $f0, $f12             
/* 0939C 8095865C 460C0481 */  sub.s   $f18, $f0, $f12            
/* 093A0 80958660 10000003 */  beq     $zero, $zero, .L80958670   
/* 093A4 80958664 E7B20080 */  swc1    $f18, 0x0080($sp)          
/* 093A8 80958668 460C0100 */  add.s   $f4, $f0, $f12             
.L8095866C:
/* 093AC 8095866C E7A40080 */  swc1    $f4, 0x0080($sp)           
.L80958670:
/* 093B0 80958670 0C0346BD */  jal     Matrix_MultVec3f              
/* 093B4 80958674 8FA50038 */  lw      $a1, 0x0038($sp)           
.L80958678:
/* 093B8 80958678 8FAD0088 */  lw      $t5, 0x0088($sp)           
/* 093BC 8095867C 3C068096 */  lui     $a2, %hi(D_8095C420)       ## $a2 = 80960000
/* 093C0 80958680 24C6C420 */  addiu   $a2, $a2, %lo(D_8095C420)  ## $a2 = 8095C420
/* 093C4 80958684 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFD8
/* 093C8 80958688 240710A8 */  addiu   $a3, $zero, 0x10A8         ## $a3 = 000010A8
/* 093CC 8095868C 0C031AD5 */  jal     Graph_CloseDisps              
/* 093D0 80958690 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 093D4 80958694 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 093D8 80958698 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 093DC 8095869C 03E00008 */  jr      $ra                        
/* 093E0 809586A0 00000000 */  nop


