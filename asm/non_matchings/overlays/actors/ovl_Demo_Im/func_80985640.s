glabel func_80985640
/* 00A60 80985640 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A64 80985644 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00A68 80985648 10A00014 */  beq     $a1, $zero, .L8098569C
/* 00A6C 8098564C AFA40028 */  sw      $a0, 0x0028($sp)
/* 00A70 80985650 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00A74 80985654 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00A78 80985658 24840AFC */  addiu   $a0, $a0, 0x0AFC           ## $a0 = 06000AFC
/* 00A7C 8098565C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00A80 80985660 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A84 80985664 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00A88 80985668 468021A0 */  cvt.s.w $f6, $f4
/* 00A8C 8098566C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A90 80985670 44070000 */  mfc1    $a3, $f0
/* 00A94 80985674 24A50AFC */  addiu   $a1, $a1, 0x0AFC           ## $a1 = 06000AFC
/* 00A98 80985678 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00A9C 8098567C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00AA0 80985680 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00AA4 80985684 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AA8 80985688 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00AAC 8098568C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00AB0 80985690 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 00AB4 80985694 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00AB8 80985698 ADEE0260 */  sw      $t6, 0x0260($t7)           ## 00000260
.L8098569C:
/* 00ABC 8098569C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00AC0 809856A0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AC4 809856A4 03E00008 */  jr      $ra
/* 00AC8 809856A8 00000000 */  nop
