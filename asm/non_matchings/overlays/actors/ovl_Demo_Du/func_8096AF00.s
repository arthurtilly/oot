glabel func_8096AF00
/* 01430 8096AF00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01434 8096AF04 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01438 8096AF08 10A00014 */  beq     $a1, $zero, .L8096AF5C
/* 0143C 8096AF0C AFA40028 */  sw      $a0, 0x0028($sp)
/* 01440 8096AF10 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01444 8096AF14 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01448 8096AF18 24840D00 */  addiu   $a0, $a0, 0x0D00           ## $a0 = 06000D00
/* 0144C 8096AF1C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01450 8096AF20 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01454 8096AF24 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01458 8096AF28 468021A0 */  cvt.s.w $f6, $f4
/* 0145C 8096AF2C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01460 8096AF30 44070000 */  mfc1    $a3, $f0
/* 01464 8096AF34 24A50D00 */  addiu   $a1, $a1, 0x0D00           ## $a1 = 06000D00
/* 01468 8096AF38 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0146C 8096AF3C AFA00014 */  sw      $zero, 0x0014($sp)
/* 01470 8096AF40 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01474 8096AF44 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01478 8096AF48 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0147C 8096AF4C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01480 8096AF50 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 01484 8096AF54 240E0013 */  addiu   $t6, $zero, 0x0013         ## $t6 = 00000013
/* 01488 8096AF58 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
.L8096AF5C:
/* 0148C 8096AF5C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01490 8096AF60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01494 8096AF64 03E00008 */  jr      $ra
/* 01498 8096AF68 00000000 */  nop


