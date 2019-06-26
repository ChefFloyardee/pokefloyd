PewterPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing
	

PewterPokecenter_TextPointers:
	dw PewterHealNurseText
	dw PewterPokecenterText2
	dw PewterJigglypuffText
	dw PewterTradeNurseText
	dw UndergroundPathEntranceRoute5Text1
	dw BulbasaurText
	dw PewterPokecenterText3
	dw ViridianCityText66

PewterHealNurseText:
	TX_POKECENTER_NURSE

PewterPokecenterText2:
	TX_FAR _PewterPokecenterText2
	db "@"

PewterJigglypuffText:
	TX_ASM
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, .Text
	call PrintText
	StopAllMusic
	ld c, 32
	call DelayFrames
	ld hl, JigglypuffFacingDirections
	ld de, wJigglypuffFacingDirections
	ld bc, JigglypuffFacingDirectionsEnd - JigglypuffFacingDirections
	call CopyData

	ld a, [wSprite03StateData1ImageIndex]
	ld hl, wJigglypuffFacingDirections
.findMatchingFacingDirectionLoop
	cp [hl]
	inc hl
	jr nz, .findMatchingFacingDirectionLoop
	dec hl
	push hl
	ld c, BANK(Music_JigglypuffSong)
	ld a, MUSIC_JIGGLYPUFF_SONG
	call PlayMusic
	pop hl
.loop
	ld a, [hl]
	ld [wSprite03StateData1ImageIndex], a

; rotate the array
	push hl
	ld hl, wJigglypuffFacingDirections
	ld de, wJigglypuffFacingDirections - 1
	ld bc, JigglypuffFacingDirectionsEnd - JigglypuffFacingDirections
	call CopyData
	ld a, [wJigglypuffFacingDirections - 1]
	ld [wJigglypuffFacingDirections + 3], a
	pop hl

	ld c, 24
	call DelayFrames

	ld a, [wChannelSoundIDs]
	ld b, a
	ld a, [wChannelSoundIDs + Ch1]
	or b
	jr nz, .loop

	ld c, 48
	call DelayFrames
	call PlayDefaultMusic
	jp TextScriptEnd

.Text
	TX_FAR _PewterJigglypuffText
	db "@"

JigglypuffFacingDirections:
	db $30 | SPRITE_FACING_DOWN
	db $30 | SPRITE_FACING_LEFT
	db $30 | SPRITE_FACING_UP
	db $30 | SPRITE_FACING_RIGHT
JigglypuffFacingDirectionsEnd:

PewterTradeNurseText:
	TX_CABLE_CLUB_RECEPTIONIST
	
UndergroundPathEntranceRoute5Text1:
	TX_ASM
	ld a, $9
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	ld hl, UndergroundPathEntranceRoute5_5d6af
	ret
	
BulbasaurText:
	TX_ASM
	ld hl, BulbasaurText_1d5b1
	call PrintText
	ld a, IVYSAUR
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
	
BulbasaurText_1d5b1:
	TX_FAR _BulbasaurText_1d5b1
	db "@"

PewterPokecenterText3:
	TX_FAR _PewterPokecenterText3
	db "@"
	
ViridianCityText66:
	TX_ASM
	CheckEvent EVENT_GOT_TM42
	jr nz, .asm_4e5a0
	lb bc, POKE_BALL, 1
	call GiveItem
	jr nc, .BagFull
	ld hl, ReceivedTM42Text6
	call PrintText
	jr .asm_3c73c
.BagFull
	ld hl, TM42NoRoomText6
	call PrintText
	jr .asm_3c73c
.asm_4e5a0
.asm_3c73c
	jp TextScriptEnd

ViridianCityText_191ca6:
	TX_FAR _ViridianCityText_191ca6
	db "@"

ReceivedTM42Text6:
	TX_FAR _ReceivedTM42Text6
	TX_SFX_ITEM_2
	db "@"

TM42Explanation6:
	TX_FAR _TM42Explanation6
	db "@"

TM42NoRoomText6:
	TX_FAR _TM42NoRoomText6
	db "@"	
