glabel func_80838E70
/* 06C60 80838E70 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 06C64 80838E74 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 06C68 80838E78 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 06C6C 80838E7C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 06C70 80838E80 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 06C74 80838E84 3C068084 */  lui     $a2, %hi(func_80845CA4)    ## $a2 = 80840000
/* 06C78 80838E88 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 06C7C 80838E8C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 06C80 80838E90 24C65CA4 */  addiu   $a2, $a2, %lo(func_80845CA4) ## $a2 = 80845CA4
/* 06C84 80838E94 0C20D716 */  jal     func_80835C58              
/* 06C88 80838E98 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 06C8C 80838E9C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 06C90 80838EA0 0C20C910 */  jal     func_80832440              
/* 06C94 80838EA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 06C98 80838EA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 06C9C 80838EAC A202084F */  sb      $v0, 0x084F($s0)           ## 0000084F
/* 06CA0 80838EB0 A6020850 */  sh      $v0, 0x0850($s0)           ## 00000850
/* 06CA4 80838EB4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 06CA8 80838EB8 87A4002E */  lh      $a0, 0x002E($sp)           
/* 06CAC 80838EBC C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 06CB0 80838EC0 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 06CB4 80838EC4 46040182 */  mul.s   $f6, $f0, $f4              
/* 06CB8 80838EC8 46083280 */  add.s   $f10, $f6, $f8             
/* 06CBC 80838ECC E60A0450 */  swc1    $f10, 0x0450($s0)          ## 00000450
/* 06CC0 80838ED0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 06CC4 80838ED4 87A4002E */  lh      $a0, 0x002E($sp)           
/* 06CC8 80838ED8 C7B00028 */  lwc1    $f16, 0x0028($sp)          
/* 06CCC 80838EDC C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 06CD0 80838EE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06CD4 80838EE4 46100482 */  mul.s   $f18, $f0, $f16            
/* 06CD8 80838EE8 46049180 */  add.s   $f6, $f18, $f4             
/* 06CDC 80838EEC 0C20CCCE */  jal     func_80833338              
/* 06CE0 80838EF0 E6060458 */  swc1    $f6, 0x0458($s0)           ## 00000458
/* 06CE4 80838EF4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 06CE8 80838EF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 06CEC 80838EFC 0C20C899 */  jal     func_80832264              
/* 06CF0 80838F00 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 06CF4 80838F04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 06CF8 80838F08 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 06CFC 80838F0C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 06D00 80838F10 03E00008 */  jr      $ra                        
/* 06D04 80838F14 00000000 */  nop


