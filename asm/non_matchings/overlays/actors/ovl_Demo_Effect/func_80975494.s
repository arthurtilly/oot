glabel func_80975494
/* 04544 80975494 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 04548 80975498 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0454C 8097549C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 04550 809754A0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 04554 809754A4 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 04558 809754A8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0455C 809754AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04560 809754B0 3C068097 */  lui     $a2, %hi(D_80976A8C)       ## $a2 = 80970000
/* 04564 809754B4 24C66A8C */  addiu   $a2, $a2, %lo(D_80976A8C)  ## $a2 = 80976A8C
/* 04568 809754B8 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 0456C 809754BC 24070B1A */  addiu   $a3, $zero, 0x0B1A         ## $a3 = 00000B1A
/* 04570 809754C0 0C031AB1 */  jal     Graph_OpenDisps              
/* 04574 809754C4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 04578 809754C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0457C 809754CC 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 04580 809754D0 0C25D1AD */  jal     func_809746B4              
/* 04584 809754D4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 04588 809754D8 54400085 */  bnel    $v0, $zero, .L809756F0     
/* 0458C 809754DC 8FAE006C */  lw      $t6, 0x006C($sp)           
/* 04590 809754E0 920F0186 */  lbu     $t7, 0x0186($s0)           ## 00000186
/* 04594 809754E4 8FB9006C */  lw      $t9, 0x006C($sp)           
/* 04598 809754E8 15E00003 */  bne     $t7, $zero, .L809754F8     
/* 0459C 809754EC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 045A0 809754F0 1000007E */  beq     $zero, $zero, .L809756EC   
/* 045A4 809754F4 A2180186 */  sb      $t8, 0x0186($s0)           ## 00000186
.L809754F8:
/* 045A8 809754F8 0C024F61 */  jal     func_80093D84              
/* 045AC 809754FC 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 045B0 80975500 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 045B4 80975504 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 045B8 80975508 35290080 */  ori     $t1, $t1, 0x0080           ## $t1 = FA000080
/* 045BC 8097550C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 045C0 80975510 AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 045C4 80975514 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 045C8 80975518 920D0178 */  lbu     $t5, 0x0178($s0)           ## 00000178
/* 045CC 8097551C 92190179 */  lbu     $t9, 0x0179($s0)           ## 00000179
/* 045D0 80975520 920B0184 */  lbu     $t3, 0x0184($s0)           ## 00000184
/* 045D4 80975524 920C017A */  lbu     $t4, 0x017A($s0)           ## 0000017A
/* 045D8 80975528 000D7600 */  sll     $t6, $t5, 24               
/* 045DC 8097552C 00194400 */  sll     $t0, $t9, 16               
/* 045E0 80975530 016E7825 */  or      $t7, $t3, $t6              ## $t7 = 00000000
/* 045E4 80975534 01E84825 */  or      $t1, $t7, $t0              ## $t1 = 00000008
/* 045E8 80975538 000C6A00 */  sll     $t5, $t4,  8               
/* 045EC 8097553C 012D5825 */  or      $t3, $t1, $t5              ## $t3 = 00000008
/* 045F0 80975540 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 045F4 80975544 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 045F8 80975548 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 045FC 8097554C 3C018097 */  lui     $at, %hi(D_80976D64)       ## $at = 80970000
/* 04600 80975550 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 04604 80975554 AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 04608 80975558 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0460C 8097555C 920C017B */  lbu     $t4, 0x017B($s0)           ## 0000017B
/* 04610 80975560 920F017D */  lbu     $t7, 0x017D($s0)           ## 0000017D
/* 04614 80975564 920E017C */  lbu     $t6, 0x017C($s0)           ## 0000017C
/* 04618 80975568 000C4E00 */  sll     $t1, $t4, 24               
/* 0461C 8097556C 000F4200 */  sll     $t0, $t7,  8               
/* 04620 80975570 01096825 */  or      $t5, $t0, $t1              ## $t5 = 00000008
/* 04624 80975574 000EC400 */  sll     $t8, $t6, 16               
/* 04628 80975578 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = FB000008
/* 0462C 8097557C 372F00FF */  ori     $t7, $t9, 0x00FF           ## $t7 = FB0000FF
/* 04630 80975580 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 04634 80975584 920A0185 */  lbu     $t2, 0x0185($s0)           ## 00000185
/* 04638 80975588 C4286D64 */  lwc1    $f8, %lo(D_80976D64)($at)  
/* 0463C 8097558C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04640 80975590 314C0001 */  andi    $t4, $t2, 0x0001           ## $t4 = 00000000
/* 04644 80975594 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 04648 80975598 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 0464C 8097559C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04650 809755A0 468021A0 */  cvt.s.w $f6, $f4                   
/* 04654 809755A4 46083282 */  mul.s   $f10, $f6, $f8             
/* 04658 809755A8 46105300 */  add.s   $f12, $f10, $f16           
/* 0465C 809755AC 44066000 */  mfc1    $a2, $f12                  
/* 04660 809755B0 0C0342A3 */  jal     Matrix_Scale              
/* 04664 809755B4 46006386 */  mov.s   $f14, $f12                 
/* 04668 809755B8 0C034213 */  jal     Matrix_Push              
/* 0466C 809755BC 00000000 */  nop
/* 04670 809755C0 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 04674 809755C4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 04678 809755C8 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 0467C 809755CC 00812021 */  addu    $a0, $a0, $at              
/* 04680 809755D0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 04684 809755D4 0C03424C */  jal     Matrix_Mult              
/* 04688 809755D8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0468C 809755DC 86080188 */  lh      $t0, 0x0188($s0)           ## 00000188
/* 04690 809755E0 3C018097 */  lui     $at, %hi(D_80976D68)       ## $at = 80970000
/* 04694 809755E4 C4266D68 */  lwc1    $f6, %lo(D_80976D68)($at)  
/* 04698 809755E8 44889000 */  mtc1    $t0, $f18                  ## $f18 = 0.00
/* 0469C 809755EC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 046A0 809755F0 46809120 */  cvt.s.w $f4, $f18                  
/* 046A4 809755F4 46062302 */  mul.s   $f12, $f4, $f6             
/* 046A8 809755F8 0C0343B5 */  jal     Matrix_RotateZ              
/* 046AC 809755FC 00000000 */  nop
/* 046B0 80975600 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 046B4 80975604 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 046B8 80975608 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 046BC 8097560C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 046C0 80975610 AE2902D0 */  sw      $t1, 0x02D0($s1)           ## 000002D0
/* 046C4 80975614 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 046C8 80975618 8FAE006C */  lw      $t6, 0x006C($sp)           
/* 046CC 8097561C 3C058097 */  lui     $a1, %hi(D_80976AA0)       ## $a1 = 80970000
/* 046D0 80975620 24A56AA0 */  addiu   $a1, $a1, %lo(D_80976AA0)  ## $a1 = 80976AA0
/* 046D4 80975624 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 046D8 80975628 24060B32 */  addiu   $a2, $zero, 0x0B32         ## $a2 = 00000B32
/* 046DC 8097562C 0C0346A2 */  jal     Matrix_NewMtx              
/* 046E0 80975630 AFA2003C */  sw      $v0, 0x003C($sp)           
/* 046E4 80975634 8FA3003C */  lw      $v1, 0x003C($sp)           
/* 046E8 80975638 3C040401 */  lui     $a0, 0x0401                ## $a0 = 04010000
/* 046EC 8097563C 24840130 */  addiu   $a0, $a0, 0x0130           ## $a0 = 04010130
/* 046F0 80975640 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 046F4 80975644 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 046F8 80975648 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 046FC 8097564C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 04700 80975650 AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 04704 80975654 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 04708 80975658 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0470C 8097565C 0C034221 */  jal     Matrix_Pull              
/* 04710 80975660 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 04714 80975664 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 04718 80975668 0C03424C */  jal     Matrix_Mult              
/* 0471C 8097566C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04720 80975670 86190188 */  lh      $t9, 0x0188($s0)           ## 00000188
/* 04724 80975674 3C018097 */  lui     $at, %hi(D_80976D6C)       ## $at = 80970000
/* 04728 80975678 C4326D6C */  lwc1    $f18, %lo(D_80976D6C)($at) 
/* 0472C 8097567C 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 04730 80975680 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04734 80975684 468042A0 */  cvt.s.w $f10, $f8                  
/* 04738 80975688 46005407 */  neg.s   $f16, $f10                 
/* 0473C 8097568C 46128302 */  mul.s   $f12, $f16, $f18           
/* 04740 80975690 0C0343B5 */  jal     Matrix_RotateZ              
/* 04744 80975694 00000000 */  nop
/* 04748 80975698 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 0474C 8097569C 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 04750 809756A0 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 04754 809756A4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 04758 809756A8 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 0475C 809756AC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 04760 809756B0 8FAC006C */  lw      $t4, 0x006C($sp)           
/* 04764 809756B4 3C058097 */  lui     $a1, %hi(D_80976AB4)       ## $a1 = 80970000
/* 04768 809756B8 24A56AB4 */  addiu   $a1, $a1, %lo(D_80976AB4)  ## $a1 = 80976AB4
/* 0476C 809756BC 24060B3A */  addiu   $a2, $zero, 0x0B3A         ## $a2 = 00000B3A
/* 04770 809756C0 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 04774 809756C4 0C0346A2 */  jal     Matrix_NewMtx              
/* 04778 809756C8 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 0477C 809756CC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 04780 809756D0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 04784 809756D4 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 04788 809756D8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0478C 809756DC AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 04790 809756E0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 04794 809756E4 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 04798 809756E8 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
.L809756EC:
/* 0479C 809756EC 8FAE006C */  lw      $t6, 0x006C($sp)           
.L809756F0:
/* 047A0 809756F0 3C068097 */  lui     $a2, %hi(D_80976AC8)       ## $a2 = 80970000
/* 047A4 809756F4 24C66AC8 */  addiu   $a2, $a2, %lo(D_80976AC8)  ## $a2 = 80976AC8
/* 047A8 809756F8 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 047AC 809756FC 24070B41 */  addiu   $a3, $zero, 0x0B41         ## $a3 = 00000B41
/* 047B0 80975700 0C031AD5 */  jal     Graph_CloseDisps              
/* 047B4 80975704 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 047B8 80975708 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 047BC 8097570C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 047C0 80975710 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 047C4 80975714 03E00008 */  jr      $ra                        
/* 047C8 80975718 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000


