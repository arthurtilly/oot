glabel func_8083A434
/* 08224 8083A434 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 08228 8083A438 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0822C 8083A43C 3C068085 */  lui     $a2, %hi(func_8084E6D4)    ## $a2 = 80850000
/* 08230 8083A440 24C6E6D4 */  addiu   $a2, $a2, %lo(func_8084E6D4) ## $a2 = 8084E6D4
/* 08234 8083A444 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 08238 8083A448 0C20D76B */  jal     func_80835DAC              
/* 0823C 8083A44C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08240 8083A450 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 08244 8083A454 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 08248 8083A458 34210400 */  ori     $at, $at, 0x0400           ## $at = 20000400
/* 0824C 8083A45C 8CAE067C */  lw      $t6, 0x067C($a1)           ## 0000067C
/* 08250 8083A460 80A20434 */  lb      $v0, 0x0434($a1)           ## 00000434
/* 08254 8083A464 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 08258 8083A468 01C17825 */  or      $t7, $t6, $at              ## $t7 = 20000400
/* 0825C 8083A46C 2401004F */  addiu   $at, $zero, 0x004F         ## $at = 0000004F
/* 08260 8083A470 14410003 */  bne     $v0, $at, .L8083A480       
/* 08264 8083A474 ACAF067C */  sw      $t7, 0x067C($a1)           ## 0000067C
/* 08268 8083A478 10000007 */  beq     $zero, $zero, .L8083A498   
/* 0826C 8083A47C A4B80850 */  sh      $t8, 0x0850($a1)           ## 00000850
.L8083A480:
/* 08270 8083A480 04400004 */  bltz    $v0, .L8083A494            
/* 08274 8083A484 00024023 */  subu    $t0, $zero, $v0            
/* 08278 8083A488 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0827C 8083A48C 10000002 */  beq     $zero, $zero, .L8083A498   
/* 08280 8083A490 A4B90850 */  sh      $t9, 0x0850($a1)           ## 00000850
.L8083A494:
/* 08284 8083A494 A0A80434 */  sb      $t0, 0x0434($a1)           ## 00000434
.L8083A498:
/* 08288 8083A498 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0828C 8083A49C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 08290 8083A4A0 03E00008 */  jr      $ra                        
/* 08294 8083A4A4 00000000 */  nop
