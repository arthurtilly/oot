glabel func_80B47360
/* 03310 80B47360 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 03314 80B47364 AFB00028 */  sw      $s0, 0x0028($sp)
/* 03318 80B47368 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0331C 80B4736C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03320 80B47370 AFBF002C */  sw      $ra, 0x002C($sp)
/* 03324 80B47374 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 03328 80B47378 AFA50044 */  sw      $a1, 0x0044($sp)
/* 0332C 80B4737C 248419F4 */  addiu   $a0, $a0, 0x19F4           ## $a0 = 060119F4
/* 03330 80B47380 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03334 80B47384 E7A0003C */  swc1    $f0, 0x003C($sp)
/* 03338 80B47388 8E0E03DC */  lw      $t6, 0x03DC($s0)           ## 000003DC
/* 0333C 80B4738C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03340 80B47390 C7A0003C */  lwc1    $f0, 0x003C($sp)
/* 03344 80B47394 29C10011 */  slti    $at, $t6, 0x0011
/* 03348 80B47398 10200004 */  beq     $at, $zero, .L80B473AC
/* 0334C 80B4739C 468020A0 */  cvt.s.w $f2, $f4
/* 03350 80B473A0 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 03354 80B473A4 44810000 */  mtc1    $at, $f0                   ## $f0 = -4.00
/* 03358 80B473A8 00000000 */  nop
.L80B473AC:
/* 0335C 80B473AC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 03360 80B473B0 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 03364 80B473B4 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 03368 80B473B8 24A519F4 */  addiu   $a1, $a1, 0x19F4           ## $a1 = 060119F4
/* 0336C 80B473BC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03370 80B473C0 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 03374 80B473C4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03378 80B473C8 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 0337C 80B473CC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 03380 80B473D0 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 03384 80B473D4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 03388 80B473D8 24180012 */  addiu   $t8, $zero, 0x0012         ## $t8 = 00000012
/* 0338C 80B473DC AE1803DC */  sw      $t8, 0x03DC($s0)           ## 000003DC
/* 03390 80B473E0 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 03394 80B473E4 860503FE */  lh      $a1, 0x03FE($s0)           ## 000003FE
/* 03398 80B473E8 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 0339C 80B473EC 0C2D11AA */  jal     func_80B446A8
/* 033A0 80B473F0 AFA40034 */  sw      $a0, 0x0034($sp)
/* 033A4 80B473F4 8FA40034 */  lw      $a0, 0x0034($sp)
/* 033A8 80B473F8 A60203FE */  sh      $v0, 0x03FE($s0)           ## 000003FE
/* 033AC 80B473FC 8FA70044 */  lw      $a3, 0x0044($sp)
/* 033B0 80B47400 860503FE */  lh      $a1, 0x03FE($s0)           ## 000003FE
/* 033B4 80B47404 0C2D121C */  jal     func_80B44870
/* 033B8 80B47408 86060400 */  lh      $a2, 0x0400($s0)           ## 00000400
/* 033BC 80B4740C 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 033C0 80B47410 3C0580B4 */  lui     $a1, %hi(func_80B4743C)    ## $a1 = 80B40000
/* 033C4 80B47414 A6020402 */  sh      $v0, 0x0402($s0)           ## 00000402
/* 033C8 80B47418 24A5743C */  addiu   $a1, $a1, %lo(func_80B4743C) ## $a1 = 80B4743C
/* 033CC 80B4741C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 033D0 80B47420 0C2D1014 */  jal     func_80B44050
/* 033D4 80B47424 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 033D8 80B47428 8FBF002C */  lw      $ra, 0x002C($sp)
/* 033DC 80B4742C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 033E0 80B47430 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 033E4 80B47434 03E00008 */  jr      $ra
/* 033E8 80B47438 00000000 */  nop


