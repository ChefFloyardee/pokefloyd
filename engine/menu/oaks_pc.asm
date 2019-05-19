OpenChefsPC:
	call SaveScreenTilesToBuffer2
	ld hl, AccessedChefsPCText
	call PrintText
	ld hl, GetDexRatedText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .closePC
	predef DisplayDexRating
.closePC
	ld hl, ClosedChefsPCText
	call PrintText
	jp LoadScreenTilesFromBuffer2

GetDexRatedText:
	TX_FAR _GetDexRatedText
	db "@"

ClosedChefsPCText:
	TX_FAR _ClosedChefsPCText
	TX_WAIT
	db "@"

AccessedChefsPCText:
	TX_FAR _AccessedChefsPCText
	db "@"
