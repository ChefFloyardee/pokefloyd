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
	TX_FAR _SchoolText10
	db "@"




	