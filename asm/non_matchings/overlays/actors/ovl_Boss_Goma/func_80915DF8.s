glabel func_80915DF8
/* 003E8 80915DF8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 003EC 80915DFC AFB0002C */  sw      $s0, 0x002C($sp)           
/* 003F0 80915E00 00068400 */  sll     $s0, $a2, 16               
/* 003F4 80915E04 00108403 */  sra     $s0, $s0, 16               
/* 003F8 80915E08 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 003FC 80915E0C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00400 80915E10 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00404 80915E14 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00408 80915E18 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 0040C 80915E1C 12000005 */  beq     $s0, $zero, .L80915E34     
/* 00410 80915E20 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 00414 80915E24 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00418 80915E28 12010002 */  beq     $s0, $at, .L80915E34       
/* 0041C 80915E2C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00420 80915E30 16010010 */  bne     $s0, $at, .L80915E74       
.L80915E34:
/* 00424 80915E34 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00428 80915E38 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 0042C 80915E3C 87AE0046 */  lh      $t6, 0x0046($sp)           
/* 00430 80915E40 240F01F4 */  addiu   $t7, $zero, 0x01F4         ## $t7 = 000001F4
/* 00434 80915E44 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 00438 80915E48 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0043C 80915E4C AFB90020 */  sw      $t9, 0x0020($sp)           
/* 00440 80915E50 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00444 80915E54 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00448 80915E58 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0044C 80915E5C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00450 80915E60 26260278 */  addiu   $a2, $s1, 0x0278           ## $a2 = 00000278
/* 00454 80915E64 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 00458 80915E68 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0045C 80915E6C 0C00CC98 */  jal     func_80033260              
/* 00460 80915E70 E7A40014 */  swc1    $f4, 0x0014($sp)           
.L80915E74:
/* 00464 80915E74 12000004 */  beq     $s0, $zero, .L80915E88     
/* 00468 80915E78 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0046C 80915E7C 12010002 */  beq     $s0, $at, .L80915E88       
/* 00470 80915E80 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00474 80915E84 16010010 */  bne     $s0, $at, .L80915EC8       
.L80915E88:
/* 00478 80915E88 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0047C 80915E8C 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 00480 80915E90 87A80046 */  lh      $t0, 0x0046($sp)           
/* 00484 80915E94 240901F4 */  addiu   $t1, $zero, 0x01F4         ## $t1 = 000001F4
/* 00488 80915E98 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 0048C 80915E9C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00490 80915EA0 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00494 80915EA4 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00498 80915EA8 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 0049C 80915EAC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 004A0 80915EB0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 004A4 80915EB4 26260284 */  addiu   $a2, $s1, 0x0284           ## $a2 = 00000284
/* 004A8 80915EB8 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 004AC 80915EBC AFA80010 */  sw      $t0, 0x0010($sp)           
/* 004B0 80915EC0 0C00CC98 */  jal     func_80033260              
/* 004B4 80915EC4 E7A60014 */  swc1    $f6, 0x0014($sp)           
.L80915EC8:
/* 004B8 80915EC8 16000006 */  bne     $s0, $zero, .L80915EE4     
/* 004BC 80915ECC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004C0 80915ED0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004C4 80915ED4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 004C8 80915ED8 2405380D */  addiu   $a1, $zero, 0x380D         ## $a1 = 0000380D
/* 004CC 80915EDC 10000004 */  beq     $zero, $zero, .L80915EF0   
/* 004D0 80915EE0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80915EE4:
/* 004D4 80915EE4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 004D8 80915EE8 2405380A */  addiu   $a1, $zero, 0x380A         ## $a1 = 0000380A
/* 004DC 80915EEC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80915EF0:
/* 004E0 80915EF0 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 004E4 80915EF4 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 004E8 80915EF8 03E00008 */  jr      $ra                        
/* 004EC 80915EFC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


