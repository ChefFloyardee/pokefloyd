IndigoPlateauLobby_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	ret z
	ResetEvent EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH
	ld hl, wBeatLorelei
	bit 1, [hl]
	res 1, [hl]
	ret z
	; Elite 4 events
	ResetEventRange ELITE4_EVENTS_START, EVENT_LANCES_ROOM_LOCK_DOOR
	ret

IndigoPlateauLobby_TextPointers:
	dw IndigoHealNurseText
	dw IndigoPlateauLobbyText2
	dw IndigoPlateauLobbyText3
	dw IndigoCashierText
	dw IndigoTradeNurseText
	dw SilphCo7Text11
	dw SilphCo7Text122
	dw SilphCo7Text133
	dw SilphCo7Text144
	dw SilphCo7Text155
	dw SilphCo7Text166

IndigoHealNurseText:
	TX_POKECENTER_NURSE

IndigoPlateauLobbyText2:
	TX_FAR _IndigoPlateauLobbyText2
	db "@"

IndigoPlateauLobbyText3:
	TX_FAR _IndigoPlateauLobbyText3
	db "@"

IndigoTradeNurseText:
	TX_CABLE_CLUB_RECEPTIONIST
	
SilphCo7Text11:
; lapras guy
	TX_ASM
	ld a, HS_INDIGO_PLATEAU_LOBBY_1
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, [wd72e]
	bit 0, a ; got lapras?
	jr z, .givelapras
	CheckEvent EVENT_FOLLOWED_OAK_INTO_LAB
	jr nz, .savedsilph
	ld hl, .LaprasGuyText
	call PrintText
	jr .done
.givelapras
	ld hl, .MeetLaprasGuyText
	call PrintText
	lb bc, WARTORTLE_2, 70
	call GivePokemon
	jr nc, .done
	ld a, [wSimulatedJoypadStatesEnd]
	and a
	call z, WaitForTextScrollButtonPress
	call EnableAutoTextBoxDrawing
	ld hl, .HeresYourLaprasText
	call PrintText
	ld hl, wd72e
	set 0, [hl]
	jr .done
.savedsilph
	ld hl, .LaprasGuySavedText
	call PrintText
.done
	jp TextScriptEnd

.MeetLaprasGuyText
	TX_FAR _MeetLaprasGuyText
	db "@"

.HeresYourLaprasText
	TX_FAR _HeresYourLaprasText
	db "@"

.LaprasGuyText
	TX_FAR _LaprasGuyText
	db "@"

.LaprasGuySavedText
	TX_FAR _LaprasGuySavedText
	db "@"
	
SilphCo7Text122:
TX_ASM
	lb bc, POLIWRATH, 68
	call GivePokemon
	jr nc, .asm_24365
	ld a, HS_INDIGO_PLATEAU_LOBBY_3
	ld [wMissableObjectIndex], a
	predef HideObject
.asm_24365
	jp TextScriptEnd
	
SilphCo7Text133:
TX_ASM
	lb bc, PORYGON, 66
	call GivePokemon
	jr nc, .asm_24365
	ld a, HS_INDIGO_PLATEAU_LOBBY_4
	ld [wMissableObjectIndex], a
	predef HideObject
.asm_24365
	jp TextScriptEnd
	
SilphCo7Text144:
TX_ASM
	lb bc, SNORLAX, 64
	call GivePokemon
	jr nc, .asm_24365
	ld a, HS_INDIGO_PLATEAU_LOBBY_5
	ld [wMissableObjectIndex], a
	predef HideObject
.asm_24365
	jp TextScriptEnd
	
SilphCo7Text155:
TX_ASM
	lb bc, MACHAMP, 62
	call GivePokemon
	jr nc, .asm_24365
	ld a, HS_INDIGO_PLATEAU_LOBBY_2
	ld [wMissableObjectIndex], a
	predef HideObject
.asm_24365
	jp TextScriptEnd
	
SilphCo7Text166:
TX_ASM
	lb bc, GOLDUCK, 60
	call GivePokemon
	jr nc, .asm_24365
	ld a, HS_INDIGO_PLATEAU_LOBBY_6
	ld [wMissableObjectIndex], a
	predef HideObject
.asm_24365
	jp TextScriptEnd
