glabel DemoIk_Init
/* 01378 80984678 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0137C 8098467C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01380 80984680 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01384 80984684 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01388 80984688 10400005 */  beq     $v0, $zero, .L809846A0     
/* 0138C 8098468C 00000000 */  nop
/* 01390 80984690 10410003 */  beq     $v0, $at, .L809846A0       
/* 01394 80984694 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01398 80984698 14410005 */  bne     $v0, $at, .L809846B0       
/* 0139C 8098469C 00000000 */  nop
.L809846A0:
/* 013A0 809846A0 0C260E08 */  jal     func_80983820              
/* 013A4 809846A4 00000000 */  nop
/* 013A8 809846A8 10000004 */  beq     $zero, $zero, .L809846BC   
/* 013AC 809846AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809846B0:
/* 013B0 809846B0 0C260F8A */  jal     func_80983E28              
/* 013B4 809846B4 00000000 */  nop
/* 013B8 809846B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809846BC:
/* 013BC 809846BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013C0 809846C0 03E00008 */  jr      $ra                        
/* 013C4 809846C4 00000000 */  nop
/* 013C8 809846C8 00000000 */  nop
/* 013CC 809846CC 00000000 */  nop

