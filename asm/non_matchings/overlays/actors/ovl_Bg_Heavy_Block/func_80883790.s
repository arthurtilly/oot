glabel func_80883790
/* 00000 80883790 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80883794 3C014480 */  lui     $at, 0x4480                ## $at = 44800000
/* 00008 80883798 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 8088379C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1024.00
/* 00010 808837A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00014 808837A4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00018 808837A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0001C 808837AC C7A4001C */  lwc1    $f4, 0x001C($sp)           
/* 00020 808837B0 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 00024 808837B4 3C014480 */  lui     $at, 0x4480                ## $at = 44800000
/* 00028 808837B8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0002C 808837BC 44816000 */  mtc1    $at, $f12                  ## $f12 = 1024.00
/* 00030 808837C0 4600320D */  trunc.w.s $f8, $f6                   
/* 00034 808837C4 440F4000 */  mfc1    $t7, $f8                   
/* 00038 808837C8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0003C 808837CC A70F0030 */  sh      $t7, 0x0030($t8)           ## 00000030
/* 00040 808837D0 C7AA001C */  lwc1    $f10, 0x001C($sp)          
/* 00044 808837D4 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 00048 808837D8 3C014480 */  lui     $at, 0x4480                ## $at = 44800000
/* 0004C 808837DC 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00050 808837E0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1024.00
/* 00054 808837E4 4600848D */  trunc.w.s $f18, $f16                 
/* 00058 808837E8 44089000 */  mfc1    $t0, $f18                  
/* 0005C 808837EC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00060 808837F0 A5280032 */  sh      $t0, 0x0032($t1)           ## 00000032
/* 00064 808837F4 C7A4001C */  lwc1    $f4, 0x001C($sp)           
/* 00068 808837F8 8FAC0018 */  lw      $t4, 0x0018($sp)           
/* 0006C 808837FC 46040182 */  mul.s   $f6, $f0, $f4              
/* 00070 80883800 4600320D */  trunc.w.s $f8, $f6                   
/* 00074 80883804 440B4000 */  mfc1    $t3, $f8                   
/* 00078 80883808 00000000 */  nop
/* 0007C 8088380C A58B0034 */  sh      $t3, 0x0034($t4)           ## 00000034
/* 00080 80883810 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00084 80883814 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00088 80883818 03E00008 */  jr      $ra                        
/* 0008C 8088381C 00000000 */  nop


