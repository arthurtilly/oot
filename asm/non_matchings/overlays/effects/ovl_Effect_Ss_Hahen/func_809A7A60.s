glabel func_809A7A60
/* 00070 809A7A60 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00074 809A7A64 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00078 809A7A68 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0007C 809A7A6C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00080 809A7A70 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00084 809A7A74 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00088 809A7A78 8CEF0000 */  lw      $t7, 0x0000($a3)           ## 00000000
/* 0008C 809A7A7C 240A00C8 */  addiu   $t2, $zero, 0x00C8         ## $t2 = 000000C8
/* 00090 809A7A80 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00094 809A7A84 ACCF0000 */  sw      $t7, 0x0000($a2)           ## 00000000
/* 00098 809A7A88 8CEE0004 */  lw      $t6, 0x0004($a3)           ## 00000004
/* 0009C 809A7A8C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 000A0 809A7A90 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 000A4 809A7A94 ACCE0004 */  sw      $t6, 0x0004($a2)           ## 00000004
/* 000A8 809A7A98 8CEF0008 */  lw      $t7, 0x0008($a3)           ## 00000008
/* 000AC 809A7A9C 00E08825 */  or      $s1, $a3, $zero            ## $s1 = 00000000
/* 000B0 809A7AA0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 000B4 809A7AA4 ACCF0008 */  sw      $t7, 0x0008($a2)           ## 00000008
/* 000B8 809A7AA8 8CF9000C */  lw      $t9, 0x000C($a3)           ## 0000000C
/* 000BC 809A7AAC 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 000C0 809A7AB0 ACD9000C */  sw      $t9, 0x000C($a2)           ## 0000000C
/* 000C4 809A7AB4 8CF80010 */  lw      $t8, 0x0010($a3)           ## 00000010
/* 000C8 809A7AB8 ACD80010 */  sw      $t8, 0x0010($a2)           ## 00000010
/* 000CC 809A7ABC 8CF90014 */  lw      $t9, 0x0014($a3)           ## 00000014
/* 000D0 809A7AC0 ACD90014 */  sw      $t9, 0x0014($a2)           ## 00000014
/* 000D4 809A7AC4 8CE90018 */  lw      $t1, 0x0018($a3)           ## 00000018
/* 000D8 809A7AC8 ACC90018 */  sw      $t1, 0x0018($a2)           ## 00000018
/* 000DC 809A7ACC 8CE8001C */  lw      $t0, 0x001C($a3)           ## 0000001C
/* 000E0 809A7AD0 ACC8001C */  sw      $t0, 0x001C($a2)           ## 0000001C
/* 000E4 809A7AD4 8CE90020 */  lw      $t1, 0x0020($a3)           ## 00000020
/* 000E8 809A7AD8 A4CA005C */  sh      $t2, 0x005C($a2)           ## 0000005C
/* 000EC 809A7ADC ACC90020 */  sw      $t1, 0x0020($a2)           ## 00000020
/* 000F0 809A7AE0 8CE20024 */  lw      $v0, 0x0024($a3)           ## 00000024
/* 000F4 809A7AE4 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 000F8 809A7AE8 10400008 */  beq     $v0, $zero, .L809A7B0C     
/* 000FC 809A7AEC 00000000 */  nop
/* 00100 809A7AF0 ACC20038 */  sw      $v0, 0x0038($a2)           ## 00000038
/* 00104 809A7AF4 84EB002C */  lh      $t3, 0x002C($a3)           ## 0000002C
/* 00108 809A7AF8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0010C 809A7AFC 0C269E7C */  jal     func_809A79F0              
/* 00110 809A7B00 A4CB0048 */  sh      $t3, 0x0048($a2)           ## 00000048
/* 00114 809A7B04 1000000F */  beq     $zero, $zero, .L809A7B44   
/* 00118 809A7B08 860A0048 */  lh      $t2, 0x0048($s0)           ## 00000048
.L809A7B0C:
/* 0011C 809A7B0C 3C020401 */  lui     $v0, 0x0401                ## $v0 = 04010000
/* 00120 809A7B10 2442C0D0 */  addiu   $v0, $v0, 0xC0D0           ## $v0 = 0400C0D0
/* 00124 809A7B14 00026100 */  sll     $t4, $v0,  4               
/* 00128 809A7B18 000C6F02 */  srl     $t5, $t4, 28               
/* 0012C 809A7B1C 000D7080 */  sll     $t6, $t5,  2               
/* 00130 809A7B20 01EE7821 */  addu    $t7, $t7, $t6              
/* 00134 809A7B24 8DEF6FA8 */  lw      $t7, %lo(gSegments)($t7)
/* 00138 809A7B28 0041C024 */  and     $t8, $v0, $at              
/* 0013C 809A7B2C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00140 809A7B30 01F8C821 */  addu    $t9, $t7, $t8              
/* 00144 809A7B34 03214021 */  addu    $t0, $t9, $at              
/* 00148 809A7B38 AE080038 */  sw      $t0, 0x0038($s0)           ## 00000038
/* 0014C 809A7B3C A6090048 */  sh      $t1, 0x0048($s0)           ## 00000048
/* 00150 809A7B40 860A0048 */  lh      $t2, 0x0048($s0)           ## 00000048
.L809A7B44:
/* 00154 809A7B44 24010069 */  addiu   $at, $zero, 0x0069         ## $at = 00000069
/* 00158 809A7B48 3C0F809A */  lui     $t7, %hi(func_809A7F84)    ## $t7 = 809A0000
/* 0015C 809A7B4C 15410009 */  bne     $t2, $at, .L809A7B74       
/* 00160 809A7B50 25EF7F84 */  addiu   $t7, $t7, %lo(func_809A7F84) ## $t7 = 809A7F84
/* 00164 809A7B54 8E0C0038 */  lw      $t4, 0x0038($s0)           ## 00000038
/* 00168 809A7B58 3C0B0401 */  lui     $t3, 0x0401                ## $t3 = 04010000
/* 0016C 809A7B5C 256BCD80 */  addiu   $t3, $t3, 0xCD80           ## $t3 = 0400CD80
/* 00170 809A7B60 156C0004 */  bne     $t3, $t4, .L809A7B74       
/* 00174 809A7B64 3C0D809A */  lui     $t5, %hi(func_809A7D9C)    ## $t5 = 809A0000
/* 00178 809A7B68 25AD7D9C */  addiu   $t5, $t5, %lo(func_809A7D9C) ## $t5 = 809A7D9C
/* 0017C 809A7B6C 10000004 */  beq     $zero, $zero, .L809A7B80   
/* 00180 809A7B70 AE0D0028 */  sw      $t5, 0x0028($s0)           ## 00000028
.L809A7B74:
/* 00184 809A7B74 3C0E809A */  lui     $t6, %hi(func_809A7BFC)    ## $t6 = 809A0000
/* 00188 809A7B78 25CE7BFC */  addiu   $t6, $t6, %lo(func_809A7BFC) ## $t6 = 809A7BFC
/* 0018C 809A7B7C AE0E0028 */  sw      $t6, 0x0028($s0)           ## 00000028
.L809A7B80:
/* 00190 809A7B80 AE0F0024 */  sw      $t7, 0x0024($s0)           ## 00000024
/* 00194 809A7B84 86380028 */  lh      $t8, 0x0028($s1)           ## 00000028
/* 00198 809A7B88 A6180044 */  sh      $t8, 0x0044($s0)           ## 00000044
/* 0019C 809A7B8C 8639002A */  lh      $t9, 0x002A($s1)           ## 0000002A
/* 001A0 809A7B90 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001A4 809A7B94 A6190046 */  sh      $t9, 0x0046($s0)           ## 00000046
/* 001A8 809A7B98 3C01439D */  lui     $at, 0x439D                ## $at = 439D0000
/* 001AC 809A7B9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 314.00
/* 001B0 809A7BA0 00000000 */  nop
/* 001B4 809A7BA4 46040182 */  mul.s   $f6, $f0, $f4              
/* 001B8 809A7BA8 4600320D */  trunc.w.s $f8, $f6                   
/* 001BC 809A7BAC 44094000 */  mfc1    $t1, $f8                   
/* 001C0 809A7BB0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001C4 809A7BB4 A6090040 */  sh      $t1, 0x0040($s0)           ## 00000040
/* 001C8 809A7BB8 3C01439D */  lui     $at, 0x439D                ## $at = 439D0000
/* 001CC 809A7BBC 44815000 */  mtc1    $at, $f10                  ## $f10 = 314.00
/* 001D0 809A7BC0 240D00C8 */  addiu   $t5, $zero, 0x00C8         ## $t5 = 000000C8
/* 001D4 809A7BC4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 001D8 809A7BC8 460A0402 */  mul.s   $f16, $f0, $f10            
/* 001DC 809A7BCC 4600848D */  trunc.w.s $f18, $f16                 
/* 001E0 809A7BD0 440B9000 */  mfc1    $t3, $f18                  
/* 001E4 809A7BD4 00000000 */  nop
/* 001E8 809A7BD8 A60B0042 */  sh      $t3, 0x0042($s0)           ## 00000042
/* 001EC 809A7BDC 862C002E */  lh      $t4, 0x002E($s1)           ## 0000002E
/* 001F0 809A7BE0 01AC7023 */  subu    $t6, $t5, $t4              
/* 001F4 809A7BE4 A60E004C */  sh      $t6, 0x004C($s0)           ## 0000004C
/* 001F8 809A7BE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001FC 809A7BEC 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00200 809A7BF0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00204 809A7BF4 03E00008 */  jr      $ra                        
/* 00208 809A7BF8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
