glabel func_809303C8
/* 03DF8 809303C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03DFC 809303CC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 03E00 809303D0 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 03E04 809303D4 3C018093 */  lui     $at, %hi(D_8093746C)       ## $at = 80930000
/* 03E08 809303D8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 03E0C 809303DC 000FC080 */  sll     $t8, $t7,  2
/* 03E10 809303E0 00380821 */  addu    $at, $at, $t8
/* 03E14 809303E4 AC2E746C */  sw      $t6, %lo(D_8093746C)($at)
/* 03E18 809303E8 909903E4 */  lbu     $t9, 0x03E4($a0)           ## 000003E4
/* 03E1C 809303EC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 03E20 809303F0 3C058093 */  lui     $a1, %hi(D_8093787C)       ## $a1 = 80930000
/* 03E24 809303F4 3328FFFC */  andi    $t0, $t9, 0xFFFC           ## $t0 = 00000000
/* 03E28 809303F8 A08803E4 */  sb      $t0, 0x03E4($a0)           ## 000003E4
/* 03E2C 809303FC 84E9001C */  lh      $t1, 0x001C($a3)           ## 0000001C
/* 03E30 80930400 AFA70018 */  sw      $a3, 0x0018($sp)
/* 03E34 80930404 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03E38 80930408 00095080 */  sll     $t2, $t1,  2
/* 03E3C 8093040C 00AA2821 */  addu    $a1, $a1, $t2
/* 03E40 80930410 8CA5787C */  lw      $a1, %lo(D_8093787C)($a1)
/* 03E44 80930414 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 03E48 80930418 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 03E4C 8093041C 8FA70018 */  lw      $a3, 0x0018($sp)
/* 03E50 80930420 3C0B8093 */  lui     $t3, %hi(func_8093043C)    ## $t3 = 80930000
/* 03E54 80930424 256B043C */  addiu   $t3, $t3, %lo(func_8093043C) ## $t3 = 8093043C
/* 03E58 80930428 ACEB0190 */  sw      $t3, 0x0190($a3)           ## 00000190
/* 03E5C 8093042C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 03E60 80930430 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03E64 80930434 03E00008 */  jr      $ra
/* 03E68 80930438 00000000 */  nop


