CinnabarGym_Object:
	db $2e ; border block

	db 3 ; warps
	warp 16, 17, 2, PEWTER_CITY
	warp 17, 17, 2, PEWTER_CITY
	warp 2, 1, 0, PALLET_TOWN ; staircase

	db 1 ; signs
	sign 1, 3, 15 ; FuchsiaHouse2Text4

	db 10 ; objects
	object SPRITE_FAT_BALD_GUY, 5, 3, STAY, DOWN, 1, OPP_BROCK, 1
	object SPRITE_GYM_HELPER, 16, 13, STAY, DOWN, 9 ; person
	object SPRITE_MART_GUY, 17, 8, STAY, DOWN, 3, OPP_SUPER_NERD, 9
	object SPRITE_BLACK_HAIR_BOY_1, 11, 4, STAY, DOWN, 4, OPP_JR_TRAINER_M, 10
	object SPRITE_LASS, 11, 8, STAY, DOWN, 5, OPP_COOLTRAINER_F, 9
	object SPRITE_BLACK_HAIR_BOY_2, 11, 14, STAY, DOWN, 6, OPP_POKEMANIAC, 8
	object SPRITE_GIRL, 3, 14, STAY, DOWN, 7, OPP_BEAUTY, 16
	object SPRITE_OAK_AIDE, 3, 8, STAY, DOWN, 8, OPP_SCIENTIST, 14
	object SPRITE_BRUNETTE_GIRL, 18, 2, STAY, LEFT, 13, OPP_LASS, 19
	object SPRITE_SWIMMER, 5, 2, STAY, DOWN, 10 ; person
	
	
	
	; warp-to
	warp_to 16, 17, CINNABAR_GYM_WIDTH
	warp_to 17, 17, CINNABAR_GYM_WIDTH
	warp_to 2, 1, CINNABAR_GYM_WIDTH ; PALLET_TOWN
