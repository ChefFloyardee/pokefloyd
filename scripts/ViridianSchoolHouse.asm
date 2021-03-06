ViridianSchoolHouse_Script:
    call EnableAutoTextBoxDrawing
    ld hl, SchoolTrainerHeader0
    ld de, ViridianSchoolHouse_ScriptPointers
    ld a, [wSSAnneB1FRoomsCurScript]
    call ExecuteCurMapScriptInTable
    ld [wSSAnneB1FRoomsCurScript], a
    ret
 
ViridianSchoolHouse_ScriptPointers:
    dw CheckFightingMapTrainers
    dw DisplayEnemyTrainerTextAndStartBattle
    dw EndTrainerBattle

ViridianSchoolHouse_TextPointers:
	dw SchoolText1
	dw SchoolText2
	dw SchoolText3
	dw SchoolText4
	dw SchoolText5
	dw SchoolText6
	dw SchoolText7
	dw SchoolText8
	dw SchoolText9
	dw SchoolText10
	dw SchoolText11
	dw SchoolText21
	dw SchoolText22
	
SchoolTrainerHeader0:
    dbEventFlagBit EVENT_BEAT_SS_ANNE_10_TRAINER_0
    db ($0 << 4) ; trainer's view range
    dwEventFlagAddress EVENT_BEAT_SS_ANNE_10_TRAINER_0
    dw SchoolBattleText1 ; TextBeforeBattle
    dw SchoolAfterBattleText1 ; TextAfterBattle
    dw SchoolEndBattleText1 ; TextEndBattle
    dw SchoolEndBattleText1 ; TextEndBattle
	
	db $ff

SchoolText1:
	TX_ASM
	CheckEvent EVENT_ENTERED_BLUES_HOUSE 
	jr nz, .asm_627d9
	ld hl, SchoolText12
	jr .asm_0b11d
.asm_627d9
	ld hl, EndText1
.asm_0b11d
	call PrintText
	jp TextScriptEnd
	
SchoolText2:
	TX_ASM
	CheckEvent EVENT_ENTERED_BLUES_HOUSE 
	jr nz, .asm_627d9
	ld hl, SchoolText13
	jr .asm_0b11d
.asm_627d9
	ld hl, EndText2
.asm_0b11d
	call PrintText
	jp TextScriptEnd
	
SchoolText3:
	TX_ASM
	CheckEvent EVENT_ENTERED_BLUES_HOUSE 
	jr nz, .asm_627d9
	ld hl, SchoolText14
	jr .asm_0b11d
.asm_627d9
	ld hl, EndText3
.asm_0b11d
	call PrintText
	jp TextScriptEnd
	
SchoolText4:
	TX_ASM
	CheckEvent EVENT_ENTERED_BLUES_HOUSE 
	jr nz, .asm_627d9
	ld hl, SchoolText15
	jr .asm_0b11d
.asm_627d9
	ld hl, EndText4
.asm_0b11d
	call PrintText
	jp TextScriptEnd
	
SchoolText5:
	TX_ASM
	CheckEvent EVENT_ENTERED_BLUES_HOUSE 
	jr nz, .asm_627d9
	ld hl, SchoolText16
	jr .asm_0b11d
.asm_627d9
	ld hl, EndText5
.asm_0b11d
	call PrintText
	jp TextScriptEnd
	
SchoolText6:
	TX_ASM
	CheckEvent EVENT_ENTERED_BLUES_HOUSE 
	jr nz, .asm_627d9
	ld hl, SchoolText17
	jr .asm_0b11d
.asm_627d9
	ld hl, EndText6
.asm_0b11d
	call PrintText
	jp TextScriptEnd
	
SchoolText8:
	TX_ASM
	CheckEvent EVENT_ENTERED_BLUES_HOUSE 
	jr nz, .asm_627d9
	ld hl, SchoolText18
	jr .asm_0b11d
.asm_627d9
	ld hl, EndText7
.asm_0b11d
	call PrintText
	jp TextScriptEnd
	
SchoolText12:
	TX_FAR _SchoolText1
	db "@"

SchoolText13:
	TX_FAR _SchoolText2
	db "@"

SchoolText14:
	TX_FAR _SchoolText3
	db "@"

SchoolText15:
	TX_FAR _SchoolText4
	db "@"
	
SchoolText16:
	TX_FAR _SchoolText5
	db "@"
	
SchoolText17:
	TX_FAR _SchoolText6
	db "@"
	
SchoolText7:
	TX_FAR _SchoolText7
	db "@"
	
SchoolText18:
	TX_FAR _SchoolText8
	db "@"
	
SchoolText9:
	TX_ASM
	ld hl, SchoolText_1d5b1
	call PrintText
	ld a, WARTORTLE
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

SchoolText_1d5b1:
	TX_FAR _SchoolText_1d5b1
	db "@"
	
SchoolText10:
    TX_ASM
    ld hl, SchoolTrainerHeader0
    call TalkToTrainer
    jp TextScriptEnd

VermilionHouse2Text_560b1z:
	TX_FAR _VermilionHouse2Text_560b1z
	db "@"

VermilionHouse2Text_560b6z:
	TX_FAR _VermilionHouse2Text_560b6z
	TX_SFX_ITEM_2
	TX_FAR _VermilionHouse2Text_560bbz
	;bluemarkSCIENCEONlineTX_FAR _VermilionHouse2Text_560bbz
	db "@"

VermilionHouse2Text_560c0z:
	TX_FAR _VermilionHouse2Text_560c0z
	db "@"

VermilionHouse2Text_560c5z:
	TX_FAR _VermilionHouse2Text_560c5z
	db "@"

VermilionHouse2Text_560caz:
	TX_FAR _VermilionHouse2Text_560caz
	db "@"
	
SchoolText11:
	TX_FAR _SchoolText11
	db "@"
	
EndText1:
	TX_FAR _EndText1
	db "@"
	
EndText2:
	TX_FAR _EndText2
	db "@"
	
EndText3:
	TX_FAR _EndText3
	db "@"
	
EndText4:
	TX_FAR _EndText4
	db "@"
	
EndText5:
	TX_FAR _EndText5
	db "@"
	
EndText6:
	TX_FAR _EndText6
	db "@"
	
EndText7:
	TX_FAR _EndText7
	db "@"
	
SchoolText21:
    TX_ASM
    ld hl, SchoolTrainerHeader0
    call TalkToTrainer
    jp TextScriptEnd	
	
SchoolText22:
    TX_FAR _SchoolText2
    db "@"
 
SchoolBattleText1:
    TX_FAR _SSAnne10BattleText1
    db "@"
 
SchoolEndBattleText1:
    TX_FAR _SSAnne10EndBattleText1
    db "@"
 
SchoolAfterBattleText1:
	TX_ASM
	ld a, [wd728]
	bit 3, a
	jr nz, .asm_03ef5
	ld hl, VermilionHouse2Text_560b1z
	call PrintText
	jr nz, .asm_eb1b7
	lb bc, UNUSED_ITEM, 1
	call GiveItem
	jr nc, .BagFull
	ld hl, wd728
	set 3, [hl]
	ld hl, VermilionHouse2Text_560b6z
	jr .asm_5dd95
.BagFull
	ld hl, VermilionHouse2Text_560caz
	jr .asm_5dd95
.asm_eb1b7
	ld hl, VermilionHouse2Text_560c0z
	jr .asm_5dd95
.asm_03ef5
	ld hl, VermilionHouse2Text_560c5z
.asm_5dd95
	jr .asm_0b11d
.asm_0b11d
	call PrintText
	SetEvent EVENT_ENTERED_BLUES_HOUSE 
	jp TextScriptEnd
    db "@"




	