glabel func_80A45578
/* 02848 80A45578 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0284C 80A4557C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02850 80A45580 3042001F */  andi    $v0, $v0, 0x001F           ## $v0 = 00000000
/* 02854 80A45584 14410004 */  bne     $v0, $at, .L80A45598       
/* 02858 80A45588 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 0285C 80A4558C 44811000 */  mtc1    $at, $f2                   ## $f2 = 400.00
/* 02860 80A45590 10000005 */  beq     $zero, $zero, .L80A455A8   
/* 02864 80A45594 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80A45598:
/* 02868 80A45598 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0286C 80A4559C 44811000 */  mtc1    $at, $f2                   ## $f2 = 60.00
/* 02870 80A455A0 00000000 */  nop
/* 02874 80A455A4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80A455A8:
/* 02878 80A455A8 14410012 */  bne     $v0, $at, .L80A455F4       
/* 0287C 80A455AC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 02880 80A455B0 C4800094 */  lwc1    $f0, 0x0094($a0)           ## 00000094
/* 02884 80A455B4 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 02888 80A455B8 46000005 */  abs.s   $f0, $f0                   
/* 0288C 80A455BC 4602003C */  c.lt.s  $f0, $f2                   
/* 02890 80A455C0 00000000 */  nop
/* 02894 80A455C4 4500000B */  bc1f    .L80A455F4                 
/* 02898 80A455C8 00000000 */  nop
/* 0289C 80A455CC C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 028A0 80A455D0 44813000 */  mtc1    $at, $f6                   ## $f6 = 400.00
/* 028A4 80A455D4 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 028A8 80A455D8 4606203C */  c.lt.s  $f4, $f6                   
/* 028AC 80A455DC 00000000 */  nop
/* 028B0 80A455E0 45000004 */  bc1f    .L80A455F4                 
/* 028B4 80A455E4 00000000 */  nop
/* 028B8 80A455E8 44810000 */  mtc1    $at, $f0                   ## $f0 = 9.00
/* 028BC 80A455EC 03E00008 */  jr      $ra                        
/* 028C0 80A455F0 00000000 */  nop
.L80A455F4:
/* 028C4 80A455F4 14600004 */  bne     $v1, $zero, .L80A45608     
/* 028C8 80A455F8 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 028CC 80A455FC 3C0180A5 */  lui     $at, %hi(D_80A48724)       ## $at = 80A50000
/* 028D0 80A45600 10000003 */  beq     $zero, $zero, .L80A45610   
/* 028D4 80A45604 C4228724 */  lwc1    $f2, %lo(D_80A48724)($at)  
.L80A45608:
/* 028D8 80A45608 44811000 */  mtc1    $at, $f2                   ## $f2 = -0.00
/* 028DC 80A4560C 00000000 */  nop
.L80A45610:
/* 028E0 80A45610 46001006 */  mov.s   $f0, $f2                   
/* 028E4 80A45614 03E00008 */  jr      $ra                        
/* 028E8 80A45618 00000000 */  nop
