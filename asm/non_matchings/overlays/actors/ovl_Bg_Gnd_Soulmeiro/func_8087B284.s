glabel func_8087B284
/* 004C4 8087B284 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 004C8 8087B288 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 004CC 8087B28C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004D0 8087B290 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 004D4 8087B294 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 004D8 8087B298 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 004DC 8087B29C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 004E0 8087B2A0 00052A03 */  sra     $a1, $a1,  8               
/* 004E4 8087B2A4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 004E8 8087B2A8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 004EC 8087B2AC 54400024 */  bnel    $v0, $zero, .L8087B340     
/* 004F0 8087B2B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 004F4 8087B2B4 920F015D */  lbu     $t7, 0x015D($s0)           ## 0000015D
/* 004F8 8087B2B8 3C0E8088 */  lui     $t6, %hi(BgGndSoulmeiro_Draw)    ## $t6 = 80880000
/* 004FC 8087B2BC 25CEB3CC */  addiu   $t6, $t6, %lo(BgGndSoulmeiro_Draw) ## $t6 = 8087B3CC
/* 00500 8087B2C0 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 00504 8087B2C4 13000012 */  beq     $t8, $zero, .L8087B310     
/* 00508 8087B2C8 AE0E0134 */  sw      $t6, 0x0134($s0)           ## 00000134
/* 0050C 8087B2CC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00510 8087B2D0 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 00514 8087B2D4 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00518 8087B2D8 273933E8 */  addiu   $t9, $t9, 0x33E8           ## $t9 = 801333E8
/* 0051C 8087B2DC 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 00520 8087B2E0 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00524 8087B2E4 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00528 8087B2E8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0052C 8087B2EC 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00530 8087B2F0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00534 8087B2F4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00538 8087B2F8 3C098088 */  lui     $t1, %hi(func_8087AF38)    ## $t1 = 80880000
/* 0053C 8087B2FC 24080028 */  addiu   $t0, $zero, 0x0028         ## $t0 = 00000028
/* 00540 8087B300 2529AF38 */  addiu   $t1, $t1, %lo(func_8087AF38) ## $t1 = 8087AF38
/* 00544 8087B304 A6080198 */  sh      $t0, 0x0198($s0)           ## 00000198
/* 00548 8087B308 1000000C */  beq     $zero, $zero, .L8087B33C   
/* 0054C 8087B30C AE09019C */  sw      $t1, 0x019C($s0)           ## 0000019C
.L8087B310:
/* 00550 8087B310 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 00554 8087B314 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 00558 8087B318 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0055C 8087B31C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00560 8087B320 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00564 8087B324 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00568 8087B328 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0056C 8087B32C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00570 8087B330 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00574 8087B334 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00578 8087B338 00812821 */  addu    $a1, $a0, $at              
.L8087B33C:
/* 0057C 8087B33C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8087B340:
/* 00580 8087B340 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00584 8087B344 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00588 8087B348 03E00008 */  jr      $ra                        
/* 0058C 8087B34C 00000000 */  nop
