.late_rodata
glabel D_8085542C
 .word 0x3F0D3DCB

.text
glabel func_80841860
/* 0F650 80841860 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0F654 80841864 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0F658 80841868 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0F65C 8084186C AFA40040 */  sw      $a0, 0x0040($sp)           
/* 0F660 80841870 90AE015B */  lbu     $t6, 0x015B($a1)           ## 0000015B
/* 0F664 80841874 3C188085 */  lui     $t8, %hi(D_80853914)       ## $t8 = 80850000
/* 0F668 80841878 27183914 */  addiu   $t8, $t8, %lo(D_80853914)  ## $t8 = 80853914
/* 0F66C 8084187C 000E7880 */  sll     $t7, $t6,  2               
/* 0F670 80841880 01F81021 */  addu    $v0, $t7, $t8              
/* 0F674 80841884 8C590258 */  lw      $t9, 0x0258($v0)           ## 00000258
/* 0F678 80841888 8C480240 */  lw      $t0, 0x0240($v0)           ## 00000240
/* 0F67C 8084188C 3C038016 */  lui     $v1, %hi(gGameInfo)
/* 0F680 80841890 AFB90034 */  sw      $t9, 0x0034($sp)           
/* 0F684 80841894 ACA801BC */  sw      $t0, 0x01BC($a1)           ## 000001BC
/* 0F688 80841898 8C63FA90 */  lw      $v1, %lo(gGameInfo)($v1)
/* 0F68C 8084189C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0F690 808418A0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1000.00
/* 0F694 808418A4 84690054 */  lh      $t1, 0x0054($v1)           ## 80160054
/* 0F698 808418A8 846A0050 */  lh      $t2, 0x0050($v1)           ## 80160050
/* 0F69C 808418AC C4AA0838 */  lwc1    $f10, 0x0838($a1)          ## 00000838
/* 0F6A0 808418B0 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 0F6A4 808418B4 448A9000 */  mtc1    $t2, $f18                  ## $f18 = 0.00
/* 0F6A8 808418B8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0F6AC 808418BC 468021A0 */  cvt.s.w $f6, $f4                   
/* 0F6B0 808418C0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0F6B4 808418C4 AFA80038 */  sw      $t0, 0x0038($sp)           
/* 0F6B8 808418C8 46809120 */  cvt.s.w $f4, $f18                  
/* 0F6BC 808418CC 46003203 */  div.s   $f8, $f6, $f0              
/* 0F6C0 808418D0 46002183 */  div.s   $f6, $f4, $f0              
/* 0F6C4 808418D4 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0F6C8 808418D8 46068200 */  add.s   $f8, $f16, $f6             
/* 0F6CC 808418DC 44054000 */  mfc1    $a1, $f8                   
/* 0F6D0 808418E0 0C2100A7 */  jal     func_8084029C              
/* 0F6D4 808418E4 00000000 */  nop
/* 0F6D8 808418E8 3C018085 */  lui     $at, %hi(D_8085542C)       ## $at = 80850000
/* 0F6DC 808418EC C432542C */  lwc1    $f18, %lo(D_8085542C)($at) 
/* 0F6E0 808418F0 C60A0868 */  lwc1    $f10, 0x0868($s0)          ## 00000868
/* 0F6E4 808418F4 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 0F6E8 808418F8 260B0318 */  addiu   $t3, $s0, 0x0318           ## $t3 = 00000318
/* 0F6EC 808418FC 46125002 */  mul.s   $f0, $f10, $f18            
/* 0F6F0 80841900 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 0F6F4 80841904 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 0F6F8 80841908 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 0F6FC 8084190C 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 0F700 80841910 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 0F704 80841914 C6040870 */  lwc1    $f4, 0x0870($s0)           ## 00000870
/* 0F708 80841918 44070000 */  mfc1    $a3, $f0                   
/* 0F70C 8084191C AFAB001C */  sw      $t3, 0x001C($sp)           
/* 0F710 80841920 0C0290C7 */  jal     func_800A431C              
/* 0F714 80841924 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 0F718 80841928 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0F71C 8084192C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0F720 80841930 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0F724 80841934 03E00008 */  jr      $ra                        
/* 0F728 80841938 00000000 */  nop
