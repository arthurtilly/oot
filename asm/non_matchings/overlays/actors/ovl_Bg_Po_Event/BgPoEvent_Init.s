glabel BgPoEvent_Init
/* 0052C 808A673C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00530 808A6740 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00534 808A6744 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00538 808A6748 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0053C 808A674C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00540 808A6750 3C05808A */  lui     $a1, %hi(D_808A7D88)       ## $a1 = 808A0000
/* 00544 808A6754 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00548 808A6758 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0054C 808A675C 24A57D88 */  addiu   $a1, $a1, %lo(D_808A7D88)  ## $a1 = 808A7D88
/* 00550 808A6760 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00554 808A6764 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00558 808A6768 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 0055C 808A676C 000E7A03 */  sra     $t7, $t6,  8               
/* 00560 808A6770 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 00564 808A6774 330C00FF */  andi    $t4, $t8, 0x00FF           ## $t4 = 00000000
/* 00568 808A6778 00194303 */  sra     $t0, $t9, 12               
/* 0056C 808A677C 3109000F */  andi    $t1, $t0, 0x000F           ## $t1 = 00000000
/* 00570 808A6780 29810002 */  slti    $at, $t4, 0x0002           
/* 00574 808A6784 314B003F */  andi    $t3, $t2, 0x003F           ## $t3 = 00000000
/* 00578 808A6788 A2180168 */  sb      $t8, 0x0168($s0)           ## 00000168
/* 0057C 808A678C A2090169 */  sb      $t1, 0x0169($s0)           ## 00000169
/* 00580 808A6790 1420001A */  bne     $at, $zero, .L808A67FC     
/* 00584 808A6794 A60B001C */  sh      $t3, 0x001C($s0)           ## 0000001C
/* 00588 808A6798 26050170 */  addiu   $a1, $s0, 0x0170           ## $a1 = 00000170
/* 0058C 808A679C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00590 808A67A0 0C0171F8 */  jal     func_8005C7E0              
/* 00594 808A67A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00598 808A67A8 3C07808A */  lui     $a3, %hi(D_808A7D48)       ## $a3 = 808A0000
/* 0059C 808A67AC 260D0190 */  addiu   $t5, $s0, 0x0190           ## $t5 = 00000190
/* 005A0 808A67B0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 005A4 808A67B4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 005A8 808A67B8 24E77D48 */  addiu   $a3, $a3, %lo(D_808A7D48)  ## $a3 = 808A7D48
/* 005AC 808A67BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005B0 808A67C0 0C0172EB */  jal     func_8005CBAC              
/* 005B4 808A67C4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 005B8 808A67C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005BC 808A67CC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 005C0 808A67D0 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 005C4 808A67D4 10400005 */  beq     $v0, $zero, .L808A67EC     
/* 005C8 808A67D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005CC 808A67DC 0C00B55C */  jal     Actor_Kill
              
/* 005D0 808A67E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005D4 808A67E4 10000014 */  beq     $zero, $zero, .L808A6838   
/* 005D8 808A67E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808A67EC:
/* 005DC 808A67EC 0C229884 */  jal     func_808A6210              
/* 005E0 808A67F0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 005E4 808A67F4 10000010 */  beq     $zero, $zero, .L808A6838   
/* 005E8 808A67F8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808A67FC:
/* 005EC 808A67FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005F0 808A6800 0C010D20 */  jal     func_80043480
              
/* 005F4 808A6804 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 005F8 808A6808 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005FC 808A680C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00600 808A6810 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00604 808A6814 10400005 */  beq     $v0, $zero, .L808A682C     
/* 00608 808A6818 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0060C 808A681C 0C00B55C */  jal     Actor_Kill
              
/* 00610 808A6820 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00614 808A6824 10000004 */  beq     $zero, $zero, .L808A6838   
/* 00618 808A6828 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808A682C:
/* 0061C 808A682C 0C229963 */  jal     func_808A658C              
/* 00620 808A6830 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00624 808A6834 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808A6838:
/* 00628 808A6838 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0062C 808A683C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00630 808A6840 03E00008 */  jr      $ra                        
/* 00634 808A6844 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


