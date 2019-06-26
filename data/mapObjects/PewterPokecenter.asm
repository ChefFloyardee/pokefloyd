PewterPokecenter_Object:
	db $0 ; border block

	db 2 ; warps
	warp 3, 7, 6, -1
	warp 4, 7, 6, -1

	db 0 ; signs

	db 5 ; objects
	object SPRITE_NURSE, 3, 1, STAY, DOWN, 1 ; person
	object SPRITE_GIRL, 5, 3, STAY, LEFT, 7 ; person
	object SPRITE_MEDIUM, 11, 7, STAY, LEFT, 5 ; person
	object SPRITE_BULBASAUR, 1, 3, STAY, DOWN, 6 ; person
	object SPRITE_BALL, 11, 2, STAY, NONE, 8

	; warp-to
	warp_to 3, 7, PEWTER_POKECENTER_WIDTH
	warp_to 4, 7, PEWTER_POKECENTER_WIDTH
