glabel func_80A392D8
/* 03FC8 80A392D8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03FCC 80A392DC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03FD0 80A392E0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03FD4 80A392E4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 03FD8 80A392E8 908203FD */  lbu     $v0, 0x03FD($a0)           ## 000003FD
/* 03FDC 80A392EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03FE0 80A392F0 304E0080 */  andi    $t6, $v0, 0x0080           ## $t6 = 00000000
/* 03FE4 80A392F4 51C00008 */  beql    $t6, $zero, .L80A39318     
/* 03FE8 80A392F8 92020331 */  lbu     $v0, 0x0331($s0)           ## 00000331
/* 03FEC 80A392FC 90980331 */  lbu     $t8, 0x0331($a0)           ## 00000331
/* 03FF0 80A39300 304FFF7F */  andi    $t7, $v0, 0xFF7F           ## $t7 = 00000000
/* 03FF4 80A39304 A08F03FD */  sb      $t7, 0x03FD($a0)           ## 000003FD
/* 03FF8 80A39308 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 03FFC 80A3930C 10000060 */  beq     $zero, $zero, .L80A39490   
/* 04000 80A39310 A0990331 */  sb      $t9, 0x0331($a0)           ## 00000331
/* 04004 80A39314 92020331 */  lbu     $v0, 0x0331($s0)           ## 00000331
.L80A39318:
/* 04008 80A39318 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 0400C 80A3931C 5100005D */  beql    $t0, $zero, .L80A39494     
/* 04010 80A39320 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04014 80A39324 8E0902EC */  lw      $t1, 0x02EC($s0)           ## 000002EC
/* 04018 80A39328 29210005 */  slti    $at, $t1, 0x0005           
/* 0401C 80A3932C 54200059 */  bnel    $at, $zero, .L80A39494     
/* 04020 80A39330 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04024 80A39334 860A0312 */  lh      $t2, 0x0312($s0)           ## 00000312
/* 04028 80A39338 29410002 */  slti    $at, $t2, 0x0002           
/* 0402C 80A3933C 50200055 */  beql    $at, $zero, .L80A39494     
/* 04030 80A39340 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04034 80A39344 920300B1 */  lbu     $v1, 0x00B1($s0)           ## 000000B1
/* 04038 80A39348 304BFFFD */  andi    $t3, $v0, 0xFFFD           ## $t3 = 00000000
/* 0403C 80A3934C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 04040 80A39350 1061004F */  beq     $v1, $at, .L80A39490       
/* 04044 80A39354 A20B0331 */  sb      $t3, 0x0331($s0)           ## 00000331
/* 04048 80A39358 A20302FE */  sb      $v1, 0x02FE($s0)           ## 000002FE
/* 0404C 80A3935C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04050 80A39360 26050338 */  addiu   $a1, $s0, 0x0338           ## $a1 = 00000338
/* 04054 80A39364 0C00D594 */  jal     func_80035650              
/* 04058 80A39368 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0405C 80A3936C 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 04060 80A39370 0C03E291 */  jal     func_800F8A44              
/* 04064 80A39374 240539C6 */  addiu   $a1, $zero, 0x39C6         ## $a1 = 000039C6
/* 04068 80A39378 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
/* 0406C 80A3937C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 04070 80A39380 10410003 */  beq     $v0, $at, .L80A39390       
/* 04074 80A39384 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 04078 80A39388 14410011 */  bne     $v0, $at, .L80A393D0       
/* 0407C 80A3938C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A39390:
/* 04080 80A39390 8E0C02EC */  lw      $t4, 0x02EC($s0)           ## 000002EC
/* 04084 80A39394 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 04088 80A39398 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0408C 80A3939C 1181003C */  beq     $t4, $at, .L80A39490       
/* 04090 80A393A0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04094 80A393A4 240D0050 */  addiu   $t5, $zero, 0x0050         ## $t5 = 00000050
/* 04098 80A393A8 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0409C 80A393AC 24060078 */  addiu   $a2, $zero, 0x0078         ## $a2 = 00000078
/* 040A0 80A393B0 0C00D09B */  jal     func_8003426C              
/* 040A4 80A393B4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 040A8 80A393B8 0C00D58A */  jal     Actor_ApplyDamage
              
/* 040AC 80A393BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 040B0 80A393C0 0C28DFBC */  jal     func_80A37EF0              
/* 040B4 80A393C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 040B8 80A393C8 10000032 */  beq     $zero, $zero, .L80A39494   
/* 040BC 80A393CC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A393D0:
/* 040C0 80A393D0 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 040C4 80A393D4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 040C8 80A393D8 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 040CC 80A393DC 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 040D0 80A393E0 0C00D09B */  jal     func_8003426C              
/* 040D4 80A393E4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 040D8 80A393E8 0C00D58A */  jal     Actor_ApplyDamage
              
/* 040DC 80A393EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 040E0 80A393F0 14400025 */  bne     $v0, $zero, .L80A39488     
/* 040E4 80A393F4 00000000 */  nop
/* 040E8 80A393F8 86020314 */  lh      $v0, 0x0314($s0)           ## 00000314
/* 040EC 80A393FC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 040F0 80A39400 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 040F4 80A39404 10400019 */  beq     $v0, $zero, .L80A3946C     
/* 040F8 80A39408 34460011 */  ori     $a2, $v0, 0x0011           ## $a2 = 00000011
/* 040FC 80A3940C 00063400 */  sll     $a2, $a2, 16               
/* 04100 80A39410 0C007D52 */  jal     Item_DropCollectible
              
/* 04104 80A39414 00063403 */  sra     $a2, $a2, 16               
/* 04108 80A39418 10400014 */  beq     $v0, $zero, .L80A3946C     
/* 0410C 80A3941C 24440024 */  addiu   $a0, $v0, 0x0024           ## $a0 = 00000024
/* 04110 80A39420 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 04114 80A39424 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 04118 80A39428 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 0411C 80A3942C 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 04120 80A39430 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 04124 80A39434 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 04128 80A39438 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0412C 80A3943C 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 04130 80A39440 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 04134 80A39444 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 04138 80A39448 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 0413C 80A3944C A4620032 */  sh      $v0, 0x0032($v1)           ## 00000032
/* 04140 80A39450 E4640068 */  swc1    $f4, 0x0068($v1)           ## 00000068
/* 04144 80A39454 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 04148 80A39458 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0414C 80A3945C 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 04150 80A39460 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 04154 80A39464 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 04158 80A39468 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80A3946C:
/* 0415C 80A3946C 0C28E41F */  jal     func_80A3907C              
/* 04160 80A39470 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04164 80A39474 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 04168 80A39478 0C00CB1F */  jal     func_80032C7C              
/* 0416C 80A3947C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 04170 80A39480 10000004 */  beq     $zero, $zero, .L80A39494   
/* 04174 80A39484 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A39488:
/* 04178 80A39488 0C28E015 */  jal     func_80A38054              
/* 0417C 80A3948C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A39490:
/* 04180 80A39490 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A39494:
/* 04184 80A39494 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 04188 80A39498 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0418C 80A3949C 03E00008 */  jr      $ra                        
/* 04190 80A394A0 00000000 */  nop
