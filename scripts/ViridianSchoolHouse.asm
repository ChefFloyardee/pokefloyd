ViridianSchoolHouse_Script:
	jp EnableAutoTextBoxDrawing

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

SchoolText1:
	TX_FAR _SchoolText1
	db "@"

SchoolText2:
	TX_FAR _SchoolText2
	db "@"

SchoolText3:
	TX_FAR _SchoolText3
	db "@"

SchoolText4:
	TX_FAR _SchoolText4
	db "@"
	
SchoolText5:
	TX_FAR _SchoolText5
	db "@"
	
SchoolText6:
	TX_FAR _SchoolText6
	db "@"
	
SchoolText7:
	TX_FAR _SchoolText7
	db "@"
	
SchoolText8:
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




	