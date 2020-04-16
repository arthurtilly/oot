glabel BgBreakwall_Init
/* 00008 8086FBE8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 8086FBEC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 8086FBF0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00014 8086FBF4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00018 8086FBF8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0001C 8086FBFC 3C058087 */  lui     $a1, %hi(D_808707E0)       ## $a1 = 80870000
/* 00020 8086FC00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 8086FC04 000EC343 */  sra     $t8, $t6, 13               
/* 00028 8086FC08 33190003 */  andi    $t9, $t8, 0x0003           ## $t9 = 00000000
/* 0002C 8086FC0C AFB9002C */  sw      $t9, 0x002C($sp)           
/* 00030 8086FC10 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00034 8086FC14 24A507E0 */  addiu   $a1, $a1, %lo(D_808707E0)  ## $a1 = 808707E0
/* 00038 8086FC18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0003C 8086FC1C 0C010D20 */  jal     func_80043480
              
/* 00040 8086FC20 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00044 8086FC24 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 00048 8086FC28 3C0A8087 */  lui     $t2, %hi(D_808707B0)       ## $t2 = 80870000
/* 0004C 8086FC2C 254A07B0 */  addiu   $t2, $t2, %lo(D_808707B0)  ## $t2 = 808707B0
/* 00050 8086FC30 00084880 */  sll     $t1, $t0,  2               
/* 00054 8086FC34 01284823 */  subu    $t1, $t1, $t0              
/* 00058 8086FC38 00094880 */  sll     $t1, $t1,  2               
/* 0005C 8086FC3C 012A1021 */  addu    $v0, $t1, $t2              
/* 00060 8086FC40 8C4B0004 */  lw      $t3, 0x0004($v0)           ## 00000004
/* 00064 8086FC44 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00068 8086FC48 240E4000 */  addiu   $t6, $zero, 0x4000         ## $t6 = 00004000
/* 0006C 8086FC4C AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
/* 00070 8086FC50 804C0008 */  lb      $t4, 0x0008($v0)           ## 00000008
/* 00074 8086FC54 A20C0168 */  sb      $t4, 0x0168($s0)           ## 00000168
/* 00078 8086FC58 820D0168 */  lb      $t5, 0x0168($s0)           ## 00000168
/* 0007C 8086FC5C 55A10003 */  bnel    $t5, $at, .L8086FC6C       
/* 00080 8086FC60 8E0F0164 */  lw      $t7, 0x0164($s0)           ## 00000164
/* 00084 8086FC64 A60E0030 */  sh      $t6, 0x0030($s0)           ## 00000030
/* 00088 8086FC68 8E0F0164 */  lw      $t7, 0x0164($s0)           ## 00000164
.L8086FC6C:
/* 0008C 8086FC6C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00090 8086FC70 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00094 8086FC74 51E0001F */  beql    $t7, $zero, .L8086FCF4     
/* 00098 8086FC78 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 0009C 8086FC7C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 000A0 8086FC80 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 000A4 8086FC84 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000A8 8086FC88 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 000AC 8086FC8C 50400006 */  beql    $v0, $zero, .L8086FCA8     
/* 000B0 8086FC90 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 000B4 8086FC94 0C00B55C */  jal     Actor_Kill
              
/* 000B8 8086FC98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000BC 8086FC9C 10000038 */  beq     $zero, $zero, .L8086FD80   
/* 000C0 8086FCA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000C4 8086FCA4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L8086FCA8:
/* 000C8 8086FCA8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 000CC 8086FCAC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 000D0 8086FCB0 44050000 */  mfc1    $a1, $f0                   
/* 000D4 8086FCB4 44070000 */  mfc1    $a3, $f0                   
/* 000D8 8086FCB8 0C00AC78 */  jal     ActorShape_Init
              
/* 000DC 8086FCBC 00000000 */  nop
/* 000E0 8086FCC0 2605016C */  addiu   $a1, $s0, 0x016C           ## $a1 = 0000016C
/* 000E4 8086FCC4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000E8 8086FCC8 0C017406 */  jal     func_8005D018              
/* 000EC 8086FCCC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 000F0 8086FCD0 3C078087 */  lui     $a3, %hi(D_80870760)       ## $a3 = 80870000
/* 000F4 8086FCD4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 000F8 8086FCD8 24E70760 */  addiu   $a3, $a3, %lo(D_80870760)  ## $a3 = 80870760
/* 000FC 8086FCDC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00100 8086FCE0 0C017441 */  jal     func_8005D104              
/* 00104 8086FCE4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00108 8086FCE8 10000006 */  beq     $zero, $zero, .L8086FD04   
/* 0010C 8086FCEC 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 00110 8086FCF0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
.L8086FCF4:
/* 00114 8086FCF4 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 00118 8086FCF8 00000000 */  nop
/* 0011C 8086FCFC 46062201 */  sub.s   $f8, $f4, $f6              
/* 00120 8086FD00 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
.L8086FD04:
/* 00124 8086FD04 3C188087 */  lui     $t8, %hi(D_808707C8)       ## $t8 = 80870000
/* 00128 8086FD08 271807C8 */  addiu   $t8, $t8, %lo(D_808707C8)  ## $t8 = 808707C8
/* 0012C 8086FD0C 0058082B */  sltu    $at, $v0, $t8              
/* 00130 8086FD10 14200009 */  bne     $at, $zero, .L8086FD38     
/* 00134 8086FD14 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00138 8086FD18 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0013C 8086FD1C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00140 8086FD20 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00144 8086FD24 24050019 */  addiu   $a1, $zero, 0x0019         ## $a1 = 00000019
/* 00148 8086FD28 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 0014C 8086FD2C 00812021 */  addu    $a0, $a0, $at              
/* 00150 8086FD30 10000007 */  beq     $zero, $zero, .L8086FD50   
/* 00154 8086FD34 A2020169 */  sb      $v0, 0x0169($s0)           ## 00000169
.L8086FD38:
/* 00158 8086FD38 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0015C 8086FD3C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00160 8086FD40 00812021 */  addu    $a0, $a0, $at              
/* 00164 8086FD44 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00168 8086FD48 2405018A */  addiu   $a1, $zero, 0x018A         ## $a1 = 0000018A
/* 0016C 8086FD4C A2020169 */  sb      $v0, 0x0169($s0)           ## 00000169
.L8086FD50:
/* 00170 8086FD50 82190169 */  lb      $t9, 0x0169($s0)           ## 00000169
/* 00174 8086FD54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00178 8086FD58 3C058087 */  lui     $a1, %hi(func_80870290)    ## $a1 = 80870000
/* 0017C 8086FD5C 07210005 */  bgez    $t9, .L8086FD74            
/* 00180 8086FD60 00000000 */  nop
/* 00184 8086FD64 0C00B55C */  jal     Actor_Kill
              
/* 00188 8086FD68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0018C 8086FD6C 10000004 */  beq     $zero, $zero, .L8086FD80   
/* 00190 8086FD70 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8086FD74:
/* 00194 8086FD74 0C21BEF8 */  jal     BgBreakwall_SetupAction              
/* 00198 8086FD78 24A50290 */  addiu   $a1, $a1, %lo(func_80870290) ## $a1 = 00000290
/* 0019C 8086FD7C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8086FD80:
/* 001A0 8086FD80 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001A4 8086FD84 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 001A8 8086FD88 03E00008 */  jr      $ra                        
/* 001AC 8086FD8C 00000000 */  nop
