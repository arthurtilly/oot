glabel func_80B18E7C
/* 003FC 80B18E7C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00400 80B18E80 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00404 80B18E84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00408 80B18E88 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0040C 80B18E8C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00410 80B18E90 AFA5005C */  sw      $a1, 0x005C($sp)
/* 00414 80B18E94 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 00418 80B18E98 AFA40038 */  sw      $a0, 0x0038($sp)
/* 0041C 80B18E9C 504000AA */  beql    $v0, $zero, .L80B19148
/* 00420 80B18EA0 860202E0 */  lh      $v0, 0x02E0($s0)           ## 000002E0
/* 00424 80B18EA4 860302E0 */  lh      $v1, 0x02E0($s0)           ## 000002E0
/* 00428 80B18EA8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0042C 80B18EAC 10600009 */  beq     $v1, $zero, .L80B18ED4
/* 00430 80B18EB0 AFA30050 */  sw      $v1, 0x0050($sp)
/* 00434 80B18EB4 1061002E */  beq     $v1, $at, .L80B18F70
/* 00438 80B18EB8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0043C 80B18EBC 10610082 */  beq     $v1, $at, .L80B190C8
/* 00440 80B18EC0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00444 80B18EC4 5061008E */  beql    $v1, $at, .L80B19100
/* 00448 80B18EC8 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 0044C 80B18ECC 10000096 */  beq     $zero, $zero, .L80B19128
/* 00450 80B18ED0 8FB90050 */  lw      $t9, 0x0050($sp)
.L80B18ED4:
/* 00454 80B18ED4 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00458 80B18ED8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0045C 80B18EDC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00460 80B18EE0 15E10004 */  bne     $t7, $at, .L80B18EF4
/* 00464 80B18EE4 A60E02E0 */  sh      $t6, 0x02E0($s0)           ## 000002E0
/* 00468 80B18EE8 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 0046C 80B18EEC 33190020 */  andi    $t9, $t8, 0x0020           ## $t9 = 00000000
/* 00470 80B18EF0 1720000D */  bne     $t9, $zero, .L80B18F28
.L80B18EF4:
/* 00474 80B18EF4 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00478 80B18EF8 44812000 */  mtc1    $at, $f4                   ## $f4 = -32000.00
/* 0047C 80B18EFC C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
/* 00480 80B18F00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00484 80B18F04 4600203C */  c.lt.s  $f4, $f0
/* 00488 80B18F08 00000000 */  nop
/* 0048C 80B18F0C 45000002 */  bc1f    .L80B18F18
/* 00490 80B18F10 00000000 */  nop
/* 00494 80B18F14 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
.L80B18F18:
/* 00498 80B18F18 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0049C 80B18F1C 2405386C */  addiu   $a1, $zero, 0x386C         ## $a1 = 0000386C
/* 004A0 80B18F20 10000009 */  beq     $zero, $zero, .L80B18F48
/* 004A4 80B18F24 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
.L80B18F28:
/* 004A8 80B18F28 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 004AC 80B18F2C C6080084 */  lwc1    $f8, 0x0084($s0)           ## 00000084
/* 004B0 80B18F30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004B4 80B18F34 2405388E */  addiu   $a1, $zero, 0x388E         ## $a1 = 0000388E
/* 004B8 80B18F38 46083280 */  add.s   $f10, $f6, $f8
/* 004BC 80B18F3C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 004C0 80B18F40 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 004C4 80B18F44 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
.L80B18F48:
/* 004C8 80B18F48 44818000 */  mtc1    $at, $f16                  ## $f16 = 8.00
/* 004CC 80B18F4C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 004D0 80B18F50 44819000 */  mtc1    $at, $f18                  ## $f18 = -1.00
/* 004D4 80B18F54 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 004D8 80B18F58 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 004DC 80B18F5C 860302E0 */  lh      $v1, 0x02E0($s0)           ## 000002E0
/* 004E0 80B18F60 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 004E4 80B18F64 E612006C */  swc1    $f18, 0x006C($s0)          ## 0000006C
/* 004E8 80B18F68 1000006E */  beq     $zero, $zero, .L80B19124
/* 004EC 80B18F6C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80B18F70:
/* 004F0 80B18F70 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 004F4 80B18F74 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
/* 004F8 80B18F78 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 004FC 80B18F7C 01014825 */  or      $t1, $t0, $at              ## $t1 = 01000000
/* 00500 80B18F80 306A0003 */  andi    $t2, $v1, 0x0003           ## $t2 = 00000000
/* 00504 80B18F84 15400008 */  bne     $t2, $zero, .L80B18FA8
/* 00508 80B18F88 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 0050C 80B18F8C 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00510 80B18F90 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00514 80B18F94 306C0020 */  andi    $t4, $v1, 0x0020           ## $t4 = 00000000
/* 00518 80B18F98 15610049 */  bne     $t3, $at, .L80B190C0
/* 0051C 80B18F9C 00000000 */  nop
/* 00520 80B18FA0 11800047 */  beq     $t4, $zero, .L80B190C0
/* 00524 80B18FA4 00000000 */  nop
.L80B18FA8:
/* 00528 80B18FA8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0052C 80B18FAC C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
/* 00530 80B18FB0 4606403E */  c.le.s  $f8, $f6
/* 00534 80B18FB4 00000000 */  nop
/* 00538 80B18FB8 45000041 */  bc1f    .L80B190C0
/* 0053C 80B18FBC 00000000 */  nop
/* 00540 80B18FC0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00544 80B18FC4 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 00548 80B18FC8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0054C 80B18FCC 15C10006 */  bne     $t6, $at, .L80B18FE8
/* 00550 80B18FD0 A60D02E0 */  sh      $t5, 0x02E0($s0)           ## 000002E0
/* 00554 80B18FD4 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 00558 80B18FD8 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 0055C 80B18FDC 31F80020 */  andi    $t8, $t7, 0x0020           ## $t8 = 00000000
/* 00560 80B18FE0 5700000F */  bnel    $t8, $zero, .L80B19020
/* 00564 80B18FE4 C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
.L80B18FE8:
/* 00568 80B18FE8 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 0056C 80B18FEC 44815000 */  mtc1    $at, $f10                  ## $f10 = -32000.00
/* 00570 80B18FF0 C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
/* 00574 80B18FF4 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00578 80B18FF8 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 0057C 80B18FFC 4600503C */  c.lt.s  $f10, $f0
/* 00580 80B19000 00000000 */  nop
/* 00584 80B19004 45020003 */  bc1fl   .L80B19014
/* 00588 80B19008 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 0058C 80B1900C E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
/* 00590 80B19010 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
.L80B19014:
/* 00594 80B19014 10000028 */  beq     $zero, $zero, .L80B190B8
/* 00598 80B19018 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 0059C 80B1901C C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
.L80B19020:
/* 005A0 80B19020 44814000 */  mtc1    $at, $f8                   ## $f8 = -32000.00
/* 005A4 80B19024 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 005A8 80B19028 4608303C */  c.lt.s  $f6, $f8
/* 005AC 80B1902C E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 005B0 80B19030 4502001E */  bc1fl   .L80B190AC
/* 005B4 80B19034 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 005B8 80B19038 8E080024 */  lw      $t0, 0x0024($s0)           ## 00000024
/* 005BC 80B1903C 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFEC
/* 005C0 80B19040 3C013F40 */  lui     $at, 0x3F40                ## $at = 3F400000
/* 005C4 80B19044 ACA80000 */  sw      $t0, 0x0000($a1)           ## FFFFFFEC
/* 005C8 80B19048 8E190028 */  lw      $t9, 0x0028($s0)           ## 00000028
/* 005CC 80B1904C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.75
/* 005D0 80B19050 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 005D4 80B19054 ACB90004 */  sw      $t9, 0x0004($a1)           ## FFFFFFF0
/* 005D8 80B19058 8E08002C */  lw      $t0, 0x002C($s0)           ## 0000002C
/* 005DC 80B1905C 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 005E0 80B19060 ACA80008 */  sw      $t0, 0x0008($a1)           ## FFFFFFF4
/* 005E4 80B19064 C7AA0048 */  lwc1    $f10, 0x0048($sp)
/* 005E8 80B19068 C6100084 */  lwc1    $f16, 0x0084($s0)          ## 00000084
/* 005EC 80B1906C 46105480 */  add.s   $f18, $f10, $f16
/* 005F0 80B19070 E7B20048 */  swc1    $f18, 0x0048($sp)
/* 005F4 80B19074 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 005F8 80B19078 860902E0 */  lh      $t1, 0x02E0($s0)           ## 000002E0
/* 005FC 80B1907C 46062202 */  mul.s   $f8, $f4, $f6
/* 00600 80B19080 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 01000001
/* 00604 80B19084 A60A02E0 */  sh      $t2, 0x02E0($s0)           ## 000002E0
/* 00608 80B19088 860B02E0 */  lh      $t3, 0x02E0($s0)           ## 000002E0
/* 0060C 80B1908C E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 00610 80B19090 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00614 80B19094 8FA4005C */  lw      $a0, 0x005C($sp)
/* 00618 80B19098 0C00A511 */  jal     func_80029444
/* 0061C 80B1909C AFAB0050 */  sw      $t3, 0x0050($sp)
/* 00620 80B190A0 10000006 */  beq     $zero, $zero, .L80B190BC
/* 00624 80B190A4 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 00628 80B190A8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80B190AC:
/* 0062C 80B190AC 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00630 80B190B0 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
/* 00634 80B190B4 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
.L80B190B8:
/* 00638 80B190B8 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
.L80B190BC:
/* 0063C 80B190BC A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
.L80B190C0:
/* 00640 80B190C0 10000018 */  beq     $zero, $zero, .L80B19124
/* 00644 80B190C4 860302E0 */  lh      $v1, 0x02E0($s0)           ## 000002E0
.L80B190C8:
/* 00648 80B190C8 920202E2 */  lbu     $v0, 0x02E2($s0)           ## 000002E2
/* 0064C 80B190CC 10400007 */  beq     $v0, $zero, .L80B190EC
/* 00650 80B190D0 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 00654 80B190D4 920E02F8 */  lbu     $t6, 0x02F8($s0)           ## 000002F8
/* 00658 80B190D8 A20D02E2 */  sb      $t5, 0x02E2($s0)           ## 000002E2
/* 0065C 80B190DC A60002E0 */  sh      $zero, 0x02E0($s0)         ## 000002E0
/* 00660 80B190E0 31CFFFFD */  andi    $t7, $t6, 0xFFFD           ## $t7 = 00000000
/* 00664 80B190E4 10000003 */  beq     $zero, $zero, .L80B190F4
/* 00668 80B190E8 A20F02F8 */  sb      $t7, 0x02F8($s0)           ## 000002F8
.L80B190EC:
/* 0066C 80B190EC 0C2C6549 */  jal     func_80B19524
/* 00670 80B190F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B190F4:
/* 00674 80B190F4 1000000B */  beq     $zero, $zero, .L80B19124
/* 00678 80B190F8 860302E0 */  lh      $v1, 0x02E0($s0)           ## 000002E0
/* 0067C 80B190FC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
.L80B19100:
/* 00680 80B19100 C6040084 */  lwc1    $f4, 0x0084($s0)           ## 00000084
/* 00684 80B19104 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00688 80B19108 46049032 */  c.eq.s  $f18, $f4
/* 0068C 80B1910C 00000000 */  nop
/* 00690 80B19110 45020005 */  bc1fl   .L80B19128
/* 00694 80B19114 8FB90050 */  lw      $t9, 0x0050($sp)
/* 00698 80B19118 A61802E0 */  sh      $t8, 0x02E0($s0)           ## 000002E0
/* 0069C 80B1911C 860302E0 */  lh      $v1, 0x02E0($s0)           ## 000002E0
/* 006A0 80B19120 AFA30050 */  sw      $v1, 0x0050($sp)
.L80B19124:
/* 006A4 80B19124 8FB90050 */  lw      $t9, 0x0050($sp)
.L80B19128:
/* 006A8 80B19128 8FA40038 */  lw      $a0, 0x0038($sp)
/* 006AC 80B1912C 00034080 */  sll     $t0, $v1,  2
/* 006B0 80B19130 13230004 */  beq     $t9, $v1, .L80B19144
/* 006B4 80B19134 3C0580B2 */  lui     $a1, %hi(D_80B1B634)       ## $a1 = 80B20000
/* 006B8 80B19138 00A82821 */  addu    $a1, $a1, $t0
/* 006BC 80B1913C 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 006C0 80B19140 8CA5B634 */  lw      $a1, %lo(D_80B1B634)($a1)
.L80B19144:
/* 006C4 80B19144 860202E0 */  lh      $v0, 0x02E0($s0)           ## 000002E0
.L80B19148:
/* 006C8 80B19148 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 006CC 80B1914C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 006D0 80B19150 1040000B */  beq     $v0, $zero, .L80B19180
/* 006D4 80B19154 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 006D8 80B19158 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 006DC 80B1915C 1041002D */  beq     $v0, $at, .L80B19214
/* 006E0 80B19160 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 006E4 80B19164 1041006F */  beq     $v0, $at, .L80B19324
/* 006E8 80B19168 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 006EC 80B1916C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 006F0 80B19170 10410073 */  beq     $v0, $at, .L80B19340
/* 006F4 80B19174 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 006F8 80B19178 1000008A */  beq     $zero, $zero, .L80B193A4
/* 006FC 80B1917C 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
.L80B19180:
/* 00700 80B19180 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00704 80B19184 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 00708 80B19188 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0070C 80B1918C 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 00710 80B19190 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00714 80B19194 44813000 */  mtc1    $at, $f6                   ## $f6 = 300.00
/* 00718 80B19198 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 0071C 80B1919C A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 00720 80B191A0 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 00724 80B191A4 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 00728 80B191A8 4608303C */  c.lt.s  $f6, $f8
/* 0072C 80B191AC 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00730 80B191B0 014B1823 */  subu    $v1, $t2, $t3
/* 00734 80B191B4 00031C00 */  sll     $v1, $v1, 16
/* 00738 80B191B8 4500000B */  bc1f    .L80B191E8
/* 0073C 80B191BC 00031C03 */  sra     $v1, $v1, 16
/* 00740 80B191C0 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 00744 80B191C4 C6100094 */  lwc1    $f16, 0x0094($s0)          ## 00000094
/* 00748 80B191C8 4610503C */  c.lt.s  $f10, $f16
/* 0074C 80B191CC 00000000 */  nop
/* 00750 80B191D0 45000005 */  bc1f    .L80B191E8
/* 00754 80B191D4 00000000 */  nop
/* 00758 80B191D8 0C2C6317 */  jal     func_80B18C5C
/* 0075C 80B191DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00760 80B191E0 1000000A */  beq     $zero, $zero, .L80B1920C
/* 00764 80B191E4 00000000 */  nop
.L80B191E8:
/* 00768 80B191E8 04600003 */  bltz    $v1, .L80B191F8
/* 0076C 80B191EC 00031023 */  subu    $v0, $zero, $v1
/* 00770 80B191F0 10000001 */  beq     $zero, $zero, .L80B191F8
/* 00774 80B191F4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80B191F8:
/* 00778 80B191F8 28412328 */  slti    $at, $v0, 0x2328
/* 0077C 80B191FC 14200003 */  bne     $at, $zero, .L80B1920C
/* 00780 80B19200 00000000 */  nop
/* 00784 80B19204 0C2C6549 */  jal     func_80B19524
/* 00788 80B19208 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B1920C:
/* 0078C 80B1920C 10000065 */  beq     $zero, $zero, .L80B193A4
/* 00790 80B19210 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
.L80B19214:
/* 00794 80B19214 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00798 80B19218 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 0079C 80B1921C C6120060 */  lwc1    $f18, 0x0060($s0)          ## 00000060
/* 007A0 80B19220 4612203E */  c.le.s  $f4, $f18
/* 007A4 80B19224 00000000 */  nop
/* 007A8 80B19228 45020012 */  bc1fl   .L80B19274
/* 007AC 80B1922C 920202F8 */  lbu     $v0, 0x02F8($s0)           ## 000002F8
/* 007B0 80B19230 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 007B4 80B19234 8FA4005C */  lw      $a0, 0x005C($sp)
/* 007B8 80B19238 318D0001 */  andi    $t5, $t4, 0x0001           ## $t5 = 00000000
/* 007BC 80B1923C 51A0000D */  beql    $t5, $zero, .L80B19274
/* 007C0 80B19240 920202F8 */  lbu     $v0, 0x02F8($s0)           ## 000002F8
/* 007C4 80B19244 0C00D56E */  jal     func_800355B8
/* 007C8 80B19248 26050348 */  addiu   $a1, $s0, 0x0348           ## $a1 = 00000348
/* 007CC 80B1924C 8FA4005C */  lw      $a0, 0x005C($sp)
/* 007D0 80B19250 0C00D56E */  jal     func_800355B8
/* 007D4 80B19254 26050354 */  addiu   $a1, $s0, 0x0354           ## $a1 = 00000354
/* 007D8 80B19258 8FA4005C */  lw      $a0, 0x005C($sp)
/* 007DC 80B1925C 0C00D56E */  jal     func_800355B8
/* 007E0 80B19260 26050360 */  addiu   $a1, $s0, 0x0360           ## $a1 = 00000360
/* 007E4 80B19264 8FA4005C */  lw      $a0, 0x005C($sp)
/* 007E8 80B19268 0C00D56E */  jal     func_800355B8
/* 007EC 80B1926C 2605036C */  addiu   $a1, $s0, 0x036C           ## $a1 = 0000036C
/* 007F0 80B19270 920202F8 */  lbu     $v0, 0x02F8($s0)           ## 000002F8
.L80B19274:
/* 007F4 80B19274 8FB9005C */  lw      $t9, 0x005C($sp)
/* 007F8 80B19278 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 007FC 80B1927C 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 00800 80B19280 15C0000C */  bne     $t6, $zero, .L80B192B4
/* 00804 80B19284 3048FFFD */  andi    $t0, $v0, 0xFFFD           ## $t0 = 00000000
/* 00808 80B19288 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 0080C 80B1928C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00810 80B19290 8FA4005C */  lw      $a0, 0x005C($sp)
/* 00814 80B19294 31F80040 */  andi    $t8, $t7, 0x0040           ## $t8 = 00000000
/* 00818 80B19298 13000006 */  beq     $t8, $zero, .L80B192B4
/* 0081C 80B1929C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00820 80B192A0 00812821 */  addu    $a1, $a0, $at
/* 00824 80B192A4 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00828 80B192A8 260602E8 */  addiu   $a2, $s0, 0x02E8           ## $a2 = 000002E8
/* 0082C 80B192AC 1000001B */  beq     $zero, $zero, .L80B1931C
/* 00830 80B192B0 00000000 */  nop
.L80B192B4:
/* 00834 80B192B4 8F271C44 */  lw      $a3, 0x1C44($t9)           ## 00001C44
/* 00838 80B192B8 A20802F8 */  sb      $t0, 0x02F8($s0)           ## 000002F8
/* 0083C 80B192BC 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00840 80B192C0 24A512E4 */  addiu   $a1, $a1, 0x12E4           ## $a1 = 000012E4
/* 00844 80B192C4 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 00848 80B192C8 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 0084C 80B192CC AFA70040 */  sw      $a3, 0x0040($sp)
/* 00850 80B192D0 8FA70040 */  lw      $a3, 0x0040($sp)
/* 00854 80B192D4 8E0A02EC */  lw      $t2, 0x02EC($s0)           ## 000002EC
/* 00858 80B192D8 8609008A */  lh      $t1, 0x008A($s0)           ## 0000008A
/* 0085C 80B192DC 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 00860 80B192E0 44819000 */  mtc1    $at, $f18                  ## $f18 = -6.00
/* 00864 80B192E4 A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
/* 00868 80B192E8 14EA0008 */  bne     $a3, $t2, .L80B1930C
/* 0086C 80B192EC E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 00870 80B192F0 920B02F8 */  lbu     $t3, 0x02F8($s0)           ## 000002F8
/* 00874 80B192F4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00878 80B192F8 316C0004 */  andi    $t4, $t3, 0x0004           ## $t4 = 00000000
/* 0087C 80B192FC 15800003 */  bne     $t4, $zero, .L80B1930C
/* 00880 80B19300 00000000 */  nop
/* 00884 80B19304 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00888 80B19308 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
.L80B1930C:
/* 0088C 80B1930C 3C0580B2 */  lui     $a1, %hi(func_80B19E94)    ## $a1 = 80B20000
/* 00890 80B19310 24A59E94 */  addiu   $a1, $a1, %lo(func_80B19E94) ## $a1 = 80B19E94
/* 00894 80B19314 0C2C62A0 */  jal     func_80B18A80
/* 00898 80B19318 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B1931C:
/* 0089C 80B1931C 10000021 */  beq     $zero, $zero, .L80B193A4
/* 008A0 80B19320 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
.L80B19324:
/* 008A4 80B19324 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 008A8 80B19328 AFA00010 */  sw      $zero, 0x0010($sp)
/* 008AC 80B1932C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 008B0 80B19330 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 008B4 80B19334 240705DC */  addiu   $a3, $zero, 0x05DC         ## $a3 = 000005DC
/* 008B8 80B19338 1000001A */  beq     $zero, $zero, .L80B193A4
/* 008BC 80B1933C 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
.L80B19340:
/* 008C0 80B19340 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008C4 80B19344 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008C8 80B19348 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 008CC 80B1934C 44050000 */  mfc1    $a1, $f0
/* 008D0 80B19350 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 008D4 80B19354 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 008D8 80B19358 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008DC 80B1935C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 008E0 80B19360 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008E4 80B19364 44050000 */  mfc1    $a1, $f0
/* 008E8 80B19368 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 008EC 80B1936C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 008F0 80B19370 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 008F4 80B19374 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 008F8 80B19378 C60A0084 */  lwc1    $f10, 0x0084($s0)          ## 00000084
/* 008FC 80B1937C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00900 80B19380 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00904 80B19384 460A4400 */  add.s   $f16, $f8, $f10
/* 00908 80B19388 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0090C 80B1938C 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 00910 80B19390 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 00914 80B19394 44058000 */  mfc1    $a1, $f16
/* 00918 80B19398 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 0091C 80B1939C 00000000 */  nop
/* 00920 80B193A0 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
.L80B193A4:
/* 00924 80B193A4 306D0002 */  andi    $t5, $v1, 0x0002           ## $t5 = 00000000
/* 00928 80B193A8 11A00035 */  beq     $t5, $zero, .L80B19480
/* 0092C 80B193AC 306E0020 */  andi    $t6, $v1, 0x0020           ## $t6 = 00000000
/* 00930 80B193B0 15C00033 */  bne     $t6, $zero, .L80B19480
/* 00934 80B193B4 8FA4005C */  lw      $a0, 0x005C($sp)
/* 00938 80B193B8 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 0093C 80B193BC 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 00940 80B193C0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00944 80B193C4 26080354 */  addiu   $t0, $s0, 0x0354           ## $t0 = 00000354
/* 00948 80B193C8 26090360 */  addiu   $t1, $s0, 0x0360           ## $t1 = 00000360
/* 0094C 80B193CC 260A036C */  addiu   $t2, $s0, 0x036C           ## $t2 = 0000036C
/* 00950 80B193D0 AFAA0030 */  sw      $t2, 0x0030($sp)
/* 00954 80B193D4 AFA90034 */  sw      $t1, 0x0034($sp)
/* 00958 80B193D8 AFA80038 */  sw      $t0, 0x0038($sp)
/* 0095C 80B193DC AFB90018 */  sw      $t9, 0x0018($sp)
/* 00960 80B193E0 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00964 80B193E4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00968 80B193E8 26050348 */  addiu   $a1, $s0, 0x0348           ## $a1 = 00000348
/* 0096C 80B193EC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00970 80B193F0 0C00CD20 */  jal     func_80033480
/* 00974 80B193F4 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 00978 80B193F8 240B0050 */  addiu   $t3, $zero, 0x0050         ## $t3 = 00000050
/* 0097C 80B193FC 240C000F */  addiu   $t4, $zero, 0x000F         ## $t4 = 0000000F
/* 00980 80B19400 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00984 80B19404 AFAD0018 */  sw      $t5, 0x0018($sp)
/* 00988 80B19408 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 0098C 80B1940C AFAB0010 */  sw      $t3, 0x0010($sp)
/* 00990 80B19410 8FA4005C */  lw      $a0, 0x005C($sp)
/* 00994 80B19414 8FA50038 */  lw      $a1, 0x0038($sp)
/* 00998 80B19418 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0099C 80B1941C 0C00CD20 */  jal     func_80033480
/* 009A0 80B19420 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 009A4 80B19424 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 009A8 80B19428 240F000F */  addiu   $t7, $zero, 0x000F         ## $t7 = 0000000F
/* 009AC 80B1942C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 009B0 80B19430 AFB80018 */  sw      $t8, 0x0018($sp)
/* 009B4 80B19434 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 009B8 80B19438 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 009BC 80B1943C 8FA4005C */  lw      $a0, 0x005C($sp)
/* 009C0 80B19440 8FA50034 */  lw      $a1, 0x0034($sp)
/* 009C4 80B19444 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 009C8 80B19448 0C00CD20 */  jal     func_80033480
/* 009CC 80B1944C 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 009D0 80B19450 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 009D4 80B19454 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 009D8 80B19458 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 009DC 80B1945C AFA90018 */  sw      $t1, 0x0018($sp)
/* 009E0 80B19460 AFA80014 */  sw      $t0, 0x0014($sp)
/* 009E4 80B19464 AFB90010 */  sw      $t9, 0x0010($sp)
/* 009E8 80B19468 8FA4005C */  lw      $a0, 0x005C($sp)
/* 009EC 80B1946C 8FA50030 */  lw      $a1, 0x0030($sp)
/* 009F0 80B19470 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 009F4 80B19474 0C00CD20 */  jal     func_80033480
/* 009F8 80B19478 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 009FC 80B1947C 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
.L80B19480:
/* 00A00 80B19480 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00A04 80B19484 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00A08 80B19488 306B0040 */  andi    $t3, $v1, 0x0040           ## $t3 = 00000000
/* 00A0C 80B1948C 1541001A */  bne     $t2, $at, .L80B194F8
/* 00A10 80B19490 30780002 */  andi    $t8, $v1, 0x0002           ## $t8 = 00000000
/* 00A14 80B19494 11600012 */  beq     $t3, $zero, .L80B194E0
/* 00A18 80B19498 306F0002 */  andi    $t7, $v1, 0x0002           ## $t7 = 00000000
/* 00A1C 80B1949C 860C02E0 */  lh      $t4, 0x02E0($s0)           ## 000002E0
/* 00A20 80B194A0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00A24 80B194A4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00A28 80B194A8 15810006 */  bne     $t4, $at, .L80B194C4
/* 00A2C 80B194AC E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00A30 80B194B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A34 80B194B4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00A38 80B194B8 2405388A */  addiu   $a1, $zero, 0x388A         ## $a1 = 0000388A
/* 00A3C 80B194BC 10000005 */  beq     $zero, $zero, .L80B194D4
/* 00A40 80B194C0 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
.L80B194C4:
/* 00A44 80B194C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A48 80B194C8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00A4C 80B194CC 2405388F */  addiu   $a1, $zero, 0x388F         ## $a1 = 0000388F
/* 00A50 80B194D0 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
.L80B194D4:
/* 00A54 80B194D4 31AEFFBF */  andi    $t6, $t5, 0xFFBF           ## $t6 = 00000000
/* 00A58 80B194D8 1000000D */  beq     $zero, $zero, .L80B19510
/* 00A5C 80B194DC A60E0088 */  sh      $t6, 0x0088($s0)           ## 00000088
.L80B194E0:
/* 00A60 80B194E0 11E0000B */  beq     $t7, $zero, .L80B19510
/* 00A64 80B194E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A68 80B194E8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00A6C 80B194EC 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 00A70 80B194F0 10000008 */  beq     $zero, $zero, .L80B19514
/* 00A74 80B194F4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B194F8:
/* 00A78 80B194F8 13000005 */  beq     $t8, $zero, .L80B19510
/* 00A7C 80B194FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A80 80B19500 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00A84 80B19504 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 00A88 80B19508 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00A8C 80B1950C E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80B19510:
/* 00A90 80B19510 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B19514:
/* 00A94 80B19514 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00A98 80B19518 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00A9C 80B1951C 03E00008 */  jr      $ra
/* 00AA0 80B19520 00000000 */  nop


