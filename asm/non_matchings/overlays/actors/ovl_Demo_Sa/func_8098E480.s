glabel func_8098E480
/* 00020 8098E480 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00024 8098E484 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00028 8098E488 848E0192 */  lh      $t6, 0x0192($a0)           ## 00000192
/* 0002C 8098E48C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00030 8098E490 24C30192 */  addiu   $v1, $a2, 0x0192           ## $v1 = 00000192
/* 00034 8098E494 15C00003 */  bne     $t6, $zero, .L8098E4A4     
/* 00038 8098E498 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0003C 8098E49C 10000005 */  beq     $zero, $zero, .L8098E4B4   
/* 00040 8098E4A0 24830192 */  addiu   $v1, $a0, 0x0192           ## $v1 = 00000192
.L8098E4A4:
/* 00044 8098E4A4 846F0000 */  lh      $t7, 0x0000($v1)           ## 00000192
/* 00048 8098E4A8 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 0004C 8098E4AC A4780000 */  sh      $t8, 0x0000($v1)           ## 00000192
/* 00050 8098E4B0 84620000 */  lh      $v0, 0x0000($v1)           ## 00000192
.L8098E4B4:
/* 00054 8098E4B4 14400008 */  bne     $v0, $zero, .L8098E4D8     
/* 00058 8098E4B8 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 0005C 8098E4BC 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 00060 8098E4C0 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00064 8098E4C4 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00068 8098E4C8 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 0006C 8098E4CC 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00070 8098E4D0 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 00074 8098E4D4 A4620000 */  sh      $v0, 0x0000($v1)           ## 00000000
.L8098E4D8:
/* 00078 8098E4D8 84790000 */  lh      $t9, 0x0000($v1)           ## 00000000
/* 0007C 8098E4DC 24C20190 */  addiu   $v0, $a2, 0x0190           ## $v0 = 00000190
/* 00080 8098E4E0 A4590000 */  sh      $t9, 0x0000($v0)           ## 00000190
/* 00084 8098E4E4 84480000 */  lh      $t0, 0x0000($v0)           ## 00000190
/* 00088 8098E4E8 29010003 */  slti    $at, $t0, 0x0003           
/* 0008C 8098E4EC 54200003 */  bnel    $at, $zero, .L8098E4FC     
/* 00090 8098E4F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00094 8098E4F4 A4400000 */  sh      $zero, 0x0000($v0)         ## 00000190
/* 00098 8098E4F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098E4FC:
/* 0009C 8098E4FC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000A0 8098E500 03E00008 */  jr      $ra                        
/* 000A4 8098E504 00000000 */  nop
