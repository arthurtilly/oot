glabel func_80A417B4
/* 03244 80A417B4 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 03248 80A417B8 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 0324C 80A417BC 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 03250 80A417C0 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 03254 80A417C4 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 03258 80A417C8 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 0325C 80A417CC AFB50044 */  sw      $s5, 0x0044($sp)           
/* 03260 80A417D0 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 03264 80A417D4 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 03268 80A417D8 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 0326C 80A417DC AFB10034 */  sw      $s1, 0x0034($sp)           
/* 03270 80A417E0 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 03274 80A417E4 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 03278 80A417E8 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 0327C 80A417EC F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 03280 80A417F0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 03284 80A417F4 24920268 */  addiu   $s2, $a0, 0x0268           ## $s2 = 00000268
/* 03288 80A417F8 3C0680A4 */  lui     $a2, %hi(D_80A41C80)       ## $a2 = 80A40000
/* 0328C 80A417FC 24C61C80 */  addiu   $a2, $a2, %lo(D_80A41C80)  ## $a2 = 80A41C80
/* 03290 80A41800 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFFE0
/* 03294 80A41804 24070A42 */  addiu   $a3, $zero, 0x0A42         ## $a3 = 00000A42
/* 03298 80A41808 0C031AB1 */  jal     Graph_OpenDisps              
/* 0329C 80A4180C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 032A0 80A41810 0000B825 */  or      $s7, $zero, $zero          ## $s7 = 00000000
/* 032A4 80A41814 0C024F61 */  jal     func_80093D84              
/* 032A8 80A41818 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 032AC 80A4181C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 032B0 80A41820 4481C000 */  mtc1    $at, $f24                  ## $f24 = 8.00
/* 032B4 80A41824 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 032B8 80A41828 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 032BC 80A4182C 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 032C0 80A41830 4481A000 */  mtc1    $at, $f20                  ## $f20 = 255.00
/* 032C4 80A41834 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 032C8 80A41838 3C16DE00 */  lui     $s6, 0xDE00                ## $s6 = DE000000
.L80A4183C:
/* 032CC 80A4183C 924E0000 */  lbu     $t6, 0x0000($s2)           ## 00000268
/* 032D0 80A41840 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 032D4 80A41844 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 032D8 80A41848 11C0008A */  beq     $t6, $zero, .L80A41A74     
/* 032DC 80A4184C 03C19821 */  addu    $s3, $s8, $at              
/* 032E0 80A41850 3C150601 */  lui     $s5, 0x0601                ## $s5 = 06010000
/* 032E4 80A41854 16E00014 */  bne     $s7, $zero, .L80A418A8     
/* 032E8 80A41858 26B5FD50 */  addiu   $s5, $s5, 0xFD50           ## $s5 = 0600FD50
/* 032EC 80A4185C 3C110601 */  lui     $s1, 0x0601                ## $s1 = 06010000
/* 032F0 80A41860 2631FD40 */  addiu   $s1, $s1, 0xFD40           ## $s1 = 0600FD40
/* 032F4 80A41864 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 032F8 80A41868 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 032FC 80A4186C 0C024DDD */  jal     Gfx_CallSetupDL              
/* 03300 80A41870 24170001 */  addiu   $s7, $zero, 0x0001         ## $s7 = 00000001
/* 03304 80A41874 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 03308 80A41878 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0330C 80A4187C AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 03310 80A41880 AC510004 */  sw      $s1, 0x0004($v0)           ## 00000004
/* 03314 80A41884 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 03318 80A41888 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0331C 80A4188C 3C08643C */  lui     $t0, 0x643C                ## $t0 = 643C0000
/* 03320 80A41890 35081400 */  ori     $t0, $t0, 0x1400           ## $t0 = 643C1400
/* 03324 80A41894 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 03328 80A41898 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 0332C 80A4189C 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 03330 80A418A0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 03334 80A418A4 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
.L80A418A8:
/* 03338 80A418A8 92490001 */  lbu     $t1, 0x0001($s2)           ## 00000269
/* 0333C 80A418AC 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03340 80A418B0 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 03344 80A418B4 05210004 */  bgez    $t1, .L80A418C8            
/* 03348 80A418B8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0334C 80A418BC 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 03350 80A418C0 00000000 */  nop
/* 03354 80A418C4 46083180 */  add.s   $f6, $f6, $f8              
.L80A418C8:
/* 03358 80A418C8 924A0002 */  lbu     $t2, 0x0002($s2)           ## 0000026A
/* 0335C 80A418CC 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03360 80A418D0 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 03364 80A418D4 05410004 */  bgez    $t2, .L80A418E8            
/* 03368 80A418D8 46805420 */  cvt.s.w $f16, $f10                 
/* 0336C 80A418DC 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 03370 80A418E0 00000000 */  nop
/* 03374 80A418E4 46128400 */  add.s   $f16, $f16, $f18           
.L80A418E8:
/* 03378 80A418E8 4610A103 */  div.s   $f4, $f20, $f16            
/* 0337C 80A418EC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03380 80A418F0 3C01AA82 */  lui     $at, 0xAA82                ## $at = AA820000
/* 03384 80A418F4 34215A00 */  ori     $at, $at, 0x5A00           ## $at = AA825A00
/* 03388 80A418F8 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0338C 80A418FC AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 03390 80A41900 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 03394 80A41904 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03398 80A41908 3C19E700 */  lui     $t9, 0xE700                ## $t9 = E7000000
/* 0339C 80A4190C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 033A0 80A41910 46043202 */  mul.s   $f8, $f6, $f4              
/* 033A4 80A41914 4600428D */  trunc.w.s $f10, $f8                  
/* 033A8 80A41918 44045000 */  mfc1    $a0, $f10                  
/* 033AC 80A4191C 00000000 */  nop
/* 033B0 80A41920 00042400 */  sll     $a0, $a0, 16               
/* 033B4 80A41924 00042403 */  sra     $a0, $a0, 16               
/* 033B8 80A41928 308E00FF */  andi    $t6, $a0, 0x00FF           ## $t6 = 00000000
/* 033BC 80A4192C 01C17825 */  or      $t7, $t6, $at              ## $t7 = AA825A00
/* 033C0 80A41930 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 033C4 80A41934 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 033C8 80A41938 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 033CC 80A4193C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 033D0 80A41940 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 033D4 80A41944 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 033D8 80A41948 8E46001C */  lw      $a2, 0x001C($s2)           ## 00000284
/* 033DC 80A4194C C64E0018 */  lwc1    $f14, 0x0018($s2)          ## 00000280
/* 033E0 80A41950 0C034261 */  jal     Matrix_Translate              
/* 033E4 80A41954 C64C0014 */  lwc1    $f12, 0x0014($s2)          ## 0000027C
/* 033E8 80A41958 0C0347F5 */  jal     func_800D1FD4              
/* 033EC 80A4195C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 033F0 80A41960 C64C0004 */  lwc1    $f12, 0x0004($s2)          ## 0000026C
/* 033F4 80A41964 4406B000 */  mfc1    $a2, $f22                  
/* 033F8 80A41968 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 033FC 80A4196C 0C0342A3 */  jal     Matrix_Scale              
/* 03400 80A41970 46006386 */  mov.s   $f14, $f12                 
/* 03404 80A41974 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03408 80A41978 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 0340C 80A4197C 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 03410 80A41980 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 03414 80A41984 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 03418 80A41988 3C0580A4 */  lui     $a1, %hi(D_80A41C90)       ## $a1 = 80A40000
/* 0341C 80A4198C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 03420 80A41990 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 03424 80A41994 24A51C90 */  addiu   $a1, $a1, %lo(D_80A41C90)  ## $a1 = 80A41C90
/* 03428 80A41998 24060A68 */  addiu   $a2, $zero, 0x0A68         ## $a2 = 00000A68
/* 0342C 80A4199C 0C0346A2 */  jal     Matrix_NewMtx              
/* 03430 80A419A0 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 03434 80A419A4 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 03438 80A419A8 924A0001 */  lbu     $t2, 0x0001($s2)           ## 00000269
/* 0343C 80A419AC 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03440 80A419B0 448A9000 */  mtc1    $t2, $f18                  ## $f18 = 0.00
/* 03444 80A419B4 05410004 */  bgez    $t2, .L80A419C8            
/* 03448 80A419B8 46809420 */  cvt.s.w $f16, $f18                 
/* 0344C 80A419BC 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 03450 80A419C0 00000000 */  nop
/* 03454 80A419C4 46068400 */  add.s   $f16, $f16, $f6            
.L80A419C8:
/* 03458 80A419C8 924B0002 */  lbu     $t3, 0x0002($s2)           ## 0000026A
/* 0345C 80A419CC 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03460 80A419D0 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 03464 80A419D4 05610004 */  bgez    $t3, .L80A419E8            
/* 03468 80A419D8 46802220 */  cvt.s.w $f8, $f4                   
/* 0346C 80A419DC 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 03470 80A419E0 00000000 */  nop
/* 03474 80A419E4 460A4200 */  add.s   $f8, $f8, $f10             
.L80A419E8:
/* 03478 80A419E8 4608C483 */  div.s   $f18, $f24, $f8            
/* 0347C 80A419EC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03480 80A419F0 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 03484 80A419F4 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 03488 80A419F8 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 0348C 80A419FC AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 03490 80A41A00 3C0480A4 */  lui     $a0, %hi(D_80A41BD8)       ## $a0 = 80A40000
/* 03494 80A41A04 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 03498 80A41A08 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 0349C 80A41A0C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 034A0 80A41A10 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 034A4 80A41A14 46128182 */  mul.s   $f6, $f16, $f18            
/* 034A8 80A41A18 4600310D */  trunc.w.s $f4, $f6                   
/* 034AC 80A41A1C 44052000 */  mfc1    $a1, $f4                   
/* 034B0 80A41A20 00000000 */  nop
/* 034B4 80A41A24 00052C00 */  sll     $a1, $a1, 16               
/* 034B8 80A41A28 00052C03 */  sra     $a1, $a1, 16               
/* 034BC 80A41A2C 00057880 */  sll     $t7, $a1,  2               
/* 034C0 80A41A30 008F2021 */  addu    $a0, $a0, $t7              
/* 034C4 80A41A34 8C841BD8 */  lw      $a0, %lo(D_80A41BD8)($a0)  
/* 034C8 80A41A38 0004C900 */  sll     $t9, $a0,  4               
/* 034CC 80A41A3C 00194702 */  srl     $t0, $t9, 28               
/* 034D0 80A41A40 00084880 */  sll     $t1, $t0,  2               
/* 034D4 80A41A44 01495021 */  addu    $t2, $t2, $t1              
/* 034D8 80A41A48 8D4A6FA8 */  lw      $t2, 0x6FA8($t2)           ## 80166FA8
/* 034DC 80A41A4C 0081C024 */  and     $t8, $a0, $at              
/* 034E0 80A41A50 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 034E4 80A41A54 030A5821 */  addu    $t3, $t8, $t2              
/* 034E8 80A41A58 01616021 */  addu    $t4, $t3, $at              
/* 034EC 80A41A5C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 034F0 80A41A60 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 034F4 80A41A64 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 034F8 80A41A68 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 034FC 80A41A6C AC550004 */  sw      $s5, 0x0004($v0)           ## 00000004
/* 03500 80A41A70 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80A41A74:
/* 03504 80A41A74 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 03508 80A41A78 0014A400 */  sll     $s4, $s4, 16               
/* 0350C 80A41A7C 0014A403 */  sra     $s4, $s4, 16               
/* 03510 80A41A80 2A810014 */  slti    $at, $s4, 0x0014           
/* 03514 80A41A84 1420FF6D */  bne     $at, $zero, .L80A4183C     
/* 03518 80A41A88 26520038 */  addiu   $s2, $s2, 0x0038           ## $s2 = 000002A0
/* 0351C 80A41A8C 3C0680A4 */  lui     $a2, %hi(D_80A41CA0)       ## $a2 = 80A40000
/* 03520 80A41A90 24C61CA0 */  addiu   $a2, $a2, %lo(D_80A41CA0)  ## $a2 = 80A41CA0
/* 03524 80A41A94 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFFE0
/* 03528 80A41A98 8FC50000 */  lw      $a1, 0x0000($s8)           ## 00000000
/* 0352C 80A41A9C 0C031AD5 */  jal     Graph_CloseDisps              
/* 03530 80A41AA0 24070A76 */  addiu   $a3, $zero, 0x0A76         ## $a3 = 00000A76
/* 03534 80A41AA4 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 03538 80A41AA8 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 0353C 80A41AAC D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 03540 80A41AB0 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 03544 80A41AB4 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 03548 80A41AB8 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 0354C 80A41ABC 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 03550 80A41AC0 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 03554 80A41AC4 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 03558 80A41AC8 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 0355C 80A41ACC 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 03560 80A41AD0 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 03564 80A41AD4 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 03568 80A41AD8 03E00008 */  jr      $ra                        
/* 0356C 80A41ADC 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000

