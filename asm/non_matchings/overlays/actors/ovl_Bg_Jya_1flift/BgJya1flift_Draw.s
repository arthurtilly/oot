glabel BgJya1flift_Draw
/* 00548 808930A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0054C 808930AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00550 808930B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00554 808930B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00558 808930B8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0055C 808930BC 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00560 808930C0 24A501F0 */  addiu   $a1, $a1, 0x01F0           ## $a1 = 060001F0
/* 00564 808930C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00568 808930C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0056C 808930CC 03E00008 */  jr      $ra                        
/* 00570 808930D0 00000000 */  nop
/* 00574 808930D4 00000000 */  nop
/* 00578 808930D8 00000000 */  nop
/* 0057C 808930DC 00000000 */  nop

