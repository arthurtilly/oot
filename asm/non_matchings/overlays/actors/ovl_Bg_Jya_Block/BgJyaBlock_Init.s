glabel BgJyaBlock_Init
/* 00000 808941A0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 808941A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 808941A8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 808941AC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 808941B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 808941B4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00018 808941B8 0C010D20 */  jal     func_80043480
              
/* 0001C 808941BC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00020 808941C0 3C040500 */  lui     $a0, 0x0500                ## $a0 = 05000000
/* 00024 808941C4 24844E98 */  addiu   $a0, $a0, 0x4E98           ## $a0 = 05004E98
/* 00028 808941C8 0C010620 */  jal     func_80041880
              
/* 0002C 808941CC 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00030 808941D0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00034 808941D4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00038 808941D8 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0003C 808941DC 0C00FA9D */  jal     func_8003EA74
              ## func_8003EA74
/* 00040 808941E0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00044 808941E4 3C058089 */  lui     $a1, %hi(D_80894400)       ## $a1 = 80890000
/* 00048 808941E8 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0004C 808941EC 24A54400 */  addiu   $a1, $a1, %lo(D_80894400)  ## $a1 = 80894400
/* 00050 808941F0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00054 808941F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00058 808941F8 3C0E8016 */  lui     $t6, %hi(gSaveContext+4)
/* 0005C 808941FC 8DCEE664 */  lw      $t6, %lo(gSaveContext+4)($t6)
/* 00060 80894200 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00064 80894204 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
/* 00068 80894208 11C00003 */  beq     $t6, $zero, .L80894218     
/* 0006C 8089420C 00000000 */  nop
/* 00070 80894210 10000001 */  beq     $zero, $zero, .L80894218   
/* 00074 80894214 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80894218:
/* 00078 80894218 14410007 */  bne     $v0, $at, .L80894238       
/* 0007C 8089421C 00000000 */  nop
/* 00080 80894220 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00084 80894224 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00088 80894228 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0008C 8089422C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00090 80894230 54400004 */  bnel    $v0, $zero, .L80894244     
/* 00094 80894234 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80894238:
/* 00098 80894238 0C00B55C */  jal     Actor_Kill
              
/* 0009C 8089423C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A0 80894240 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80894244:
/* 000A4 80894244 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000A8 80894248 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000AC 8089424C 03E00008 */  jr      $ra                        
/* 000B0 80894250 00000000 */  nop
