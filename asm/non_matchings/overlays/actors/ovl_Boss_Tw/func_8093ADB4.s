glabel func_8093ADB4
/* 020E4 8093ADB4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 020E8 8093ADB8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 020EC 8093ADBC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 020F0 8093ADC0 C486050C */  lwc1    $f6, 0x050C($a0)           ## 0000050C
/* 020F4 8093ADC4 C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000000
/* 020F8 8093ADC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 020FC 8093ADCC 46062201 */  sub.s   $f8, $f4, $f6              
/* 02100 8093ADD0 E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 02104 8093ADD4 C4900510 */  lwc1    $f16, 0x0510($a0)          ## 00000510
/* 02108 8093ADD8 C4AA0004 */  lwc1    $f10, 0x0004($a1)          ## 00000004
/* 0210C 8093ADDC 46105481 */  sub.s   $f18, $f10, $f16           
/* 02110 8093ADE0 E7B20030 */  swc1    $f18, 0x0030($sp)          
/* 02114 8093ADE4 C4860514 */  lwc1    $f6, 0x0514($a0)           ## 00000514
/* 02118 8093ADE8 C4A40008 */  lwc1    $f4, 0x0008($a1)           ## 00000008
/* 0211C 8093ADEC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02120 8093ADF0 46062201 */  sub.s   $f8, $f4, $f6              
/* 02124 8093ADF4 E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 02128 8093ADF8 C48C053C */  lwc1    $f12, 0x053C($a0)          ## 0000053C
/* 0212C 8093ADFC 0C0342DC */  jal     Matrix_RotateX              
/* 02130 8093AE00 46006307 */  neg.s   $f12, $f12                 
/* 02134 8093AE04 C60C0540 */  lwc1    $f12, 0x0540($s0)          ## 00000540
/* 02138 8093AE08 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0213C 8093AE0C 0C034348 */  jal     Matrix_RotateY              
/* 02140 8093AE10 46006307 */  neg.s   $f12, $f12                 
/* 02144 8093AE14 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFF4
/* 02148 8093AE18 0C0346BD */  jal     Matrix_MultVec3f              
/* 0214C 8093AE1C 27A50020 */  addiu   $a1, $sp, 0x0020           ## $a1 = FFFFFFE8
/* 02150 8093AE20 C7A00020 */  lwc1    $f0, 0x0020($sp)           
/* 02154 8093AE24 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02158 8093AE28 44811000 */  mtc1    $at, $f2                   ## $f2 = 50.00
/* 0215C 8093AE2C 46000005 */  abs.s   $f0, $f0                   
/* 02160 8093AE30 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02164 8093AE34 4602003C */  c.lt.s  $f0, $f2                   
/* 02168 8093AE38 C7A00024 */  lwc1    $f0, 0x0024($sp)           
/* 0216C 8093AE3C 45000021 */  bc1f    .L8093AEC4                 
/* 02170 8093AE40 00000000 */  nop
/* 02174 8093AE44 46000005 */  abs.s   $f0, $f0                   
/* 02178 8093AE48 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0217C 8093AE4C 4602003C */  c.lt.s  $f0, $f2                   
/* 02180 8093AE50 C7B00028 */  lwc1    $f16, 0x0028($sp)          
/* 02184 8093AE54 4500001B */  bc1f    .L8093AEC4                 
/* 02188 8093AE58 00000000 */  nop
/* 0218C 8093AE5C 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 02190 8093AE60 00000000 */  nop
/* 02194 8093AE64 4610503C */  c.lt.s  $f10, $f16                 
/* 02198 8093AE68 00000000 */  nop
/* 0219C 8093AE6C 45000015 */  bc1f    .L8093AEC4                 
/* 021A0 8093AE70 00000000 */  nop
/* 021A4 8093AE74 C6120548 */  lwc1    $f18, 0x0548($s0)          ## 00000548
/* 021A8 8093AE78 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 021AC 8093AE7C C7A80030 */  lwc1    $f8, 0x0030($sp)           
/* 021B0 8093AE80 4612803E */  c.le.s  $f16, $f18                 
/* 021B4 8093AE84 00000000 */  nop
/* 021B8 8093AE88 4500000E */  bc1f    .L8093AEC4                 
/* 021BC 8093AE8C 00000000 */  nop
/* 021C0 8093AE90 46042182 */  mul.s   $f6, $f4, $f4              
/* 021C4 8093AE94 C7B00034 */  lwc1    $f16, 0x0034($sp)          
/* 021C8 8093AE98 3C018095 */  lui     $at, %hi(D_8094AEE8)       ## $at = 80950000
/* 021CC 8093AE9C 46084282 */  mul.s   $f10, $f8, $f8             
/* 021D0 8093AEA0 C428AEE8 */  lwc1    $f8, %lo(D_8094AEE8)($at)  
/* 021D4 8093AEA4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 021D8 8093AEA8 46108102 */  mul.s   $f4, $f16, $f16            
/* 021DC 8093AEAC 460A3480 */  add.s   $f18, $f6, $f10            
/* 021E0 8093AEB0 46049000 */  add.s   $f0, $f18, $f4             
/* 021E4 8093AEB4 46000004 */  sqrt.s  $f0, $f0                   
/* 021E8 8093AEB8 46080182 */  mul.s   $f6, $f0, $f8              
/* 021EC 8093AEBC 10000001 */  beq     $zero, $zero, .L8093AEC4   
/* 021F0 8093AEC0 E6060548 */  swc1    $f6, 0x0548($s0)           ## 00000548
.L8093AEC4:
/* 021F4 8093AEC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 021F8 8093AEC8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 021FC 8093AECC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02200 8093AED0 03E00008 */  jr      $ra                        
/* 02204 8093AED4 00000000 */  nop


