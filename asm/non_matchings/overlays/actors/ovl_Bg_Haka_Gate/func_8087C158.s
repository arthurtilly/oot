glabel func_8087C158
/* 00368 8087C158 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0036C 8087C15C C4840150 */  lwc1    $f4, 0x0150($a0)           ## 00000150
/* 00370 8087C160 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00374 8087C164 3C098088 */  lui     $t1, %hi(D_8087CCD4)       ## $t1 = 80880000
/* 00378 8087C168 46040032 */  c.eq.s  $f0, $f4                   
/* 0037C 8087C16C 00000000 */  nop
/* 00380 8087C170 45010035 */  bc1t    .L8087C248                 
/* 00384 8087C174 00000000 */  nop
/* 00388 8087C178 848E016A */  lh      $t6, 0x016A($a0)           ## 0000016A
/* 0038C 8087C17C 55C00029 */  bnel    $t6, $zero, .L8087C224     
/* 00390 8087C180 8C580680 */  lw      $t8, 0x0680($v0)           ## 00000680
/* 00394 8087C184 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 00398 8087C188 8498008A */  lh      $t8, 0x008A($a0)           ## 0000008A
/* 0039C 8087C18C C4860090 */  lwc1    $f6, 0x0090($a0)           ## 00000090
/* 003A0 8087C190 3C018088 */  lui     $at, %hi(D_8087CCD8)       ## $at = 80880000
/* 003A4 8087C194 01F8C823 */  subu    $t9, $t7, $t8              
/* 003A8 8087C198 A4990172 */  sh      $t9, 0x0172($a0)           ## 00000172
/* 003AC 8087C19C E426CCD8 */  swc1    $f6, %lo(D_8087CCD8)($at)  
/* 003B0 8087C1A0 C4880150 */  lwc1    $f8, 0x0150($a0)           ## 00000150
/* 003B4 8087C1A4 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 003B8 8087C1A8 4608003E */  c.le.s  $f0, $f8                   
/* 003BC 8087C1AC 00000000 */  nop
/* 003C0 8087C1B0 45020006 */  bc1fl   .L8087C1CC                 
/* 003C4 8087C1B4 44810000 */  mtc1    $at, $f0                   ## $f0 = -1.00
/* 003C8 8087C1B8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 003CC 8087C1BC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 003D0 8087C1C0 10000004 */  beq     $zero, $zero, .L8087C1D4   
/* 003D4 8087C1C4 8488008A */  lh      $t0, 0x008A($a0)           ## 0000008A
/* 003D8 8087C1C8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
.L8087C1CC:
/* 003DC 8087C1CC 00000000 */  nop
/* 003E0 8087C1D0 8488008A */  lh      $t0, 0x008A($a0)           ## 0000008A
.L8087C1D4:
/* 003E4 8087C1D4 844900B6 */  lh      $t1, 0x00B6($v0)           ## 000000B6
/* 003E8 8087C1D8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 003EC 8087C1DC 01095023 */  subu    $t2, $t0, $t1              
/* 003F0 8087C1E0 000A5C00 */  sll     $t3, $t2, 16               
/* 003F4 8087C1E4 000B6403 */  sra     $t4, $t3, 16               
/* 003F8 8087C1E8 19800003 */  blez    $t4, .L8087C1F8            
/* 003FC 8087C1EC 00000000 */  nop
/* 00400 8087C1F0 10000001 */  beq     $zero, $zero, .L8087C1F8   
/* 00404 8087C1F4 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L8087C1F8:
/* 00408 8087C1F8 44825000 */  mtc1    $v0, $f10                  ## $f10 = NaN
/* 0040C 8087C1FC 3C0F8088 */  lui     $t7, %hi(func_8087C270)    ## $t7 = 80880000
/* 00410 8087C200 25EFC270 */  addiu   $t7, $t7, %lo(func_8087C270) ## $t7 = 8087C270
/* 00414 8087C204 46805420 */  cvt.s.w $f16, $f10                 
/* 00418 8087C208 AC8F0164 */  sw      $t7, 0x0164($a0)           ## 00000164
/* 0041C 8087C20C 46008482 */  mul.s   $f18, $f16, $f0            
/* 00420 8087C210 4600910D */  trunc.w.s $f4, $f18                  
/* 00424 8087C214 440E2000 */  mfc1    $t6, $f4                   
/* 00428 8087C218 03E00008 */  jr      $ra                        
/* 0042C 8087C21C A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
.L8087C220:
/* 00430 8087C220 8C580680 */  lw      $t8, 0x0680($v0)           ## 0000067F
.L8087C224:
/* 00434 8087C224 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00438 8087C228 0301C824 */  and     $t9, $t8, $at              
/* 0043C 8087C22C AC590680 */  sw      $t9, 0x0680($v0)           ## 0000067F
/* 00440 8087C230 8483016A */  lh      $v1, 0x016A($a0)           ## 0000016A
/* 00444 8087C234 E4800150 */  swc1    $f0, 0x0150($a0)           ## 00000150
/* 00448 8087C238 1060000B */  beq     $v1, $zero, .L8087C268     
/* 0044C 8087C23C 2468FFFF */  addiu   $t0, $v1, 0xFFFF           ## $t0 = FFFFFFFF
/* 00450 8087C240 03E00008 */  jr      $ra                        
/* 00454 8087C244 A488016A */  sh      $t0, 0x016A($a0)           ## 0000016A
.L8087C248:
/* 00458 8087C248 9129CCD4 */  lbu     $t1, %lo(D_8087CCD4)($t1)  
/* 0045C 8087C24C 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 00460 8087C250 3C0A8088 */  lui     $t2, %hi(func_8087C120)    ## $t2 = 80880000
/* 00464 8087C254 15210003 */  bne     $t1, $at, .L8087C264       
/* 00468 8087C258 254AC120 */  addiu   $t2, $t2, %lo(func_8087C120) ## $t2 = 8087C120
/* 0046C 8087C25C 03E00008 */  jr      $ra                        
/* 00470 8087C260 AC8A0164 */  sw      $t2, 0x0164($a0)           ## 00000164
.L8087C264:
/* 00474 8087C264 A480016A */  sh      $zero, 0x016A($a0)         ## 0000016A
.L8087C268:
/* 00478 8087C268 03E00008 */  jr      $ra                        
/* 0047C 8087C26C 00000000 */  nop
