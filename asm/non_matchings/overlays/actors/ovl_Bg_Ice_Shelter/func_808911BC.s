glabel func_808911BC
/* 00A7C 808911BC 3C0E8089 */  lui     $t6, %hi(func_808911D4)    ## $t6 = 80890000
/* 00A80 808911C0 25CE11D4 */  addiu   $t6, $t6, %lo(func_808911D4) ## $t6 = 808911D4
/* 00A84 808911C4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00A88 808911C8 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00A8C 808911CC 03E00008 */  jr      $ra                        
/* 00A90 808911D0 A48F0200 */  sh      $t7, 0x0200($a0)           ## 00000200
