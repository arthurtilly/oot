glabel func_80A74398
/* 00088 80A74398 27BDFE20 */  addiu   $sp, $sp, 0xFE20           ## $sp = FFFFFE20
/* 0008C 80A7439C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00090 80A743A0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00094 80A743A4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00098 80A743A8 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 0009C 80A743AC 3C0E80A7 */  lui     $t6, %hi(func_80A75FA0)    ## $t6 = 80A70000
/* 000A0 80A743B0 3C0F80A7 */  lui     $t7, %hi(func_80A76798)    ## $t7 = 80A70000
/* 000A4 80A743B4 25CE5FA0 */  addiu   $t6, $t6, %lo(func_80A75FA0) ## $t6 = 80A75FA0
/* 000A8 80A743B8 25EF6798 */  addiu   $t7, $t7, %lo(func_80A76798) ## $t7 = 80A76798
/* 000AC 80A743BC 37190400 */  ori     $t9, $t8, 0x0400           ## $t9 = 00000400
/* 000B0 80A743C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000B4 80A743C4 AC8E0130 */  sw      $t6, 0x0130($a0)           ## 00000130
/* 000B8 80A743C8 AC8F0134 */  sw      $t7, 0x0134($a0)           ## 00000134
/* 000BC 80A743CC AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 000C0 80A743D0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 000C4 80A743D4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000C8 80A743D8 26050320 */  addiu   $a1, $s0, 0x0320           ## $a1 = 00000320
/* 000CC 80A743DC 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 000D0 80A743E0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 000D4 80A743E4 3C0780A8 */  lui     $a3, %hi(D_80A78340)       ## $a3 = 80A80000
/* 000D8 80A743E8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 000DC 80A743EC 24E78340 */  addiu   $a3, $a3, %lo(D_80A78340)  ## $a3 = 80A78340
/* 000E0 80A743F0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000E4 80A743F4 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000E8 80A743F8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000EC 80A743FC 260503EC */  addiu   $a1, $s0, 0x03EC           ## $a1 = 000003EC
/* 000F0 80A74400 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 000F4 80A74404 0C0171F8 */  jal     func_8005C7E0              
/* 000F8 80A74408 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000FC 80A7440C 3C0780A8 */  lui     $a3, %hi(D_80A783E4)       ## $a3 = 80A80000
/* 00100 80A74410 260A040C */  addiu   $t2, $s0, 0x040C           ## $t2 = 0000040C
/* 00104 80A74414 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00108 80A74418 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0010C 80A7441C 24E783E4 */  addiu   $a3, $a3, %lo(D_80A783E4)  ## $a3 = 80A783E4
/* 00110 80A74420 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00114 80A74424 0C0172EB */  jal     func_8005CBAC              
/* 00118 80A74428 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0011C 80A7442C 2605036C */  addiu   $a1, $s0, 0x036C           ## $a1 = 0000036C
/* 00120 80A74430 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00124 80A74434 0C017406 */  jal     func_8005D018              
/* 00128 80A74438 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0012C 80A7443C 3C0780A8 */  lui     $a3, %hi(D_80A783F4)       ## $a3 = 80A80000
/* 00130 80A74440 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00134 80A74444 24E783F4 */  addiu   $a3, $a3, %lo(D_80A783F4)  ## $a3 = 80A783F4
/* 00138 80A74448 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0013C 80A7444C 0C017441 */  jal     func_8005D104              
/* 00140 80A74450 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00144 80A74454 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00148 80A74458 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0014C 80A7445C 3C0B80A8 */  lui     $t3, %hi(D_80A78444)       ## $t3 = 80A80000
/* 00150 80A74460 256B8444 */  addiu   $t3, $t3, %lo(D_80A78444)  ## $t3 = 80A78444
/* 00154 80A74464 332A00FF */  andi    $t2, $t9, 0x00FF           ## $t2 = 00000000
/* 00158 80A74468 AE0B0098 */  sw      $t3, 0x0098($s0)           ## 00000098
/* 0015C 80A7446C A60A001C */  sh      $t2, 0x001C($s0)           ## 0000001C
/* 00160 80A74470 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00164 80A74474 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00168 80A74478 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 0016C 80A7447C 000E7A03 */  sra     $t7, $t6,  8               
/* 00170 80A74480 240C00FE */  addiu   $t4, $zero, 0x00FE         ## $t4 = 000000FE
/* 00174 80A74484 240D001E */  addiu   $t5, $zero, 0x001E         ## $t5 = 0000001E
/* 00178 80A74488 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 0017C 80A7448C A20C00AE */  sb      $t4, 0x00AE($s0)           ## 000000AE
/* 00180 80A74490 A20002FC */  sb      $zero, 0x02FC($s0)         ## 000002FC
/* 00184 80A74494 A20D00AF */  sb      $t5, 0x00AF($s0)           ## 000000AF
/* 00188 80A74498 A6180302 */  sh      $t8, 0x0302($s0)           ## 00000302
/* 0018C 80A7449C 15600007 */  bne     $t3, $zero, .L80A744BC     
/* 00190 80A744A0 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00194 80A744A4 01A06025 */  or      $t4, $t5, $zero            ## $t4 = 0000001E
/* 00198 80A744A8 258D0014 */  addiu   $t5, $t4, 0x0014           ## $t5 = 00000032
/* 0019C 80A744AC 240E0034 */  addiu   $t6, $zero, 0x0034         ## $t6 = 00000034
/* 001A0 80A744B0 A20D00AF */  sb      $t5, 0x00AF($s0)           ## 000000AF
/* 001A4 80A744B4 1000000C */  beq     $zero, $zero, .L80A744E8   
/* 001A8 80A744B8 A20E0117 */  sb      $t6, 0x0117($s0)           ## 00000117
.L80A744BC:
/* 001AC 80A744BC 3C053C44 */  lui     $a1, 0x3C44                ## $a1 = 3C440000
/* 001B0 80A744C0 34A59BA6 */  ori     $a1, $a1, 0x9BA6           ## $a1 = 3C449BA6
/* 001B4 80A744C4 0C00B58B */  jal     Actor_SetScale
              
/* 001B8 80A744C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001BC 80A744CC 240F0035 */  addiu   $t7, $zero, 0x0035         ## $t7 = 00000035
/* 001C0 80A744D0 A20F0117 */  sb      $t7, 0x0117($s0)           ## 00000117
/* 001C4 80A744D4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001C8 80A744D8 26251C24 */  addiu   $a1, $s1, 0x1C24           ## $a1 = 00001C24
/* 001CC 80A744DC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001D0 80A744E0 0C00CDD2 */  jal     Actor_ChangeType
              
/* 001D4 80A744E4 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
.L80A744E8:
/* 001D8 80A744E8 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 001DC 80A744EC 24180040 */  addiu   $t8, $zero, 0x0040         ## $t8 = 00000040
/* 001E0 80A744F0 241900C8 */  addiu   $t9, $zero, 0x00C8         ## $t9 = 000000C8
/* 001E4 80A744F4 24080096 */  addiu   $t0, $zero, 0x0096         ## $t0 = 00000096
/* 001E8 80A744F8 240A0008 */  addiu   $t2, $zero, 0x0008         ## $t2 = 00000008
/* 001EC 80A744FC 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 001F0 80A74500 27AC0038 */  addiu   $t4, $sp, 0x0038           ## $t4 = FFFFFE58
/* 001F4 80A74504 A3A201C9 */  sb      $v0, 0x01C9($sp)           
/* 001F8 80A74508 A3A201C8 */  sb      $v0, 0x01C8($sp)           
/* 001FC 80A7450C A3A201C5 */  sb      $v0, 0x01C5($sp)           
/* 00200 80A74510 A3A201C4 */  sb      $v0, 0x01C4($sp)           
/* 00204 80A74514 A3A201C2 */  sb      $v0, 0x01C2($sp)           
/* 00208 80A74518 A3A201C1 */  sb      $v0, 0x01C1($sp)           
/* 0020C 80A7451C A3A201C0 */  sb      $v0, 0x01C0($sp)           
/* 00210 80A74520 A3A201BD */  sb      $v0, 0x01BD($sp)           
/* 00214 80A74524 A3A201BC */  sb      $v0, 0x01BC($sp)           
/* 00218 80A74528 A3B801C3 */  sb      $t8, 0x01C3($sp)           
/* 0021C 80A7452C A3B901BF */  sb      $t9, 0x01BF($sp)           
/* 00220 80A74530 A3A801BE */  sb      $t0, 0x01BE($sp)           
/* 00224 80A74534 A3A001C7 */  sb      $zero, 0x01C7($sp)         
/* 00228 80A74538 AFAA01CC */  sw      $t2, 0x01CC($sp)           
/* 0022C 80A7453C AFA001D0 */  sw      $zero, 0x01D0($sp)         
/* 00230 80A74540 AFAB01D4 */  sw      $t3, 0x01D4($sp)           
/* 00234 80A74544 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00238 80A74548 A3A801C6 */  sb      $t0, 0x01C6($sp)           
/* 0023C 80A7454C A3A201CA */  sb      $v0, 0x01CA($sp)           
/* 00240 80A74550 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00244 80A74554 260504C4 */  addiu   $a1, $s0, 0x04C4           ## $a1 = 000004C4
/* 00248 80A74558 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0024C 80A7455C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00250 80A74560 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00254 80A74564 0C009B35 */  jal     Effect_Add
              ## Effect_Add
/* 00258 80A74568 A3A001CB */  sb      $zero, 0x01CB($sp)         
/* 0025C 80A7456C 0C29D1C5 */  jal     func_80A74714              
/* 00260 80A74570 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00264 80A74574 86050302 */  lh      $a1, 0x0302($s0)           ## 00000302
/* 00268 80A74578 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 0026C 80A7457C 50A1000A */  beql    $a1, $at, .L80A745A8       
/* 00270 80A74580 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 00274 80A74584 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00278 80A74588 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0027C 80A7458C 50400011 */  beql    $v0, $zero, .L80A745D4     
/* 00280 80A74590 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00284 80A74594 0C00B55C */  jal     Actor_Kill
              
/* 00288 80A74598 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0028C 80A7459C 1000000D */  beq     $zero, $zero, .L80A745D4   
/* 00290 80A745A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00294 80A745A4 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
.L80A745A8:
/* 00298 80A745A8 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 0029C 80A745AC 00B12821 */  addu    $a1, $a1, $s1              
/* 002A0 80A745B0 11A00007 */  beq     $t5, $zero, .L80A745D0     
/* 002A4 80A745B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002A8 80A745B8 0C00B337 */  jal     Flags_GetClear
              
/* 002AC 80A745BC 80A51CBC */  lb      $a1, 0x1CBC($a1)           ## 00011CBC
/* 002B0 80A745C0 50400004 */  beql    $v0, $zero, .L80A745D4     
/* 002B4 80A745C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002B8 80A745C8 0C00B55C */  jal     Actor_Kill
              
/* 002BC 80A745CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A745D0:
/* 002C0 80A745D0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A745D4:
/* 002C4 80A745D4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 002C8 80A745D8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 002CC 80A745DC 03E00008 */  jr      $ra                        
/* 002D0 80A745E0 27BD01E0 */  addiu   $sp, $sp, 0x01E0           ## $sp = 00000000
