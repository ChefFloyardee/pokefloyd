IndigoPlateauLobby_Object:
	db $0 ; border block

	db 3 ; warps
	warp 7, 11, 0, -1
	warp 8, 11, 1, -1
	warp 8, 0, 0, LORELEIS_ROOM

	db 0 ; signs

	db 9 ; objects
	object SPRITE_NURSE, 7, 5, STAY, DOWN, 1 ; person
	object SPRITE_GYM_HELPER, 4, 9, STAY, RIGHT, 2 ; person
	object SPRITE_LASS, 5, 1, STAY, DOWN, 11 ; person
	object SPRITE_MART_GUY, 0, 5, STAY, RIGHT, 4 ; person
	object SPRITE_BALL, 5, 9, STAY, NONE, 6 ; person
	object SPRITE_BALL, 6, 9, STAY, NONE, 10 ; person
	object SPRITE_BALL, 7, 9, STAY, NONE, 7 ; person
	object SPRITE_BALL, 8, 9, STAY, NONE, 8 ; person
	object SPRITE_BALL, 8, 8, STAY, NONE, 9 ; person

	; warp-to
	warp_to 7, 11, INDIGO_PLATEAU_LOBBY_WIDTH
	warp_to 8, 11, INDIGO_PLATEAU_LOBBY_WIDTH
	warp_to 8, 0, INDIGO_PLATEAU_LOBBY_WIDTH ; LORELEIS_ROOM
