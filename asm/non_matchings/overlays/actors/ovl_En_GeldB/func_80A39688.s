glabel func_80A39688
/* 04378 80A39688 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0437C 80A3968C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04380 80A39690 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 04384 80A39694 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 04388 80A39698 AFA60058 */  sw      $a2, 0x0058($sp)           
/* 0438C 80A3969C AFA7005C */  sw      $a3, 0x005C($sp)           
/* 04390 80A396A0 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 04394 80A396A4 3C0680A4 */  lui     $a2, %hi(D_80A3A1E0)       ## $a2 = 80A40000
/* 04398 80A396A8 24C6A1E0 */  addiu   $a2, $a2, %lo(D_80A3A1E0)  ## $a2 = 80A3A1E0
/* 0439C 80A396AC 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 043A0 80A396B0 240709CB */  addiu   $a3, $zero, 0x09CB         ## $a3 = 000009CB
/* 043A4 80A396B4 0C031AB1 */  jal     Graph_OpenDisps              
/* 043A8 80A396B8 AFA50048 */  sw      $a1, 0x0048($sp)           
/* 043AC 80A396BC 8FA20054 */  lw      $v0, 0x0054($sp)           
/* 043B0 80A396C0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 043B4 80A396C4 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 043B8 80A396C8 14410010 */  bne     $v0, $at, .L80A3970C       
/* 043BC 80A396CC 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 043C0 80A396D0 8FA20060 */  lw      $v0, 0x0060($sp)           
/* 043C4 80A396D4 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 043C8 80A396D8 844F0004 */  lh      $t7, 0x0004($v0)           ## 00000004
/* 043CC 80A396DC 847804DC */  lh      $t8, 0x04DC($v1)           ## 000004DC
/* 043D0 80A396E0 84490000 */  lh      $t1, 0x0000($v0)           ## 00000000
/* 043D4 80A396E4 844C0002 */  lh      $t4, 0x0002($v0)           ## 00000002
/* 043D8 80A396E8 01F8C821 */  addu    $t9, $t7, $t8              
/* 043DC 80A396EC A4590004 */  sh      $t9, 0x0004($v0)           ## 00000004
/* 043E0 80A396F0 846A04DE */  lh      $t2, 0x04DE($v1)           ## 000004DE
/* 043E4 80A396F4 012A5821 */  addu    $t3, $t1, $t2              
/* 043E8 80A396F8 A44B0000 */  sh      $t3, 0x0000($v0)           ## 00000000
/* 043EC 80A396FC 846D04E0 */  lh      $t5, 0x04E0($v1)           ## 000004E0
/* 043F0 80A39700 018D7021 */  addu    $t6, $t4, $t5              
/* 043F4 80A39704 1000003C */  beq     $zero, $zero, .L80A397F8   
/* 043F8 80A39708 A44E0002 */  sh      $t6, 0x0002($v0)           ## 00000002
.L80A3970C:
/* 043FC 80A3970C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 04400 80A39710 54410011 */  bnel    $v0, $at, .L80A39758       
/* 04404 80A39714 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 04408 80A39718 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0440C 80A3971C 3C18E700 */  lui     $t8, 0xE700                ## $t8 = E7000000
/* 04410 80A39720 3C0A503C */  lui     $t2, 0x503C                ## $t2 = 503C0000
/* 04414 80A39724 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 04418 80A39728 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 0441C 80A3972C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04420 80A39730 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 04424 80A39734 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 04428 80A39738 354A0AFF */  ori     $t2, $t2, 0x0AFF           ## $t2 = 503C0AFF
/* 0442C 80A3973C 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 04430 80A39740 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 04434 80A39744 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 04438 80A39748 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 0443C 80A3974C 1000002A */  beq     $zero, $zero, .L80A397F8   
/* 04440 80A39750 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 04444 80A39754 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L80A39758:
/* 04448 80A39758 10410003 */  beq     $v0, $at, .L80A39768       
/* 0444C 80A3975C 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 04450 80A39760 54410018 */  bnel    $v0, $at, .L80A397C4       
/* 04454 80A39764 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
.L80A39768:
/* 04458 80A39768 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0445C 80A3976C 3C0CE700 */  lui     $t4, 0xE700                ## $t4 = E7000000
/* 04460 80A39770 3C0F8CAA */  lui     $t7, 0x8CAA                ## $t7 = 8CAA0000
/* 04464 80A39774 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04468 80A39778 AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 0446C 80A3977C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04470 80A39780 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 04474 80A39784 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 04478 80A39788 35EFE6FF */  ori     $t7, $t7, 0xE6FF           ## $t7 = 8CAAE6FF
/* 0447C 80A3978C 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 04480 80A39790 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 04484 80A39794 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 04488 80A39798 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 0448C 80A3979C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 04490 80A397A0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 04494 80A397A4 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 04498 80A397A8 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 0449C 80A397AC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 044A0 80A397B0 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 044A4 80A397B4 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 044A8 80A397B8 1000000F */  beq     $zero, $zero, .L80A397F8   
/* 044AC 80A397BC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 044B0 80A397C0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
.L80A397C4:
/* 044B4 80A397C4 3C0BE700 */  lui     $t3, 0xE700                ## $t3 = E7000000
/* 044B8 80A397C8 3C0E8C00 */  lui     $t6, 0x8C00                ## $t6 = 8C000000
/* 044BC 80A397CC 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 044C0 80A397D0 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 044C4 80A397D4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 044C8 80A397D8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 044CC 80A397DC 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 044D0 80A397E0 35CE00FF */  ori     $t6, $t6, 0x00FF           ## $t6 = 8C0000FF
/* 044D4 80A397E4 3C0DFB00 */  lui     $t5, 0xFB00                ## $t5 = FB000000
/* 044D8 80A397E8 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 044DC 80A397EC AD0C02C0 */  sw      $t4, 0x02C0($t0)           ## 000002C0
/* 044E0 80A397F0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 044E4 80A397F4 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
.L80A397F8:
/* 044E8 80A397F8 8FAF0050 */  lw      $t7, 0x0050($sp)           
/* 044EC 80A397FC 3C0680A4 */  lui     $a2, %hi(D_80A3A1F0)       ## $a2 = 80A40000
/* 044F0 80A39800 24C6A1F0 */  addiu   $a2, $a2, %lo(D_80A3A1F0)  ## $a2 = 80A3A1F0
/* 044F4 80A39804 240709E1 */  addiu   $a3, $zero, 0x09E1         ## $a3 = 000009E1
/* 044F8 80A39808 0C031AD5 */  jal     Graph_CloseDisps              
/* 044FC 80A3980C 8DE50000 */  lw      $a1, 0x0000($t7)           ## 8CAAE6FF
/* 04500 80A39810 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04504 80A39814 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 04508 80A39818 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0450C 80A3981C 03E00008 */  jr      $ra                        
/* 04510 80A39820 00000000 */  nop


