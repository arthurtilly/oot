glabel func_80A97610
/* 00860 80A97610 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00864 80A97614 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00868 80A97618 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0086C 80A9761C 84A3001C */  lh      $v1, 0x001C($a1)           ## 0000001C
/* 00870 80A97620 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00874 80A97624 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00878 80A97628 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 0087C 80A9762C 1060000C */  beq     $v1, $zero, .L80A97660     
/* 00880 80A97630 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00884 80A97634 1061000A */  beq     $v1, $at, .L80A97660       
/* 00888 80A97638 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0088C 80A9763C 10610008 */  beq     $v1, $at, .L80A97660       
/* 00890 80A97640 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00894 80A97644 10610006 */  beq     $v1, $at, .L80A97660       
/* 00898 80A97648 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0089C 80A9764C 10610004 */  beq     $v1, $at, .L80A97660       
/* 008A0 80A97650 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 008A4 80A97654 10610002 */  beq     $v1, $at, .L80A97660       
/* 008A8 80A97658 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 008AC 80A9765C 14610007 */  bne     $v1, $at, .L80A9767C       
.L80A97660:
/* 008B0 80A97660 24050013 */  addiu   $a1, $zero, 0x0013         ## $a1 = 00000013
/* 008B4 80A97664 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 008B8 80A97668 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 008BC 80A9766C 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 008C0 80A97670 84C3001C */  lh      $v1, 0x001C($a2)           ## 0000001C
/* 008C4 80A97674 A7A2001E */  sh      $v0, 0x001E($sp)           
/* 008C8 80A97678 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
.L80A9767C:
/* 008CC 80A9767C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 008D0 80A97680 1061000A */  beq     $v1, $at, .L80A976AC       
/* 008D4 80A97684 97A4001E */  lhu     $a0, 0x001E($sp)           
/* 008D8 80A97688 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 008DC 80A9768C 10610007 */  beq     $v1, $at, .L80A976AC       
/* 008E0 80A97690 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 008E4 80A97694 10610005 */  beq     $v1, $at, .L80A976AC       
/* 008E8 80A97698 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 008EC 80A9769C 10610003 */  beq     $v1, $at, .L80A976AC       
/* 008F0 80A976A0 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 008F4 80A976A4 5461000A */  bnel    $v1, $at, .L80A976D0       
/* 008F8 80A976A8 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
.L80A976AC:
/* 008FC 80A976AC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00900 80A976B0 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 00904 80A976B4 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00908 80A976B8 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 0090C 80A976BC 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00910 80A976C0 3044FFFF */  andi    $a0, $v0, 0xFFFF           ## $a0 = 00000000
/* 00914 80A976C4 84C3001C */  lh      $v1, 0x001C($a2)           ## 0000001C
/* 00918 80A976C8 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 0091C 80A976CC 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
.L80A976D0:
/* 00920 80A976D0 14610006 */  bne     $v1, $at, .L80A976EC       
/* 00924 80A976D4 24050012 */  addiu   $a1, $zero, 0x0012         ## $a1 = 00000012
/* 00928 80A976D8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0092C 80A976DC 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00930 80A976E0 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00934 80A976E4 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00938 80A976E8 3044FFFF */  andi    $a0, $v0, 0xFFFF           ## $a0 = 00000000
.L80A976EC:
/* 0093C 80A976EC 10800003 */  beq     $a0, $zero, .L80A976FC     
/* 00940 80A976F0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00944 80A976F4 1000000C */  beq     $zero, $zero, .L80A97728   
/* 00948 80A976F8 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L80A976FC:
/* 0094C 80A976FC 8DCEE664 */  lw      $t6, -0x199C($t6)          ## 8015E664
/* 00950 80A97700 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00954 80A97704 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00958 80A97708 15C00005 */  bne     $t6, $zero, .L80A97720     
/* 0095C 80A9770C 00000000 */  nop
/* 00960 80A97710 0C2A5CCE */  jal     func_80A97338              
/* 00964 80A97714 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00968 80A97718 10000004 */  beq     $zero, $zero, .L80A9772C   
/* 0096C 80A9771C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A97720:
/* 00970 80A97720 0C2A5BF4 */  jal     func_80A96FD0              
/* 00974 80A97724 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
.L80A97728:
/* 00978 80A97728 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9772C:
/* 0097C 80A9772C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00980 80A97730 03E00008 */  jr      $ra                        
/* 00984 80A97734 00000000 */  nop
