glabel func_80B06D88
/* 024F8 80B06D88 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 024FC 80B06D8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02500 80B06D90 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 02504 80B06D94 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 02508 80B06D98 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 0250C 80B06D9C AFA7004C */  sw      $a3, 0x004C($sp)           
/* 02510 80B06DA0 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 02514 80B06DA4 3C0680B0 */  lui     $a2, %hi(D_80B07200)       ## $a2 = 80B00000
/* 02518 80B06DA8 24C67200 */  addiu   $a2, $a2, %lo(D_80B07200)  ## $a2 = 80B07200
/* 0251C 80B06DAC 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE8
/* 02520 80B06DB0 240708D4 */  addiu   $a3, $zero, 0x08D4         ## $a3 = 000008D4
/* 02524 80B06DB4 0C031AB1 */  jal     Graph_OpenDisps              
/* 02528 80B06DB8 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 0252C 80B06DBC 8FA20044 */  lw      $v0, 0x0044($sp)           
/* 02530 80B06DC0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02534 80B06DC4 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 02538 80B06DC8 10410006 */  beq     $v0, $at, .L80B06DE4       
/* 0253C 80B06DCC 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 02540 80B06DD0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02544 80B06DD4 50410015 */  beql    $v0, $at, .L80B06E2C       
/* 02548 80B06DD8 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 0254C 80B06DDC 10000028 */  beq     $zero, $zero, .L80B06E80   
/* 02550 80B06DE0 8FAE0040 */  lw      $t6, 0x0040($sp)           
.L80B06DE4:
/* 02554 80B06DE4 848203D4 */  lh      $v0, 0x03D4($a0)           ## 000003D4
/* 02558 80B06DE8 50400025 */  beql    $v0, $zero, .L80B06E80     
/* 0255C 80B06DEC 8FAE0040 */  lw      $t6, 0x0040($sp)           
/* 02560 80B06DF0 848F03C4 */  lh      $t7, 0x03C4($a0)           ## 000003C4
/* 02564 80B06DF4 28410002 */  slti    $at, $v0, 0x0002           
/* 02568 80B06DF8 55E00021 */  bnel    $t7, $zero, .L80B06E80     
/* 0256C 80B06DFC 8FAE0040 */  lw      $t6, 0x0040($sp)           
/* 02570 80B06E00 14200005 */  bne     $at, $zero, .L80B06E18     
/* 02574 80B06E04 00000000 */  nop
/* 02578 80B06E08 0C2C1391 */  jal     func_80B04E44              
/* 0257C 80B06E0C 00000000 */  nop
/* 02580 80B06E10 1000001B */  beq     $zero, $zero, .L80B06E80   
/* 02584 80B06E14 8FAE0040 */  lw      $t6, 0x0040($sp)           
.L80B06E18:
/* 02588 80B06E18 0C2C13D3 */  jal     func_80B04F4C              
/* 0258C 80B06E1C 00000000 */  nop
/* 02590 80B06E20 10000017 */  beq     $zero, $zero, .L80B06E80   
/* 02594 80B06E24 8FAE0040 */  lw      $t6, 0x0040($sp)           
/* 02598 80B06E28 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
.L80B06E2C:
/* 0259C 80B06E2C 3C19E700 */  lui     $t9, 0xE700                ## $t9 = E7000000
/* 025A0 80B06E30 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 025A4 80B06E34 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 025A8 80B06E38 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 025AC 80B06E3C AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 025B0 80B06E40 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 025B4 80B06E44 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 025B8 80B06E48 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 025BC 80B06E4C 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 025C0 80B06E50 AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 025C4 80B06E54 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 025C8 80B06E58 908F03DE */  lbu     $t7, 0x03DE($a0)           ## 000003DE
/* 025CC 80B06E5C 908C03DD */  lbu     $t4, 0x03DD($a0)           ## 000003DD
/* 025D0 80B06E60 908A03DF */  lbu     $t2, 0x03DF($a0)           ## 000003DF
/* 025D4 80B06E64 000FC400 */  sll     $t8, $t7, 16               
/* 025D8 80B06E68 000C6E00 */  sll     $t5, $t4, 24               
/* 025DC 80B06E6C 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = 00000008
/* 025E0 80B06E70 000A5A00 */  sll     $t3, $t2,  8               
/* 025E4 80B06E74 032B6025 */  or      $t4, $t9, $t3              ## $t4 = 00000008
/* 025E8 80B06E78 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 025EC 80B06E7C 8FAE0040 */  lw      $t6, 0x0040($sp)           
.L80B06E80:
/* 025F0 80B06E80 3C0680B0 */  lui     $a2, %hi(D_80B07210)       ## $a2 = 80B00000
/* 025F4 80B06E84 24C67210 */  addiu   $a2, $a2, %lo(D_80B07210)  ## $a2 = 80B07210
/* 025F8 80B06E88 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE8
/* 025FC 80B06E8C 240708F7 */  addiu   $a3, $zero, 0x08F7         ## $a3 = 000008F7
/* 02600 80B06E90 0C031AD5 */  jal     Graph_CloseDisps              
/* 02604 80B06E94 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 02608 80B06E98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0260C 80B06E9C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02610 80B06EA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02614 80B06EA4 03E00008 */  jr      $ra                        
/* 02618 80B06EA8 00000000 */  nop


