glabel func_80A43824
/* 00AF4 80A43824 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00AF8 80A43828 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00AFC 80A4382C 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00B00 80A43830 8DCE716C */  lw      $t6, 0x716C($t6)           ## 8012716C
/* 00B04 80A43834 8C4F00A4 */  lw      $t7, 0x00A4($v0)           ## 8015E704
/* 00B08 80A43838 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00B0C 80A4383C AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00B10 80A43840 01CFC024 */  and     $t8, $t6, $t7              
/* 00B14 80A43844 53000004 */  beql    $t8, $zero, .L80A43858     
/* 00B18 80A43848 94590ED8 */  lhu     $t9, 0x0ED8($v0)           ## 8015F538
/* 00B1C 80A4384C 03E00008 */  jr      $ra                        
/* 00B20 80A43850 24023027 */  addiu   $v0, $zero, 0x3027         ## $v0 = 00003027
.L80A43854:
/* 00B24 80A43854 94590ED8 */  lhu     $t9, 0x0ED8($v0)           ## 00003EFF
.L80A43858:
/* 00B28 80A43858 24033009 */  addiu   $v1, $zero, 0x3009         ## $v1 = 00003009
/* 00B2C 80A4385C 33280008 */  andi    $t0, $t9, 0x0008           ## $t0 = 00000000
/* 00B30 80A43860 11000003 */  beq     $t0, $zero, .L80A43870     
/* 00B34 80A43864 00000000 */  nop
/* 00B38 80A43868 10000001 */  beq     $zero, $zero, .L80A43870   
/* 00B3C 80A4386C 24033026 */  addiu   $v1, $zero, 0x3026         ## $v1 = 00003026
.L80A43870:
/* 00B40 80A43870 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003026
/* 00B44 80A43874 03E00008 */  jr      $ra                        
/* 00B48 80A43878 00000000 */  nop
