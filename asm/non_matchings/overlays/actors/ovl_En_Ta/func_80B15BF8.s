glabel func_80B15BF8
/* 02158 80B15BF8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0215C 80B15BFC AFBF002C */  sw      $ra, 0x002C($sp)
/* 02160 80B15C00 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02164 80B15C04 AFA50034 */  sw      $a1, 0x0034($sp)
/* 02168 80B15C08 948E02E0 */  lhu     $t6, 0x02E0($a0)           ## 000002E0
/* 0216C 80B15C0C 3C0580B1 */  lui     $a1, %hi(func_80B15AD4)    ## $a1 = 80B10000
/* 02170 80B15C10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02174 80B15C14 31CF0010 */  andi    $t7, $t6, 0x0010           ## $t7 = 00000000
/* 02178 80B15C18 11E00016 */  beq     $t7, $zero, .L80B15C74
/* 0217C 80B15C1C 24A55AD4 */  addiu   $a1, $a1, %lo(func_80B15AD4) ## $a1 = 80B15AD4
/* 02180 80B15C20 3C0680B1 */  lui     $a2, %hi(func_80B16938)    ## $a2 = 80B10000
/* 02184 80B15C24 0C2C4EA8 */  jal     func_80B13AA0
/* 02188 80B15C28 24C66938 */  addiu   $a2, $a2, %lo(func_80B16938) ## $a2 = 80B16938
/* 0218C 80B15C2C 961802E0 */  lhu     $t8, 0x02E0($s0)           ## 000002E0
/* 02190 80B15C30 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02194 80B15C34 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 02198 80B15C38 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0219C 80B15C3C 3319FFEF */  andi    $t9, $t8, 0xFFEF           ## $t9 = 00000000
/* 021A0 80B15C40 A61902E0 */  sh      $t9, 0x02E0($s0)           ## 000002E0
/* 021A4 80B15C44 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 021A8 80B15C48 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 021AC 80B15C4C 44060000 */  mfc1    $a2, $f0
/* 021B0 80B15C50 44071000 */  mfc1    $a3, $f2
/* 021B4 80B15C54 AFA80014 */  sw      $t0, 0x0014($sp)
/* 021B8 80B15C58 24A5BF38 */  addiu   $a1, $a1, 0xBF38           ## $a1 = 0600BF38
/* 021BC 80B15C5C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 021C0 80B15C60 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 021C4 80B15C64 0C029468 */  jal     SkelAnime_ChangeAnim

/* 021C8 80B15C68 E7A20018 */  swc1    $f2, 0x0018($sp)
/* 021CC 80B15C6C 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 021D0 80B15C70 A60902CC */  sh      $t1, 0x02CC($s0)           ## 000002CC
.L80B15C74:
/* 021D4 80B15C74 8FA40034 */  lw      $a0, 0x0034($sp)
/* 021D8 80B15C78 0C042F6F */  jal     func_8010BDBC
/* 021DC 80B15C7C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 021E0 80B15C80 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 021E4 80B15C84 54410009 */  bnel    $v0, $at, .L80B15CAC
/* 021E8 80B15C88 960C02E0 */  lhu     $t4, 0x02E0($s0)           ## 000002E0
/* 021EC 80B15C8C 0C041AF2 */  jal     func_80106BC8
/* 021F0 80B15C90 8FA40034 */  lw      $a0, 0x0034($sp)
/* 021F4 80B15C94 50400005 */  beql    $v0, $zero, .L80B15CAC
/* 021F8 80B15C98 960C02E0 */  lhu     $t4, 0x02E0($s0)           ## 000002E0
/* 021FC 80B15C9C 960A02E0 */  lhu     $t2, 0x02E0($s0)           ## 000002E0
/* 02200 80B15CA0 354B0020 */  ori     $t3, $t2, 0x0020           ## $t3 = 00000020
/* 02204 80B15CA4 A60B02E0 */  sh      $t3, 0x02E0($s0)           ## 000002E0
/* 02208 80B15CA8 960C02E0 */  lhu     $t4, 0x02E0($s0)           ## 000002E0
.L80B15CAC:
/* 0220C 80B15CAC 358D0001 */  ori     $t5, $t4, 0x0001           ## $t5 = 00000001
/* 02210 80B15CB0 A60D02E0 */  sh      $t5, 0x02E0($s0)           ## 000002E0
/* 02214 80B15CB4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02218 80B15CB8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0221C 80B15CBC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02220 80B15CC0 03E00008 */  jr      $ra
/* 02224 80B15CC4 00000000 */  nop


