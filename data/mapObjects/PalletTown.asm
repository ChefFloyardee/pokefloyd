PalletTown_Object:
	db $b ; border block

	db 4 ; warps
	warp 12, 4, 2, CINNABAR_GYM; staircase
	warp 14, 4, 0, VIRIDIAN_NICKNAME_HOUSE
	warp 16, 4, 1, OAKS_LAB
	warp 8, 0, 0, LANCES_ROOM

	db 5 ; signs
	sign 13, 4, 11 ; PalletTownText4
	sign 17, 4, 7 ; PalletTownText5
	sign 17, 7, 8 ; PalletTownText6
	sign 11, 0, 8 ; PalletTownText7
	sign 9, 0, 9 ; PalletTownText7

	db 6 ; objects
	object SPRITE_FAT_BALD_GUY, 8, 5, STAY, NONE, 1 ; person
	object SPRITE_OAK_AIDE, 3, 8, WALK, 0, 2 ; person
	object SPRITE_BRUNETTE_GIRL, 11, 10, WALK, 0, 3 ; person
	object SPRITE_ROCKER, 9, 4, WALK, 0, 4 ; person
	object SPRITE_BOULDER, 9, 1, STAY, 0, 5 ; person
	object SPRITE_BLACK_HAIR_BOY_1, 17, 8, STAY, UP, 10 ; person

	; warp-to
	warp_to 12, 4, PALLET_TOWN_WIDTH ; CINNABAR_GYM
	warp_to 14, 4, PALLET_TOWN_WIDTH ; VIRIDIAN_NICKNAME_HOUSE
	warp_to 16, 4, PALLET_TOWN_WIDTH ; OAKS_LAB
	warp_to 8, 0, PALLET_TOWN_WIDTH ; LANCES_ROOM

