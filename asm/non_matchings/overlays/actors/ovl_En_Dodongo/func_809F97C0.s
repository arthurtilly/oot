glabel func_809F97C0
/* 01570 809F97C0 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 01574 809F97C4 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 01578 809F97C8 AFB00030 */  sw      $s0, 0x0030($sp)
/* 0157C 809F97CC AFA50064 */  sw      $a1, 0x0064($sp)
/* 01580 809F97D0 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 01584 809F97D4 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 01588 809F97D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0158C 809F97DC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01590 809F97E0 01CF1823 */  subu    $v1, $t6, $t7
/* 01594 809F97E4 00031C00 */  sll     $v1, $v1, 16
/* 01598 809F97E8 00031C03 */  sra     $v1, $v1, 16
/* 0159C 809F97EC A7A3005E */  sh      $v1, 0x005E($sp)
/* 015A0 809F97F0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 015A4 809F97F4 AFA40038 */  sw      $a0, 0x0038($sp)
/* 015A8 809F97F8 10400048 */  beq     $v0, $zero, .L809F991C
/* 015AC 809F97FC 87A3005E */  lh      $v1, 0x005E($sp)
/* 015B0 809F9800 8618030C */  lh      $t8, 0x030C($s0)           ## 0000030C
/* 015B4 809F9804 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015B8 809F9808 57000009 */  bnel    $t8, $zero, .L809F9830
/* 015BC 809F980C A200063D */  sb      $zero, 0x063D($s0)         ## 0000063D
/* 015C0 809F9810 04600003 */  bltz    $v1, .L809F9820
/* 015C4 809F9814 00031023 */  subu    $v0, $zero, $v1
/* 015C8 809F9818 10000001 */  beq     $zero, $zero, .L809F9820
/* 015CC 809F981C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L809F9820:
/* 015D0 809F9820 28414000 */  slti    $at, $v0, 0x4000
/* 015D4 809F9824 1020000E */  beq     $at, $zero, .L809F9860
/* 015D8 809F9828 3409FFFF */  ori     $t1, $zero, 0xFFFF         ## $t1 = 0000FFFF
/* 015DC 809F982C A200063D */  sb      $zero, 0x063D($s0)         ## 0000063D
.L809F9830:
/* 015E0 809F9830 A20005FD */  sb      $zero, 0x05FD($s0)         ## 000005FD
/* 015E4 809F9834 A2000598 */  sb      $zero, 0x0598($s0)         ## 00000598
/* 015E8 809F9838 AE000628 */  sw      $zero, 0x0628($s0)         ## 00000628
/* 015EC 809F983C AE0005E8 */  sw      $zero, 0x05E8($s0)         ## 000005E8
/* 015F0 809F9840 A200062D */  sb      $zero, 0x062D($s0)         ## 0000062D
/* 015F4 809F9844 0C27E2B6 */  jal     func_809F8AD8
/* 015F8 809F9848 A20005ED */  sb      $zero, 0x05ED($s0)         ## 000005ED
/* 015FC 809F984C 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 01600 809F9850 0C01DF64 */  jal     Math_Rand_S16Offset

/* 01604 809F9854 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 01608 809F9858 10000084 */  beq     $zero, $zero, .L809F9A6C
/* 0160C 809F985C A602030C */  sh      $v0, 0x030C($s0)           ## 0000030C
.L809F9860:
/* 01610 809F9860 8619008A */  lh      $t9, 0x008A($s0)           ## 0000008A
/* 01614 809F9864 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 01618 809F9868 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 0161C 809F986C 24053859 */  addiu   $a1, $zero, 0x3859         ## $a1 = 00003859
/* 01620 809F9870 03282023 */  subu    $a0, $t9, $t0
/* 01624 809F9874 00041C00 */  sll     $v1, $a0, 16
/* 01628 809F9878 00031C03 */  sra     $v1, $v1, 16
/* 0162C 809F987C 04600003 */  bltz    $v1, .L809F988C
/* 01630 809F9880 00046400 */  sll     $t4, $a0, 16
/* 01634 809F9884 10000002 */  beq     $zero, $zero, .L809F9890
/* 01638 809F9888 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L809F988C:
/* 0163C 809F988C 00031023 */  subu    $v0, $zero, $v1
.L809F9890:
/* 01640 809F9890 01225023 */  subu    $t2, $t1, $v0
/* 01644 809F9894 0141001A */  div     $zero, $t2, $at
/* 01648 809F9898 00005812 */  mflo    $t3
/* 0164C 809F989C 000C6C03 */  sra     $t5, $t4, 16
/* 01650 809F98A0 05A00007 */  bltz    $t5, .L809F98C0
/* 01654 809F98A4 A60B0310 */  sh      $t3, 0x0310($s0)           ## 00000310
/* 01658 809F98A8 860E0310 */  lh      $t6, 0x0310($s0)           ## 00000310
/* 0165C 809F98AC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 01660 809F98B0 24E742C4 */  addiu   $a3, $a3, 0x42C4           ## $a3 = 060042C4
/* 01664 809F98B4 000E7823 */  subu    $t7, $zero, $t6
/* 01668 809F98B8 10000003 */  beq     $zero, $zero, .L809F98C8
/* 0166C 809F98BC A60F0310 */  sh      $t7, 0x0310($s0)           ## 00000310
.L809F98C0:
/* 01670 809F98C0 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 01674 809F98C4 24E73B14 */  addiu   $a3, $a3, 0x3B14           ## $a3 = 06003B14
.L809F98C8:
/* 01678 809F98C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0167C 809F98CC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01680 809F98D0 AFA70058 */  sw      $a3, 0x0058($sp)
/* 01684 809F98D4 8FA50058 */  lw      $a1, 0x0058($sp)
/* 01688 809F98D8 8FA40038 */  lw      $a0, 0x0038($sp)
/* 0168C 809F98DC 0C0294A7 */  jal     SkelAnime_ChangeAnimPlaybackStop
/* 01690 809F98E0 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01694 809F98E4 3C03FFCF */  lui     $v1, 0xFFCF                ## $v1 = FFCF0000
/* 01698 809F98E8 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
/* 0169C 809F98EC 3463FFFF */  ori     $v1, $v1, 0xFFFF           ## $v1 = FFCFFFFF
/* 016A0 809F98F0 24180012 */  addiu   $t8, $zero, 0x0012         ## $t8 = 00000012
/* 016A4 809F98F4 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
/* 016A8 809F98F8 A618030C */  sh      $t8, 0x030C($s0)           ## 0000030C
/* 016AC 809F98FC A202063D */  sb      $v0, 0x063D($s0)           ## 0000063D
/* 016B0 809F9900 A20205FD */  sb      $v0, 0x05FD($s0)           ## 000005FD
/* 016B4 809F9904 A2020598 */  sb      $v0, 0x0598($s0)           ## 00000598
/* 016B8 809F9908 AE030628 */  sw      $v1, 0x0628($s0)           ## 00000628
/* 016BC 809F990C AE0305E8 */  sw      $v1, 0x05E8($s0)           ## 000005E8
/* 016C0 809F9910 A209062D */  sb      $t1, 0x062D($s0)           ## 0000062D
/* 016C4 809F9914 10000055 */  beq     $zero, $zero, .L809F9A6C
/* 016C8 809F9918 A20905ED */  sb      $t1, 0x05ED($s0)           ## 000005ED
.L809F991C:
/* 016CC 809F991C 8602030C */  lh      $v0, 0x030C($s0)           ## 0000030C
/* 016D0 809F9920 28410002 */  slti    $at, $v0, 0x0002
/* 016D4 809F9924 54200052 */  bnel    $at, $zero, .L809F9A70
/* 016D8 809F9928 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 016DC 809F992C 860F0618 */  lh      $t7, 0x0618($s0)           ## 00000618
/* 016E0 809F9930 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
/* 016E4 809F9934 860C0310 */  lh      $t4, 0x0310($s0)           ## 00000310
/* 016E8 809F9938 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 016EC 809F993C 244AFFFF */  addiu   $t2, $v0, 0xFFFF           ## $t2 = 00000010
/* 016F0 809F9940 016C6821 */  addu    $t5, $t3, $t4
/* 016F4 809F9944 468021A0 */  cvt.s.w $f6, $f4
/* 016F8 809F9948 A60D0032 */  sh      $t5, 0x0032($s0)           ## 00000032
/* 016FC 809F994C 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 01700 809F9950 A60A030C */  sh      $t2, 0x030C($s0)           ## 0000030C
/* 01704 809F9954 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01708 809F9958 A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
/* 0170C 809F995C E7A6004C */  swc1    $f6, 0x004C($sp)
/* 01710 809F9960 8618061A */  lh      $t8, 0x061A($s0)           ## 0000061A
/* 01714 809F9964 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 01718 809F9968 240A000F */  addiu   $t2, $zero, 0x000F         ## $t2 = 0000000F
/* 0171C 809F996C 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 01720 809F9970 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 01724 809F9974 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 01728 809F9978 468042A0 */  cvt.s.w $f10, $f8
/* 0172C 809F997C 8FA40064 */  lw      $a0, 0x0064($sp)
/* 01730 809F9980 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01734 809F9984 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFFEC
/* 01738 809F9988 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 0173C 809F998C E7AA0050 */  swc1    $f10, 0x0050($sp)
/* 01740 809F9990 8619061C */  lh      $t9, 0x061C($s0)           ## 0000061C
/* 01744 809F9994 AFA00020 */  sw      $zero, 0x0020($sp)
/* 01748 809F9998 AFAA001C */  sw      $t2, 0x001C($sp)
/* 0174C 809F999C 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 01750 809F99A0 AFA90018 */  sw      $t1, 0x0018($sp)
/* 01754 809F99A4 AFA80010 */  sw      $t0, 0x0010($sp)
/* 01758 809F99A8 468084A0 */  cvt.s.w $f18, $f16
/* 0175C 809F99AC E7A40014 */  swc1    $f4, 0x0014($sp)
/* 01760 809F99B0 0C00CC98 */  jal     func_80033260
/* 01764 809F99B4 E7B20054 */  swc1    $f18, 0x0054($sp)
/* 01768 809F99B8 860B0658 */  lh      $t3, 0x0658($s0)           ## 00000658
/* 0176C 809F99BC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01770 809F99C0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01774 809F99C4 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 01778 809F99C8 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 0177C 809F99CC 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 01780 809F99D0 46803220 */  cvt.s.w $f8, $f6
/* 01784 809F99D4 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 01788 809F99D8 8FA40064 */  lw      $a0, 0x0064($sp)
/* 0178C 809F99DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01790 809F99E0 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFFEC
/* 01794 809F99E4 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 01798 809F99E8 E7A8004C */  swc1    $f8, 0x004C($sp)
/* 0179C 809F99EC 860C065A */  lh      $t4, 0x065A($s0)           ## 0000065A
/* 017A0 809F99F0 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 017A4 809F99F4 00000000 */  nop
/* 017A8 809F99F8 46805420 */  cvt.s.w $f16, $f10
/* 017AC 809F99FC E7B00050 */  swc1    $f16, 0x0050($sp)
/* 017B0 809F9A00 860D065C */  lh      $t5, 0x065C($s0)           ## 0000065C
/* 017B4 809F9A04 AFA00020 */  sw      $zero, 0x0020($sp)
/* 017B8 809F9A08 AFB8001C */  sw      $t8, 0x001C($sp)
/* 017BC 809F9A0C 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 017C0 809F9A10 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 017C4 809F9A14 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 017C8 809F9A18 46809120 */  cvt.s.w $f4, $f18
/* 017CC 809F9A1C E7A60014 */  swc1    $f6, 0x0014($sp)
/* 017D0 809F9A20 0C00CC98 */  jal     func_80033260
/* 017D4 809F9A24 E7A40054 */  swc1    $f4, 0x0054($sp)
/* 017D8 809F9A28 92190598 */  lbu     $t9, 0x0598($s0)           ## 00000598
/* 017DC 809F9A2C 8FA70064 */  lw      $a3, 0x0064($sp)
/* 017E0 809F9A30 33280002 */  andi    $t0, $t9, 0x0002           ## $t0 = 00000000
/* 017E4 809F9A34 51000008 */  beql    $t0, $zero, .L809F9A58
/* 017E8 809F9A38 8FA40064 */  lw      $a0, 0x0064($sp)
/* 017EC 809F9A3C 8CE41C44 */  lw      $a0, 0x1C44($a3)           ## 00001C44
/* 017F0 809F9A40 8E09058C */  lw      $t1, 0x058C($s0)           ## 0000058C
/* 017F4 809F9A44 54890004 */  bnel    $a0, $t1, .L809F9A58
/* 017F8 809F9A48 8FA40064 */  lw      $a0, 0x0064($sp)
/* 017FC 809F9A4C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01800 809F9A50 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 01804 809F9A54 8FA40064 */  lw      $a0, 0x0064($sp)
.L809F9A58:
/* 01808 809F9A58 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0180C 809F9A5C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01810 809F9A60 26060588 */  addiu   $a2, $s0, 0x0588           ## $a2 = 00000588
/* 01814 809F9A64 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01818 809F9A68 00812821 */  addu    $a1, $a0, $at
.L809F9A6C:
/* 0181C 809F9A6C 8FBF0034 */  lw      $ra, 0x0034($sp)
.L809F9A70:
/* 01820 809F9A70 8FB00030 */  lw      $s0, 0x0030($sp)
/* 01824 809F9A74 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 01828 809F9A78 03E00008 */  jr      $ra
/* 0182C 809F9A7C 00000000 */  nop


