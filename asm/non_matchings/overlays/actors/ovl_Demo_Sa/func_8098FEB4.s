.rdata
glabel D_80990EDC
    .asciz "../z_demo_sa.c"
    .balign 4

glabel D_80990EEC
    .asciz "../z_demo_sa.c"
    .balign 4

.text
glabel func_8098FEB4
/* 01A54 8098FEB4 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 01A58 8098FEB8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01A5C 8098FEBC AFA40080 */  sw      $a0, 0x0080($sp)
/* 01A60 8098FEC0 AFA50084 */  sw      $a1, 0x0084($sp)
/* 01A64 8098FEC4 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 01A68 8098FEC8 3C188099 */  lui     $t8, %hi(D_809900E0)       ## $t8 = 80990000
/* 01A6C 8098FECC 3C0B8099 */  lui     $t3, %hi(D_809900F4)       ## $t3 = 80990000
/* 01A70 8098FED0 00027880 */  sll     $t7, $v0,  2
/* 01A74 8098FED4 030FC021 */  addu    $t8, $t8, $t7
/* 01A78 8098FED8 8F1800E0 */  lw      $t8, %lo(D_809900E0)($t8)
/* 01A7C 8098FEDC 3C068099 */  lui     $a2, %hi(D_80990EDC)       ## $a2 = 80990000
/* 01A80 8098FEE0 24C60EDC */  addiu   $a2, $a2, %lo(D_80990EDC)  ## $a2 = 80990EDC
/* 01A84 8098FEE4 AFB80070 */  sw      $t8, 0x0070($sp)
/* 01A88 8098FEE8 84830194 */  lh      $v1, 0x0194($a0)           ## 00000194
/* 01A8C 8098FEEC 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFCC
/* 01A90 8098FEF0 2407025A */  addiu   $a3, $zero, 0x025A         ## $a3 = 0000025A
/* 01A94 8098FEF4 0003C880 */  sll     $t9, $v1,  2
/* 01A98 8098FEF8 01795821 */  addu    $t3, $t3, $t9
/* 01A9C 8098FEFC 8D6B00F4 */  lw      $t3, %lo(D_809900F4)($t3)
/* 01AA0 8098FF00 AFAB0064 */  sw      $t3, 0x0064($sp)
/* 01AA4 8098FF04 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01AA8 8098FF08 0C031AB1 */  jal     Graph_OpenDisps
/* 01AAC 8098FF0C AFA5005C */  sw      $a1, 0x005C($sp)
/* 01AB0 8098FF10 8FAD0084 */  lw      $t5, 0x0084($sp)
/* 01AB4 8098FF14 0C024F46 */  jal     func_80093D18
/* 01AB8 8098FF18 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 01ABC 8098FF1C 8FA8005C */  lw      $t0, 0x005C($sp)
/* 01AC0 8098FF20 8FAA0070 */  lw      $t2, 0x0070($sp)
/* 01AC4 8098FF24 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 01AC8 8098FF28 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01ACC 8098FF2C 000A7100 */  sll     $t6, $t2,  4
/* 01AD0 8098FF30 000ECF02 */  srl     $t9, $t6, 28
/* 01AD4 8098FF34 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01AD8 8098FF38 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01ADC 8098FF3C 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 01AE0 8098FF40 00195880 */  sll     $t3, $t9,  2
/* 01AE4 8098FF44 24E76FA8 */  addiu   $a3, $a3, 0x6FA8           ## $a3 = 80166FA8
/* 01AE8 8098FF48 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01AEC 8098FF4C 00EB2021 */  addu    $a0, $a3, $t3
/* 01AF0 8098FF50 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01AF4 8098FF54 8C8C0000 */  lw      $t4, 0x0000($a0)           ## 00000000
/* 01AF8 8098FF58 3C0900FF */  lui     $t1, 0x00FF                ## $t1 = 00FF0000
/* 01AFC 8098FF5C 3529FFFF */  ori     $t1, $t1, 0xFFFF           ## $t1 = 00FFFFFF
/* 01B00 8098FF60 01492824 */  and     $a1, $t2, $t1
/* 01B04 8098FF64 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 01B08 8098FF68 01856821 */  addu    $t5, $t4, $a1
/* 01B0C 8098FF6C 01A67821 */  addu    $t7, $t5, $a2
/* 01B10 8098FF70 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01B14 8098FF74 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01B18 8098FF78 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 01B1C 8098FF7C 35CE0024 */  ori     $t6, $t6, 0x0024           ## $t6 = DB060024
/* 01B20 8098FF80 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01B24 8098FF84 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01B28 8098FF88 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01B2C 8098FF8C 8C990000 */  lw      $t9, 0x0000($a0)           ## 00000000
/* 01B30 8098FF90 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 01B34 8098FF94 35EF0028 */  ori     $t7, $t7, 0x0028           ## $t7 = DB060028
/* 01B38 8098FF98 03255821 */  addu    $t3, $t9, $a1
/* 01B3C 8098FF9C 01666021 */  addu    $t4, $t3, $a2
/* 01B40 8098FFA0 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 01B44 8098FFA4 8FA40064 */  lw      $a0, 0x0064($sp)
/* 01B48 8098FFA8 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01B4C 8098FFAC 0004C100 */  sll     $t8, $a0,  4
/* 01B50 8098FFB0 00187702 */  srl     $t6, $t8, 28
/* 01B54 8098FFB4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01B58 8098FFB8 000EC880 */  sll     $t9, $t6,  2
/* 01B5C 8098FFBC AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 01B60 8098FFC0 00F95821 */  addu    $t3, $a3, $t9
/* 01B64 8098FFC4 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01B68 8098FFC8 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 01B6C 8098FFCC 00896824 */  and     $t5, $a0, $t1
/* 01B70 8098FFD0 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 01B74 8098FFD4 018D7821 */  addu    $t7, $t4, $t5
/* 01B78 8098FFD8 01E6C021 */  addu    $t8, $t7, $a2
/* 01B7C 8098FFDC AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 01B80 8098FFE0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01B84 8098FFE4 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 01B88 8098FFE8 3C0F8011 */  lui     $t7, 0x8011                ## $t7 = 80110000
/* 01B8C 8098FFEC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 01B90 8098FFF0 AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 01B94 8098FFF4 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 01B98 8098FFF8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01B9C 8098FFFC 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01BA0 80990000 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01BA4 80990004 35AD0030 */  ori     $t5, $t5, 0x0030           ## $t5 = DB060030
/* 01BA8 80990008 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01BAC 8099000C AD0C02C0 */  sw      $t4, 0x02C0($t0)           ## 000002C0
/* 01BB0 80990010 25EF6290 */  addiu   $t7, $t7, 0x6290           ## $t7 = 80116290
/* 01BB4 80990014 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01BB8 80990018 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01BBC 8099001C 8FA30080 */  lw      $v1, 0x0080($sp)
/* 01BC0 80990020 3C188099 */  lui     $t8, %hi(func_8098FE74)    ## $t8 = 80990000
/* 01BC4 80990024 2718FE74 */  addiu   $t8, $t8, %lo(func_8098FE74) ## $t8 = 8098FE74
/* 01BC8 80990028 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 01BCC 8099002C 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 01BD0 80990030 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 01BD4 80990034 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 01BD8 80990038 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01BDC 8099003C AFB80010 */  sw      $t8, 0x0010($sp)
/* 01BE0 80990040 8FA40084 */  lw      $a0, 0x0084($sp)
/* 01BE4 80990044 0C0286B2 */  jal     SkelAnime_DrawSV
/* 01BE8 80990048 AFA30018 */  sw      $v1, 0x0018($sp)
/* 01BEC 8099004C 8FAE0084 */  lw      $t6, 0x0084($sp)
/* 01BF0 80990050 3C068099 */  lui     $a2, %hi(D_80990EEC)       ## $a2 = 80990000
/* 01BF4 80990054 24C60EEC */  addiu   $a2, $a2, %lo(D_80990EEC)  ## $a2 = 80990EEC
/* 01BF8 80990058 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFCC
/* 01BFC 8099005C 24070272 */  addiu   $a3, $zero, 0x0272         ## $a3 = 00000272
/* 01C00 80990060 0C031AD5 */  jal     Graph_CloseDisps
/* 01C04 80990064 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 01C08 80990068 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01C0C 8099006C 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 01C10 80990070 03E00008 */  jr      $ra
/* 01C14 80990074 00000000 */  nop
