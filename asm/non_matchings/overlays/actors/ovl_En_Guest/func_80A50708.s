glabel func_80A50708
/* 004E8 80A50708 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004EC 80A5070C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004F0 80A50710 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004F4 80A50714 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 004F8 80A50718 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 004FC 80A5071C 0C031A73 */  jal     Graph_Alloc
              
/* 00500 80A50720 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 00504 80A50724 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 00508 80A50728 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0050C 80A5072C 93A90023 */  lbu     $t1, 0x0023($sp)           
/* 00510 80A50730 93B8001F */  lbu     $t8, 0x001F($sp)           
/* 00514 80A50734 93AD0027 */  lbu     $t5, 0x0027($sp)           
/* 00518 80A50738 93A8002B */  lbu     $t0, 0x002B($sp)           
/* 0051C 80A5073C 00095400 */  sll     $t2, $t1, 16               
/* 00520 80A50740 0018CE00 */  sll     $t9, $t8, 24               
/* 00524 80A50744 032A5825 */  or      $t3, $t9, $t2              ## $t3 = 00000000
/* 00528 80A50748 000D7200 */  sll     $t6, $t5,  8               
/* 0052C 80A5074C 016E7825 */  or      $t7, $t3, $t6              ## $t7 = FB000000
/* 00530 80A50750 3C19DF00 */  lui     $t9, 0xDF00                ## $t9 = DF000000
/* 00534 80A50754 01E84825 */  or      $t1, $t7, $t0              ## $t1 = FB000000
/* 00538 80A50758 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0053C 80A5075C AC590008 */  sw      $t9, 0x0008($v0)           ## 00000008
/* 00540 80A50760 AC40000C */  sw      $zero, 0x000C($v0)         ## 0000000C
/* 00544 80A50764 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00548 80A50768 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0054C 80A5076C 03E00008 */  jr      $ra                        
/* 00550 80A50770 00000000 */  nop
