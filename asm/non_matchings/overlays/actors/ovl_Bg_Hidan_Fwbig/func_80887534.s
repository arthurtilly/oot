glabel func_80887534
/* 00244 80887534 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00248 80887538 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0024C 8088753C 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00250 80887540 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00254 80887544 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00258 80887548 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0025C 8088754C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00260 80887550 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00264 80887554 1040000C */  beq     $v0, $zero, .L80887588     
/* 00268 80887558 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 0026C 8088755C 3C0F8088 */  lui     $t7, %hi(func_80887598)    ## $t7 = 80880000
/* 00270 80887560 25EF7598 */  addiu   $t7, $t7, %lo(func_80887598) ## $t7 = 80887598
/* 00274 80887564 ACEF014C */  sw      $t7, 0x014C($a3)           ## 0000014C
/* 00278 80887568 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0027C 8088756C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00280 80887570 24050D0C */  addiu   $a1, $zero, 0x0D0C         ## $a1 = 00000D0C
/* 00284 80887574 0C02003E */  jal     func_800800F8              
/* 00288 80887578 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 0028C 8088757C 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 00290 80887580 24180023 */  addiu   $t8, $zero, 0x0023         ## $t8 = 00000023
/* 00294 80887584 A7380152 */  sh      $t8, 0x0152($t9)           ## 00000152
.L80887588:
/* 00298 80887588 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0029C 8088758C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 002A0 80887590 03E00008 */  jr      $ra                        
/* 002A4 80887594 00000000 */  nop


