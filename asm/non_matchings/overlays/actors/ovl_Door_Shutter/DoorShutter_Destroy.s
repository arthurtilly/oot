glabel DoorShutter_Destroy
/* 003FC 8099669C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00400 809966A0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00404 809966A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00408 809966A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0040C 809966AC 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 00410 809966B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00414 809966B4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00418 809966B8 0C00FB56 */  jal     func_8003ED58
              ## func_8003ED58
/* 0041C 809966BC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00420 809966C0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00424 809966C4 8FB8001C */  lw      $t8, 0x001C($sp)           
/* 00428 809966C8 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 0042C 809966CC 80EF0003 */  lb      $t7, 0x0003($a3)           ## 00000003
/* 00430 809966D0 05E2000B */  bltzl   $t7, .L80996700            
/* 00434 809966D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00438 809966D8 94E3001C */  lhu     $v1, 0x001C($a3)           ## 0000001C
/* 0043C 809966DC 0338C821 */  addu    $t9, $t9, $t8              
/* 00440 809966E0 8F391D38 */  lw      $t9, 0x1D38($t9)           ## 00011D38
/* 00444 809966E4 00031A83 */  sra     $v1, $v1, 10               
/* 00448 809966E8 00034100 */  sll     $t0, $v1,  4               
/* 0044C 809966EC 03281021 */  addu    $v0, $t9, $t0              
/* 00450 809966F0 84490004 */  lh      $t1, 0x0004($v0)           ## 00000004
/* 00454 809966F4 00095023 */  subu    $t2, $zero, $t1            
/* 00458 809966F8 A44A0004 */  sh      $t2, 0x0004($v0)           ## 00000004
/* 0045C 809966FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80996700:
/* 00460 80996700 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00464 80996704 03E00008 */  jr      $ra                        
/* 00468 80996708 00000000 */  nop


