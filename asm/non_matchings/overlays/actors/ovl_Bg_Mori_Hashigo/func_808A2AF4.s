glabel func_808A2AF4
/* 00594 808A2AF4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00598 808A2AF8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0059C 808A2AFC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 005A0 808A2B00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005A4 808A2B04 0C00B638 */  jal     Actor_MoveForward
              
/* 005A8 808A2B08 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 005AC 808A2B0C 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 005B0 808A2B10 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 005B4 808A2B14 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 005B8 808A2B18 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 005BC 808A2B1C 51E00021 */  beql    $t7, $zero, .L808A2BA4     
/* 005C0 808A2B20 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005C4 808A2B24 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005C8 808A2B28 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 005CC 808A2B2C 4600203C */  c.lt.s  $f4, $f0                   
/* 005D0 808A2B30 00000000 */  nop
/* 005D4 808A2B34 4502001B */  bc1fl   .L808A2BA4                 
/* 005D8 808A2B38 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005DC 808A2B3C 861801CA */  lh      $t8, 0x01CA($s0)           ## 000001CA
/* 005E0 808A2B40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 005E4 808A2B44 2419001C */  addiu   $t9, $zero, 0x001C         ## $t9 = 0000001C
/* 005E8 808A2B48 2B010003 */  slti    $at, $t8, 0x0003           
/* 005EC 808A2B4C 54200006 */  bnel    $at, $zero, .L808A2B68     
/* 005F0 808A2B50 44060000 */  mfc1    $a2, $f0                   
/* 005F4 808A2B54 0C228AF4 */  jal     func_808A2BD0              
/* 005F8 808A2B58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005FC 808A2B5C 10000018 */  beq     $zero, $zero, .L808A2BC0   
/* 00600 808A2B60 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00604 808A2B64 44060000 */  mfc1    $a2, $f0                   
.L808A2B68:
/* 00608 808A2B68 44070000 */  mfc1    $a3, $f0                   
/* 0060C 808A2B6C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00610 808A2B70 0C00B92D */  jal     func_8002E4B4              
/* 00614 808A2B74 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00618 808A2B78 860801CA */  lh      $t0, 0x01CA($s0)           ## 000001CA
/* 0061C 808A2B7C 860A01CA */  lh      $t2, 0x01CA($s0)           ## 000001CA
/* 00620 808A2B80 3C01808A */  lui     $at, %hi(D_808A2DFC)       ## $at = 808A0000
/* 00624 808A2B84 00084880 */  sll     $t1, $t0,  2               
/* 00628 808A2B88 00290821 */  addu    $at, $at, $t1              
/* 0062C 808A2B8C C4262DFC */  lwc1    $f6, %lo(D_808A2DFC)($at)  
/* 00630 808A2B90 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00634 808A2B94 A60B01CA */  sh      $t3, 0x01CA($s0)           ## 000001CA
/* 00638 808A2B98 10000008 */  beq     $zero, $zero, .L808A2BBC   
/* 0063C 808A2B9C E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 00640 808A2BA0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L808A2BA4:
/* 00644 808A2BA4 240C001C */  addiu   $t4, $zero, 0x001C         ## $t4 = 0000001C
/* 00648 808A2BA8 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 0064C 808A2BAC 44060000 */  mfc1    $a2, $f0                   
/* 00650 808A2BB0 44070000 */  mfc1    $a3, $f0                   
/* 00654 808A2BB4 0C00B92D */  jal     func_8002E4B4              
/* 00658 808A2BB8 E7A00010 */  swc1    $f0, 0x0010($sp)           
.L808A2BBC:
/* 0065C 808A2BBC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808A2BC0:
/* 00660 808A2BC0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00664 808A2BC4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00668 808A2BC8 03E00008 */  jr      $ra                        
/* 0066C 808A2BCC 00000000 */  nop
