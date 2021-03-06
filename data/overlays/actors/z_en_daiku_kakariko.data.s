.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Daiku_Kakariko_InitVars
 .word 0x01BC0400, 0x00000019, 0x01220000, 0x00000308
.word EnDaikuKakariko_Init
.word EnDaikuKakariko_Destroy
.word EnDaikuKakariko_Update
.word EnDaikuKakariko_Draw
glabel D_809E54B0
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00120042, 0x00000000, 0x00000000
glabel D_809E54DC
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_809E54E8
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_809E5508
 .word 0x06001AB0, 0x3F800000, 0x02000000, 0xC0E00000, 0x06007DE0, 0x3F800000, 0x00000000, 0xC0E00000, 0x0600885C, 0x3F800000, 0x00000000, 0xC0E00000, 0x06000C44, 0x3F800000, 0x00000000, 0xC0E00000, 0x06000600, 0x3F800000, 0x00000000, 0xC0E00000, 0x06008164, 0x3F800000, 0x00000000, 0xC0E00000
glabel D_809E5568
 .word 0x008000B0, 0x00700470
glabel D_809E5570
 .word 0x00000001, 0x00000002, 0x00000003, 0x00000004
glabel D_809E5580
 .word 0x06005BD0, 0x06005AC0, 0x06005990, 0x06005880
glabel D_809E5590
 .word 0x442F0000, 0x44898000, 0x00000000, 0x00000000

