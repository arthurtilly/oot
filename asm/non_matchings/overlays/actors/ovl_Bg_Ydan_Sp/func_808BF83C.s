glabel func_808BF83C
/* 0042C 808BF83C 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 00430 808BF840 24636460 */  addiu   $v1, $v1, 0x6460           ## $v1 = 06006460
/* 00434 808BF844 00037100 */  sll     $t6, $v1,  4               
/* 00438 808BF848 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 0043C 808BF84C 000E7F02 */  srl     $t7, $t6, 28               
/* 00440 808BF850 24E76FA8 */  addiu   $a3, $a3, 0x6FA8           ## $a3 = 80166FA8
/* 00444 808BF854 000FC080 */  sll     $t8, $t7,  2               
/* 00448 808BF858 00F8C821 */  addu    $t9, $a3, $t8              
/* 0044C 808BF85C 8F2A0000 */  lw      $t2, 0x0000($t9)           ## 00000000
/* 00450 808BF860 3C0800FF */  lui     $t0, 0x00FF                ## $t0 = 00FF0000
/* 00454 808BF864 3508FFFF */  ori     $t0, $t0, 0xFFFF           ## $t0 = 00FFFFFF
/* 00458 808BF868 00685824 */  and     $t3, $v1, $t0              
/* 0045C 808BF86C 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 00460 808BF870 014B6021 */  addu    $t4, $t2, $t3              
/* 00464 808BF874 01891021 */  addu    $v0, $t4, $t1              
/* 00468 808BF878 8C450010 */  lw      $a1, 0x0010($v0)           ## 00000010
/* 0046C 808BF87C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00470 808BF880 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 00474 808BF884 00056900 */  sll     $t5, $a1,  4               
/* 00478 808BF888 000D7702 */  srl     $t6, $t5, 28               
/* 0047C 808BF88C 000E7880 */  sll     $t7, $t6,  2               
/* 00480 808BF890 00EFC021 */  addu    $t8, $a3, $t7              
/* 00484 808BF894 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 00488 808BF898 00A85024 */  and     $t2, $a1, $t0              
/* 0048C 808BF89C 032A5821 */  addu    $t3, $t9, $t2              
/* 00490 808BF8A0 01696021 */  addu    $t4, $t3, $t1              
/* 00494 808BF8A4 AC4C0010 */  sw      $t4, 0x0010($v0)           ## 00000010
/* 00498 808BF8A8 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 0049C 808BF8AC C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 004A0 808BF8B0 46062201 */  sub.s   $f8, $f4, $f6              
/* 004A4 808BF8B4 460A4402 */  mul.s   $f16, $f8, $f10            
/* 004A8 808BF8B8 4600848D */  trunc.w.s $f18, $f16                 
/* 004AC 808BF8BC 44069000 */  mfc1    $a2, $f18                  
/* 004B0 808BF8C0 00000000 */  nop
/* 004B4 808BF8C4 00063400 */  sll     $a2, $a2, 16               
/* 004B8 808BF8C8 00063403 */  sra     $a2, $a2, 16               
/* 004BC 808BF8CC A5860056 */  sh      $a2, 0x0056($t4)           ## 00000056
/* 004C0 808BF8D0 8C4F0010 */  lw      $t7, 0x0010($v0)           ## 00000010
/* 004C4 808BF8D4 A5E6004A */  sh      $a2, 0x004A($t7)           ## 0000004A
/* 004C8 808BF8D8 8C580010 */  lw      $t8, 0x0010($v0)           ## 00000010
/* 004CC 808BF8DC A706003E */  sh      $a2, 0x003E($t8)           ## 0000003E
/* 004D0 808BF8E0 8C590010 */  lw      $t9, 0x0010($v0)           ## 00000010
/* 004D4 808BF8E4 A7260038 */  sh      $a2, 0x0038($t9)           ## 00000038
/* 004D8 808BF8E8 8C4A0010 */  lw      $t2, 0x0010($v0)           ## 00000010
/* 004DC 808BF8EC A5460026 */  sh      $a2, 0x0026($t2)           ## 00000026
/* 004E0 808BF8F0 8C4B0010 */  lw      $t3, 0x0010($v0)           ## 00000010
/* 004E4 808BF8F4 A5660020 */  sh      $a2, 0x0020($t3)           ## 00000020
/* 004E8 808BF8F8 8C4C0010 */  lw      $t4, 0x0010($v0)           ## 00000010
/* 004EC 808BF8FC A5860008 */  sh      $a2, 0x0008($t4)           ## 00000008
/* 004F0 808BF900 8C4D0010 */  lw      $t5, 0x0010($v0)           ## 00000010
/* 004F4 808BF904 03E00008 */  jr      $ra                        
/* 004F8 808BF908 A5A60002 */  sh      $a2, 0x0002($t5)           ## 00000002
