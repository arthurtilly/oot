glabel func_80976404
/* 054B4 80976404 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 054B8 80976408 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 054BC 8097640C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 054C0 80976410 AFA40058 */  sw      $a0, 0x0058($sp)           
/* 054C4 80976414 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 054C8 80976418 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 054CC 8097641C 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 054D0 80976420 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 054D4 80976424 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 054D8 80976428 1041000F */  beq     $v0, $at, .L80976468       
/* 054DC 8097642C 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 054E0 80976430 1041000D */  beq     $v0, $at, .L80976468       
/* 054E4 80976434 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 054E8 80976438 0C01B129 */  jal     func_8006C4A4              
/* 054EC 8097643C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 054F0 80976440 14400009 */  bne     $v0, $zero, .L80976468     
/* 054F4 80976444 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 054F8 80976448 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 054FC 8097644C 8C581360 */  lw      $t8, 0x1360($v0)           ## 8015F9C0
/* 05500 80976450 2B010004 */  slti    $at, $t8, 0x0004           
/* 05504 80976454 10200004 */  beq     $at, $zero, .L80976468     
/* 05508 80976458 00000000 */  nop
/* 0550C 8097645C 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015E660
/* 05510 80976460 24010324 */  addiu   $at, $zero, 0x0324         ## $at = 00000324
/* 05514 80976464 17210020 */  bne     $t9, $at, .L809764E8       
.L80976468:
/* 05518 80976468 3C068097 */  lui     $a2, %hi(D_80976C30)       ## $a2 = 80970000
/* 0551C 8097646C 24C66C30 */  addiu   $a2, $a2, %lo(D_80976C30)  ## $a2 = 80976C30
/* 05520 80976470 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE0
/* 05524 80976474 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05528 80976478 0C031AB1 */  jal     Graph_OpenDisps              
/* 0552C 8097647C 24070C81 */  addiu   $a3, $zero, 0x0C81         ## $a3 = 00000C81
/* 05530 80976480 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 05534 80976484 0C024DDD */  jal     Gfx_CallSetupDL              
/* 05538 80976488 24050019 */  addiu   $a1, $zero, 0x0019         ## $a1 = 00000019
/* 0553C 8097648C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 05540 80976490 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 05544 80976494 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 05548 80976498 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0554C 8097649C 44066000 */  mfc1    $a2, $f12                  
/* 05550 809764A0 0C0342A3 */  jal     Matrix_Scale              
/* 05554 809764A4 46006386 */  mov.s   $f14, $f12                 
/* 05558 809764A8 8FA40058 */  lw      $a0, 0x0058($sp)           
/* 0555C 809764AC 3C078097 */  lui     $a3, %hi(func_80976254)    ## $a3 = 80970000
/* 05560 809764B0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 05564 809764B4 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 05568 809764B8 24E76254 */  addiu   $a3, $a3, %lo(func_80976254) ## $a3 = 80976254
/* 0556C 809764BC 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 05570 809764C0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05574 809764C4 2486014C */  addiu   $a2, $a0, 0x014C           ## $a2 = 0000014C
/* 05578 809764C8 0C01B3DB */  jal     func_8006CF6C              
/* 0557C 809764CC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05580 809764D0 3C068097 */  lui     $a2, %hi(D_80976C44)       ## $a2 = 80970000
/* 05584 809764D4 24C66C44 */  addiu   $a2, $a2, %lo(D_80976C44)  ## $a2 = 80976C44
/* 05588 809764D8 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE0
/* 0558C 809764DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05590 809764E0 0C031AD5 */  jal     Graph_CloseDisps              
/* 05594 809764E4 24070C90 */  addiu   $a3, $zero, 0x0C90         ## $a3 = 00000C90
.L809764E8:
/* 05598 809764E8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0559C 809764EC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 055A0 809764F0 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 055A4 809764F4 03E00008 */  jr      $ra                        
/* 055A8 809764F8 00000000 */  nop


