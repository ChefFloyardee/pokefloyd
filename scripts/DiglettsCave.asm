DiglettsCave_Script:
	jp EnableAutoTextBoxDrawing

DiglettsCave_TextPointers:
	dw SSAnne2Text11
	dw SSAnne2Text22
	dw SSAnne2Text33
	dw UndergroundPathEntranceRoute5Text12
	dw UndergroundPathEntranceRoute5Text13
	dw UndergroundPathEntranceRoute5Text14

SSAnne2Text11:
	TX_FAR _SSAnne2Text11
	db "@"
	
SSAnne2Text22:
	TX_FAR _SSAnne2Text22
	db "@"
	
SSAnne2Text33:
	TX_FAR _SSAnne2Text33
	db "@"
	
UndergroundPathEntranceRoute5Text12:
	TX_ASM
	ld a, $6
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	ld hl, UndergroundPathEntranceRoute5_5d6af
	ret
	
UndergroundPathEntranceRoute5Text13:
	TX_ASM
	ld a, $7
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	ld hl, UndergroundPathEntranceRoute5_5d6af
	ret
	
UndergroundPathEntranceRoute5Text14:
	TX_ASM
	ld a, $8
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	ld hl, UndergroundPathEntranceRoute5_5d6af
	ret