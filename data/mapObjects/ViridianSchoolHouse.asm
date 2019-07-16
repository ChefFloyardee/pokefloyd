ViridianSchoolHouse_Object:
	db $a ; border block

	db 2 ; warps
	warp 2, 7, 5, PEWTER_CITY
	warp 3, 7, 5, PEWTER_CITY

	db 1 ; signs
	sign 1, 0, 11 ; CeladonMart1Text2

	db 10 ; objects
	object SPRITE_BRUNETTE_GIRL, 3, 5, STAY, UP, 1 ; person
	object SPRITE_BUG_CATCHER, 4, 5, STAY, UP, 2 ; person
	object SPRITE_GIRL, 5, 3, STAY, LEFT, 8 ; person
	object SPRITE_GAMEBOY_KID, 2, 3, STAY, RIGHT, 4 ; person
	object SPRITE_YOUNG_BOY, 2, 5, STAY, UP, 6 ; person
	object SPRITE_LITTLE_GIRL, 5, 5, STAY, UP, 5 ; person
	object SPRITE_SEEL, 6, 1, STAY, DOWN, 9 ; person
	object SPRITE_BLACK_HAIR_BOY_1, 5, 4, STAY, LEFT, 3 ; person
	object SPRITE_LAPRAS_GIVER, 2, 1, STAY, DOWN, 10 ; person
	object SPRITE_LASS, 4, 1, STAY, DOWN, 7 ; person

	; warp-to
	warp_to 2, 7, VIRIDIAN_SCHOOL_HOUSE_WIDTH
	warp_to 3, 7, VIRIDIAN_SCHOOL_HOUSE_WIDTH
