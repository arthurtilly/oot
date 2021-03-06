glabel func_80B28344
/* 01C94 80B28344 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 01C98 80B28348 3C0F80B3 */  lui     $t7, %hi(D_80B28988)       ## $t7 = 80B30000
/* 01C9C 80B2834C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01CA0 80B28350 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01CA4 80B28354 AFA400C0 */  sw      $a0, 0x00C0($sp)           
/* 01CA8 80B28358 AFA500C4 */  sw      $a1, 0x00C4($sp)           
/* 01CAC 80B2835C 25EF8988 */  addiu   $t7, $t7, %lo(D_80B28988)  ## $t7 = 80B28988
/* 01CB0 80B28360 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B28988
/* 01CB4 80B28364 27AE0068 */  addiu   $t6, $sp, 0x0068           ## $t6 = FFFFFFA8
/* 01CB8 80B28368 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B2898C
/* 01CBC 80B2836C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFA8
/* 01CC0 80B28370 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B28990
/* 01CC4 80B28374 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFAC
/* 01CC8 80B28378 3C0680B3 */  lui     $a2, %hi(D_80B289C0)       ## $a2 = 80B30000
/* 01CCC 80B2837C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFB0
/* 01CD0 80B28380 8FA800C4 */  lw      $t0, 0x00C4($sp)           
/* 01CD4 80B28384 24C689C0 */  addiu   $a2, $a2, %lo(D_80B289C0)  ## $a2 = 80B289C0
/* 01CD8 80B28388 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFF94
/* 01CDC 80B2838C 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 01CE0 80B28390 24070594 */  addiu   $a3, $zero, 0x0594         ## $a3 = 00000594
/* 01CE4 80B28394 0C031AB1 */  jal     Graph_OpenDisps              
/* 01CE8 80B28398 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01CEC 80B2839C 0C034236 */  jal     Matrix_Get              
/* 01CF0 80B283A0 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFC0
/* 01CF4 80B283A4 8FA400C0 */  lw      $a0, 0x00C0($sp)           
/* 01CF8 80B283A8 27A60068 */  addiu   $a2, $sp, 0x0068           ## $a2 = FFFFFFA8
/* 01CFC 80B283AC C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 01D00 80B283B0 44050000 */  mfc1    $a1, $f0                   
/* 01D04 80B283B4 0C2C9F8E */  jal     func_80B27E38              
/* 01D08 80B283B8 E7A00074 */  swc1    $f0, 0x0074($sp)           
/* 01D0C 80B283BC C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 01D10 80B283C0 C7AE006C */  lwc1    $f14, 0x006C($sp)          
/* 01D14 80B283C4 8FA60070 */  lw      $a2, 0x0070($sp)           
/* 01D18 80B283C8 0C0342A3 */  jal     Matrix_Scale              
/* 01D1C 80B283CC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01D20 80B283D0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01D24 80B283D4 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 01D28 80B283D8 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 01D2C 80B283DC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 01D30 80B283E0 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 01D34 80B283E4 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01D38 80B283E8 8FAB00C4 */  lw      $t3, 0x00C4($sp)           
/* 01D3C 80B283EC 3C0580B3 */  lui     $a1, %hi(D_80B289D0)       ## $a1 = 80B30000
/* 01D40 80B283F0 24A589D0 */  addiu   $a1, $a1, %lo(D_80B289D0)  ## $a1 = 80B289D0
/* 01D44 80B283F4 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 01D48 80B283F8 2406059C */  addiu   $a2, $zero, 0x059C         ## $a2 = 0000059C
/* 01D4C 80B283FC 0C0346A2 */  jal     Matrix_NewMtx              
/* 01D50 80B28400 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 01D54 80B28404 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 01D58 80B28408 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 01D5C 80B2840C 25CE2610 */  addiu   $t6, $t6, 0x2610           ## $t6 = 06002610
/* 01D60 80B28410 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01D64 80B28414 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01D68 80B28418 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 01D6C 80B2841C 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFC0
/* 01D70 80B28420 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01D74 80B28424 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 01D78 80B28428 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 01D7C 80B2842C 0C03423F */  jal     Matrix_Put              
/* 01D80 80B28430 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01D84 80B28434 8FAF00C0 */  lw      $t7, 0x00C0($sp)           
/* 01D88 80B28438 3C0180B3 */  lui     $at, %hi(D_80B28AEC)       ## $at = 80B30000
/* 01D8C 80B2843C C4288AEC */  lwc1    $f8, %lo(D_80B28AEC)($at)  
/* 01D90 80B28440 85F800B6 */  lh      $t8, 0x00B6($t7)           ## 000000B6
/* 01D94 80B28444 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01D98 80B28448 0018C823 */  subu    $t9, $zero, $t8            
/* 01D9C 80B2844C 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 01DA0 80B28450 00000000 */  nop
/* 01DA4 80B28454 468021A0 */  cvt.s.w $f6, $f4                   
/* 01DA8 80B28458 46083302 */  mul.s   $f12, $f6, $f8             
/* 01DAC 80B2845C 0C034348 */  jal     Matrix_RotateY              
/* 01DB0 80B28460 00000000 */  nop
/* 01DB4 80B28464 8FA800C0 */  lw      $t0, 0x00C0($sp)           
/* 01DB8 80B28468 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01DBC 80B2846C 850400B6 */  lh      $a0, 0x00B6($t0)           ## 000000B6
/* 01DC0 80B28470 8FA900C0 */  lw      $t1, 0x00C0($sp)           
/* 01DC4 80B28474 E7A0007C */  swc1    $f0, 0x007C($sp)           
/* 01DC8 80B28478 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01DCC 80B2847C 852400B6 */  lh      $a0, 0x00B6($t1)           ## 000000B6
/* 01DD0 80B28480 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01DD4 80B28484 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 01DD8 80B28488 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 01DDC 80B2848C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01DE0 80B28490 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 01DE4 80B28494 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01DE8 80B28498 8FAC00C4 */  lw      $t4, 0x00C4($sp)           
/* 01DEC 80B2849C 3C0580B3 */  lui     $a1, %hi(D_80B289E0)       ## $a1 = 80B30000
/* 01DF0 80B284A0 24A589E0 */  addiu   $a1, $a1, %lo(D_80B289E0)  ## $a1 = 80B289E0
/* 01DF4 80B284A4 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 01DF8 80B284A8 E7A00078 */  swc1    $f0, 0x0078($sp)           
/* 01DFC 80B284AC 240605A6 */  addiu   $a2, $zero, 0x05A6         ## $a2 = 000005A6
/* 01E00 80B284B0 0C0346A2 */  jal     Matrix_NewMtx              
/* 01E04 80B284B4 AFA20048 */  sw      $v0, 0x0048($sp)           
/* 01E08 80B284B8 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 01E0C 80B284BC C7A20078 */  lwc1    $f2, 0x0078($sp)           
/* 01E10 80B284C0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01E14 80B284C4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01E18 80B284C8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01E1C 80B284CC 24842740 */  addiu   $a0, $a0, 0x2740           ## $a0 = 06002740
/* 01E20 80B284D0 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 01E24 80B284D4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01E28 80B284D8 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 01E2C 80B284DC 3C0143FD */  lui     $at, 0x43FD                ## $at = 43FD0000
/* 01E30 80B284E0 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 01E34 80B284E4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01E38 80B284E8 C7B2007C */  lwc1    $f18, 0x007C($sp)          
/* 01E3C 80B284EC 44810000 */  mtc1    $at, $f0                   ## $f0 = 506.00
/* 01E40 80B284F0 3C0143BA */  lui     $at, 0x43BA                ## $at = 43BA0000
/* 01E44 80B284F4 44818000 */  mtc1    $at, $f16                  ## $f16 = 372.00
/* 01E48 80B284F8 46120282 */  mul.s   $f10, $f0, $f18            
/* 01E4C 80B284FC 3C0180B3 */  lui     $at, %hi(D_80B28AF0)       ## $at = 80B30000
/* 01E50 80B28500 C42E8AF0 */  lwc1    $f14, %lo(D_80B28AF0)($at) 
/* 01E54 80B28504 46028102 */  mul.s   $f4, $f16, $f2             
/* 01E58 80B28508 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01E5C 80B2850C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01E60 80B28510 46128182 */  mul.s   $f6, $f16, $f18            
/* 01E64 80B28514 E7A20078 */  swc1    $f2, 0x0078($sp)           
/* 01E68 80B28518 46020202 */  mul.s   $f8, $f0, $f2              
/* 01E6C 80B2851C 46045300 */  add.s   $f12, $f10, $f4            
/* 01E70 80B28520 46083281 */  sub.s   $f10, $f6, $f8             
/* 01E74 80B28524 44065000 */  mfc1    $a2, $f10                  
/* 01E78 80B28528 0C034261 */  jal     Matrix_Translate              
/* 01E7C 80B2852C 00000000 */  nop
/* 01E80 80B28530 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01E84 80B28534 C7A20078 */  lwc1    $f2, 0x0078($sp)           
/* 01E88 80B28538 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 01E8C 80B2853C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01E90 80B28540 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 01E94 80B28544 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 01E98 80B28548 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01E9C 80B2854C 8FB900C4 */  lw      $t9, 0x00C4($sp)           
/* 01EA0 80B28550 3C0580B3 */  lui     $a1, %hi(D_80B289F0)       ## $a1 = 80B30000
/* 01EA4 80B28554 24A589F0 */  addiu   $a1, $a1, %lo(D_80B289F0)  ## $a1 = 80B289F0
/* 01EA8 80B28558 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 01EAC 80B2855C 240605AF */  addiu   $a2, $zero, 0x05AF         ## $a2 = 000005AF
/* 01EB0 80B28560 AFA20040 */  sw      $v0, 0x0040($sp)           
/* 01EB4 80B28564 0C0346A2 */  jal     Matrix_NewMtx              
/* 01EB8 80B28568 E7A20078 */  swc1    $f2, 0x0078($sp)           
/* 01EBC 80B2856C 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 01EC0 80B28570 C7A20078 */  lwc1    $f2, 0x0078($sp)           
/* 01EC4 80B28574 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 01EC8 80B28578 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01ECC 80B2857C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01ED0 80B28580 3C01C471 */  lui     $at, 0xC471                ## $at = C4710000
/* 01ED4 80B28584 44812000 */  mtc1    $at, $f4                   ## $f4 = -964.00
/* 01ED8 80B28588 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 01EDC 80B2858C AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 01EE0 80B28590 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01EE4 80B28594 8FAA0028 */  lw      $t2, 0x0028($sp)           
/* 01EE8 80B28598 3C014449 */  lui     $at, 0x4449                ## $at = 44490000
/* 01EEC 80B2859C 44815000 */  mtc1    $at, $f10                  ## $f10 = 804.00
/* 01EF0 80B285A0 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 01EF4 80B285A4 C7A6007C */  lwc1    $f6, 0x007C($sp)           
/* 01EF8 80B285A8 3C01C2D8 */  lui     $at, 0xC2D8                ## $at = C2D80000
/* 01EFC 80B285AC 44817000 */  mtc1    $at, $f14                  ## $f14 = -108.00
/* 01F00 80B285B0 46062202 */  mul.s   $f8, $f4, $f6              
/* 01F04 80B285B4 3C01C449 */  lui     $at, 0xC449                ## $at = C4490000
/* 01F08 80B285B8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01F0C 80B285BC 46025102 */  mul.s   $f4, $f10, $f2             
/* 01F10 80B285C0 44815000 */  mtc1    $at, $f10                  ## $f10 = -804.00
/* 01F14 80B285C4 3C014471 */  lui     $at, 0x4471                ## $at = 44710000
/* 01F18 80B285C8 46044301 */  sub.s   $f12, $f8, $f4             
/* 01F1C 80B285CC 46065202 */  mul.s   $f8, $f10, $f6             
/* 01F20 80B285D0 44812000 */  mtc1    $at, $f4                   ## $f4 = 964.00
/* 01F24 80B285D4 00000000 */  nop
/* 01F28 80B285D8 46022282 */  mul.s   $f10, $f4, $f2             
/* 01F2C 80B285DC 460A4180 */  add.s   $f6, $f8, $f10             
/* 01F30 80B285E0 44063000 */  mfc1    $a2, $f6                   
/* 01F34 80B285E4 0C034261 */  jal     Matrix_Translate              
/* 01F38 80B285E8 00000000 */  nop
/* 01F3C 80B285EC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01F40 80B285F0 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 01F44 80B285F4 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 01F48 80B285F8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01F4C 80B285FC AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 01F50 80B28600 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01F54 80B28604 8FAD00C4 */  lw      $t5, 0x00C4($sp)           
/* 01F58 80B28608 3C0580B3 */  lui     $a1, %hi(D_80B28A00)       ## $a1 = 80B30000
/* 01F5C 80B2860C 24A58A00 */  addiu   $a1, $a1, %lo(D_80B28A00)  ## $a1 = 80B28A00
/* 01F60 80B28610 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 01F64 80B28614 240605B7 */  addiu   $a2, $zero, 0x05B7         ## $a2 = 000005B7
/* 01F68 80B28618 0C0346A2 */  jal     Matrix_NewMtx              
/* 01F6C 80B2861C AFA20038 */  sw      $v0, 0x0038($sp)           
/* 01F70 80B28620 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 01F74 80B28624 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 01F78 80B28628 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFC0
/* 01F7C 80B2862C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01F80 80B28630 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01F84 80B28634 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 01F88 80B28638 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 01F8C 80B2863C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01F90 80B28640 8FB80028 */  lw      $t8, 0x0028($sp)           
/* 01F94 80B28644 0C03423F */  jal     Matrix_Put              
/* 01F98 80B28648 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 01F9C 80B2864C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01FA0 80B28650 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01FA4 80B28654 8FA400C0 */  lw      $a0, 0x00C0($sp)           
/* 01FA8 80B28658 8FA50074 */  lw      $a1, 0x0074($sp)           
/* 01FAC 80B2865C 27A60068 */  addiu   $a2, $sp, 0x0068           ## $a2 = FFFFFFA8
/* 01FB0 80B28660 E7A00070 */  swc1    $f0, 0x0070($sp)           
/* 01FB4 80B28664 E7A0006C */  swc1    $f0, 0x006C($sp)           
/* 01FB8 80B28668 0C2C9F07 */  jal     func_80B27C1C              
/* 01FBC 80B2866C E7A00068 */  swc1    $f0, 0x0068($sp)           
/* 01FC0 80B28670 C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 01FC4 80B28674 C7AE006C */  lwc1    $f14, 0x006C($sp)          
/* 01FC8 80B28678 8FA60070 */  lw      $a2, 0x0070($sp)           
/* 01FCC 80B2867C 0C0342A3 */  jal     Matrix_Scale              
/* 01FD0 80B28680 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01FD4 80B28684 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01FD8 80B28688 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 01FDC 80B2868C 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 01FE0 80B28690 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01FE4 80B28694 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 01FE8 80B28698 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 01FEC 80B2869C 8FA900C4 */  lw      $t1, 0x00C4($sp)           
/* 01FF0 80B286A0 3C0580B3 */  lui     $a1, %hi(D_80B28A10)       ## $a1 = 80B30000
/* 01FF4 80B286A4 24A58A10 */  addiu   $a1, $a1, %lo(D_80B28A10)  ## $a1 = 80B28A10
/* 01FF8 80B286A8 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 01FFC 80B286AC 240605BF */  addiu   $a2, $zero, 0x05BF         ## $a2 = 000005BF
/* 02000 80B286B0 0C0346A2 */  jal     Matrix_NewMtx              
/* 02004 80B286B4 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 02008 80B286B8 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 0200C 80B286BC 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 02010 80B286C0 258C27D8 */  addiu   $t4, $t4, 0x27D8           ## $t4 = 060027D8
/* 02014 80B286C4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02018 80B286C8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0201C 80B286CC 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 02020 80B286D0 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFC0
/* 02024 80B286D4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 02028 80B286D8 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 0202C 80B286DC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 02030 80B286E0 0C03423F */  jal     Matrix_Put              
/* 02034 80B286E4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 02038 80B286E8 8FAD00C4 */  lw      $t5, 0x00C4($sp)           
/* 0203C 80B286EC 3C0680B3 */  lui     $a2, %hi(D_80B28A20)       ## $a2 = 80B30000
/* 02040 80B286F0 24C68A20 */  addiu   $a2, $a2, %lo(D_80B28A20)  ## $a2 = 80B28A20
/* 02044 80B286F4 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFF94
/* 02048 80B286F8 240705C5 */  addiu   $a3, $zero, 0x05C5         ## $a3 = 000005C5
/* 0204C 80B286FC 0C031AD5 */  jal     Graph_CloseDisps              
/* 02050 80B28700 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 02054 80B28704 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02058 80B28708 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0205C 80B2870C 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
/* 02060 80B28710 03E00008 */  jr      $ra                        
/* 02064 80B28714 00000000 */  nop


