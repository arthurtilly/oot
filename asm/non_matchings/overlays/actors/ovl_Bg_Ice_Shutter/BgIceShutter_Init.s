glabel BgIceShutter_Init
/* 0008C 80891B4C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00090 80891B50 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00094 80891B54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00098 80891B58 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0009C 80891B5C 3C058089 */  lui     $a1, %hi(D_80891EB0)       ## $a1 = 80890000
/* 000A0 80891B60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000A4 80891B64 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 000A8 80891B68 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 000AC 80891B6C 24A51EB0 */  addiu   $a1, $a1, %lo(D_80891EB0)  ## $a1 = 80891EB0
/* 000B0 80891B70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B4 80891B74 0C010D20 */  jal     func_80043480
              
/* 000B8 80891B78 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000BC 80891B7C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 000C0 80891B80 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 000C4 80891B84 24842854 */  addiu   $a0, $a0, 0x2854           ## $a0 = 06002854
/* 000C8 80891B88 304E00FF */  andi    $t6, $v0, 0x00FF           ## $t6 = 00000000
/* 000CC 80891B8C 00027A03 */  sra     $t7, $v0,  8               
/* 000D0 80891B90 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 000D4 80891B94 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 000D8 80891B98 A618001C */  sh      $t8, 0x001C($s0)           ## 0000001C
/* 000DC 80891B9C 0C010620 */  jal     func_80041880
              
/* 000E0 80891BA0 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 000E4 80891BA4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 000E8 80891BA8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000EC 80891BAC 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 000F0 80891BB0 0C00FA9D */  jal     func_8003EA74
              ## func_8003EA74
/* 000F4 80891BB4 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 000F8 80891BB8 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 000FC 80891BBC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00100 80891BC0 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00104 80891BC4 14610002 */  bne     $v1, $at, .L80891BD0       
/* 00108 80891BC8 2419C000 */  addiu   $t9, $zero, 0xC000         ## $t9 = FFFFC000
/* 0010C 80891BCC A61900B4 */  sh      $t9, 0x00B4($s0)           ## 000000B4
.L80891BD0:
/* 00110 80891BD0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00114 80891BD4 1061000D */  beq     $v1, $at, .L80891C0C       
/* 00118 80891BD8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0011C 80891BDC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00120 80891BE0 0C00B337 */  jal     Flags_GetClear
              
/* 00124 80891BE4 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 00128 80891BE8 10400005 */  beq     $v0, $zero, .L80891C00     
/* 0012C 80891BEC 3C088089 */  lui     $t0, %hi(func_80891CF4)    ## $t0 = 80890000
/* 00130 80891BF0 0C00B55C */  jal     Actor_Kill
              
/* 00134 80891BF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00138 80891BF8 1000000F */  beq     $zero, $zero, .L80891C38   
/* 0013C 80891BFC 8FAA0028 */  lw      $t2, 0x0028($sp)           
.L80891C00:
/* 00140 80891C00 25081CF4 */  addiu   $t0, $t0, %lo(func_80891CF4) ## $t0 = 00001CF4
/* 00144 80891C04 1000000B */  beq     $zero, $zero, .L80891C34   
/* 00148 80891C08 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
.L80891C0C:
/* 0014C 80891C0C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00150 80891C10 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00154 80891C14 10400005 */  beq     $v0, $zero, .L80891C2C     
/* 00158 80891C18 3C098089 */  lui     $t1, %hi(func_80891D6C)    ## $t1 = 80890000
/* 0015C 80891C1C 0C00B55C */  jal     Actor_Kill
              
/* 00160 80891C20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00164 80891C24 10000004 */  beq     $zero, $zero, .L80891C38   
/* 00168 80891C28 8FAA0028 */  lw      $t2, 0x0028($sp)           
.L80891C2C:
/* 0016C 80891C2C 25291D6C */  addiu   $t1, $t1, %lo(func_80891D6C) ## $t1 = 00001D6C
/* 00170 80891C30 AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
.L80891C34:
/* 00174 80891C34 8FAA0028 */  lw      $t2, 0x0028($sp)           
.L80891C38:
/* 00178 80891C38 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0017C 80891C3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00180 80891C40 15410019 */  bne     $t2, $at, .L80891CA8       
/* 00184 80891C44 00000000 */  nop
/* 00188 80891C48 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0018C 80891C4C 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 00190 80891C50 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00194 80891C54 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00198 80891C58 00000000 */  nop
/* 0019C 80891C5C 46040182 */  mul.s   $f6, $f0, $f4              
/* 001A0 80891C60 E7A60024 */  swc1    $f6, 0x0024($sp)           
/* 001A4 80891C64 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001A8 80891C68 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001AC 80891C6C C7A80024 */  lwc1    $f8, 0x0024($sp)           
/* 001B0 80891C70 C6100008 */  lwc1    $f16, 0x0008($s0)          ## 00000008
/* 001B4 80891C74 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 001B8 80891C78 46080282 */  mul.s   $f10, $f0, $f8             
/* 001BC 80891C7C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001C0 80891C80 E604003C */  swc1    $f4, 0x003C($s0)           ## 0000003C
/* 001C4 80891C84 46105480 */  add.s   $f18, $f10, $f16           
/* 001C8 80891C88 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001CC 80891C8C E6120038 */  swc1    $f18, 0x0038($s0)          ## 00000038
/* 001D0 80891C90 C7A60024 */  lwc1    $f6, 0x0024($sp)           
/* 001D4 80891C94 C60A0010 */  lwc1    $f10, 0x0010($s0)          ## 00000010
/* 001D8 80891C98 46060202 */  mul.s   $f8, $f0, $f6              
/* 001DC 80891C9C 460A4400 */  add.s   $f16, $f8, $f10            
/* 001E0 80891CA0 10000003 */  beq     $zero, $zero, .L80891CB0   
/* 001E4 80891CA4 E6100040 */  swc1    $f16, 0x0040($s0)          ## 00000040
.L80891CA8:
/* 001E8 80891CA8 0C00B56E */  jal     Actor_SetHeight
              
/* 001EC 80891CAC 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
.L80891CB0:
/* 001F0 80891CB0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001F4 80891CB4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001F8 80891CB8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 001FC 80891CBC 03E00008 */  jr      $ra                        
/* 00200 80891CC0 00000000 */  nop
