.rdata
glabel D_80138A50
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138A60
    .asciz "こいつ,pself_actor->name %d\n"
    .balign 4
# This one

# Needs splitting
.text
glabel func_8003E214
/* AB53B4 8003E214 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AB53B8 8003E218 AFA5002C */  sw    $a1, 0x2c($sp)
/* AB53BC 8003E21C AFBF0024 */  sw    $ra, 0x24($sp)
/* AB53C0 8003E220 AFA40028 */  sw    $a0, 0x28($sp)
/* AB53C4 8003E224 AFA60030 */  sw    $a2, 0x30($sp)
/* AB53C8 8003E228 AFA70034 */  sw    $a3, 0x34($sp)
/* AB53CC 8003E22C 240E0032 */  li    $t6, 50
/* AB53D0 8003E230 ACEE0000 */  sw    $t6, ($a3)
/* AB53D4 8003E234 3C058014 */  lui   $a1, %hi(D_80138A50) # $a1, 0x8014
/* AB53D8 8003E238 24A58A50 */  addiu $a1, %lo(D_80138A50) # addiu $a1, $a1, -0x75b0
/* AB53DC 8003E23C 8FA40038 */  lw    $a0, 0x38($sp)
/* AB53E0 8003E240 0C00E180 */  jal   func_80038600
/* AB53E4 8003E244 240616DC */   li    $a2, 5852
/* AB53E8 8003E248 24010001 */  li    $at, 1
/* AB53EC 8003E24C 14410006 */  bne   $v0, $at, .L8003E268
/* AB53F0 8003E250 8FB80040 */   lw    $t8, 0x40($sp)
/* AB53F4 8003E254 13000004 */  beqz  $t8, .L8003E268
/* AB53F8 8003E258 3C048014 */   lui   $a0, %hi(D_80138A60) # $a0, 0x8014
/* AB53FC 8003E25C 24848A60 */  addiu $a0, %lo(D_80138A60) # addiu $a0, $a0, -0x75a0
/* AB5400 8003E260 0C00084C */  jal   osSyncPrintf
/* AB5404 8003E264 87050000 */   lh    $a1, ($t8)
.L8003E268:
/* AB5408 8003E268 8FA40028 */  lw    $a0, 0x28($sp)
/* AB540C 8003E26C 8FA60038 */  lw    $a2, 0x38($sp)
/* AB5410 8003E270 0C00EB40 */  jal   func_8003AD00
/* AB5414 8003E274 8C850040 */   lw    $a1, 0x40($a0)
/* AB5418 8003E278 14400003 */  bnez  $v0, .L8003E288
/* AB541C 8003E27C 00402025 */   move  $a0, $v0
/* AB5420 8003E280 1000001E */  b     .L8003E2FC
/* AB5424 8003E284 00001025 */   move  $v0, $zero
.L8003E288:
/* AB5428 8003E288 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* AB542C 8003E28C 8FB90030 */  lw    $t9, 0x30($sp)
/* AB5430 8003E290 97A80046 */  lhu   $t0, 0x46($sp)
/* AB5434 8003E294 97A5002E */  lhu   $a1, 0x2e($sp)
/* AB5438 8003E298 8FA60028 */  lw    $a2, 0x28($sp)
/* AB543C 8003E29C 8FA70038 */  lw    $a3, 0x38($sp)
/* AB5440 8003E2A0 E7A40010 */  swc1  $f4, 0x10($sp)
/* AB5444 8003E2A4 AFB90014 */  sw    $t9, 0x14($sp)
/* AB5448 8003E2A8 0C00EACA */  jal   func_8003AB28
/* AB544C 8003E2AC AFA80018 */   sw    $t0, 0x18($sp)
/* AB5450 8003E2B0 1440000F */  bnez  $v0, .L8003E2F0
/* AB5454 8003E2B4 8FA40028 */   lw    $a0, 0x28($sp)
/* AB5458 8003E2B8 8FA90038 */  lw    $t1, 0x38($sp)
/* AB545C 8003E2BC C7A6003C */  lwc1  $f6, 0x3c($sp)
/* AB5460 8003E2C0 8FAA0040 */  lw    $t2, 0x40($sp)
/* AB5464 8003E2C4 97AB0046 */  lhu   $t3, 0x46($sp)
/* AB5468 8003E2C8 97A5002E */  lhu   $a1, 0x2e($sp)
/* AB546C 8003E2CC 8FA60030 */  lw    $a2, 0x30($sp)
/* AB5470 8003E2D0 8FA70034 */  lw    $a3, 0x34($sp)
/* AB5474 8003E2D4 AFA90010 */  sw    $t1, 0x10($sp)
/* AB5478 8003E2D8 E7A60014 */  swc1  $f6, 0x14($sp)
/* AB547C 8003E2DC AFAA0018 */  sw    $t2, 0x18($sp)
/* AB5480 8003E2E0 0C010592 */  jal   func_80041648
/* AB5484 8003E2E4 AFAB001C */   sw    $t3, 0x1c($sp)
/* AB5488 8003E2E8 50400004 */  beql  $v0, $zero, .L8003E2FC
/* AB548C 8003E2EC 00001025 */   move  $v0, $zero
.L8003E2F0:
/* AB5490 8003E2F0 10000002 */  b     .L8003E2FC
/* AB5494 8003E2F4 24020001 */   li    $v0, 1
/* AB5498 8003E2F8 00001025 */  move  $v0, $zero
.L8003E2FC:
/* AB549C 8003E2FC 8FBF0024 */  lw    $ra, 0x24($sp)
/* AB54A0 8003E300 27BD0028 */  addiu $sp, $sp, 0x28
/* AB54A4 8003E304 03E00008 */  jr    $ra
/* AB54A8 8003E308 00000000 */   nop   

glabel func_8003E30C
/* AB54AC 8003E30C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB54B0 8003E310 AFA50034 */  sw    $a1, 0x34($sp)
/* AB54B4 8003E314 44866000 */  mtc1  $a2, $f12
/* AB54B8 8003E318 8FAE0034 */  lw    $t6, 0x34($sp)
/* AB54BC 8003E31C AFBF0024 */  sw    $ra, 0x24($sp)
/* AB54C0 8003E320 27A6002C */  addiu $a2, $sp, 0x2c
/* AB54C4 8003E324 00002825 */  move  $a1, $zero
/* AB54C8 8003E328 27A70028 */  addiu $a3, $sp, 0x28
/* AB54CC 8003E32C AFA00018 */  sw    $zero, 0x18($sp)
/* AB54D0 8003E330 AFA0001C */  sw    $zero, 0x1c($sp)
/* AB54D4 8003E334 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB54D8 8003E338 0C00F885 */  jal   func_8003E214
/* AB54DC 8003E33C E7AC0014 */   swc1  $f12, 0x14($sp)
/* AB54E0 8003E340 8FBF0024 */  lw    $ra, 0x24($sp)
/* AB54E4 8003E344 27BD0030 */  addiu $sp, $sp, 0x30
/* AB54E8 8003E348 03E00008 */  jr    $ra
/* AB54EC 8003E34C 00000000 */   nop   

/* AB54F0 8003E350 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB54F4 8003E354 AFA50034 */  sw    $a1, 0x34($sp)
/* AB54F8 8003E358 44866000 */  mtc1  $a2, $f12
/* AB54FC 8003E35C 8FAE0034 */  lw    $t6, 0x34($sp)
/* AB5500 8003E360 AFBF0024 */  sw    $ra, 0x24($sp)
/* AB5504 8003E364 240F0005 */  li    $t7, 5
/* AB5508 8003E368 AFAF001C */  sw    $t7, 0x1c($sp)
/* AB550C 8003E36C 27A6002C */  addiu $a2, $sp, 0x2c
/* AB5510 8003E370 00002825 */  move  $a1, $zero
/* AB5514 8003E374 27A70028 */  addiu $a3, $sp, 0x28
/* AB5518 8003E378 AFA00018 */  sw    $zero, 0x18($sp)
/* AB551C 8003E37C AFAE0010 */  sw    $t6, 0x10($sp)
/* AB5520 8003E380 0C00F885 */  jal   func_8003E214
/* AB5524 8003E384 E7AC0014 */   swc1  $f12, 0x14($sp)
/* AB5528 8003E388 8FBF0024 */  lw    $ra, 0x24($sp)
/* AB552C 8003E38C 27BD0030 */  addiu $sp, $sp, 0x30
/* AB5530 8003E390 03E00008 */  jr    $ra
/* AB5534 8003E394 00000000 */   nop   

