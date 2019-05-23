PewterMart_Object:
	db $0 ; border block

	db 2 ; warps
	warp 3, 7, 4, -1
	warp 4, 7, 4, -1

	db 0 ; signs

	db 9 ; objects
	object SPRITE_MART_GUY, 0, 5, STAY, RIGHT, 1 ; person
	object SPRITE_BUG_CATCHER, 3, 3, WALK, 1, 2 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 5, 2, STAY, NONE, 3 ; person
	object SPRITE_BALL, 2, 4, STAY, NONE, 4 ; person
	object SPRITE_BALL, 3, 5, STAY, NONE, 5 ; person
	object SPRITE_BALL, 4, 5, STAY, NONE, 6 ; person
	object SPRITE_BALL, 5, 5, STAY, NONE, 7 ; person
	object SPRITE_BALL, 6, 5, STAY, NONE, 8 ; person
	object SPRITE_BALL, 7, 5, STAY, NONE, 9 ; person

	; warp-to
	warp_to 3, 7, PEWTER_MART_WIDTH
	warp_to 4, 7, PEWTER_MART_WIDTH
