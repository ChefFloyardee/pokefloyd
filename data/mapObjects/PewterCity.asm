PewterCity_Object:
	db $a ; border block

	db 7 ; warps
	warp 14, 7, 0, MUSEUM_1F
	warp 19, 5, 2, MUSEUM_1F
	warp 16, 17, 0, CINNABAR_GYM
	warp 2, 33, 0, DIGLETTS_CAVE_ROUTE_2
	warp 23, 17, 0, PEWTER_MART
	warp 7, 29, 0, VIRIDIAN_SCHOOL_HOUSE
	warp 13, 25, 0, PEWTER_POKECENTER
	

	db 7 ; signs
	sign 5, 29, 13 ; PewterCityText6
	sign 33, 19, 7 ; PewterCityText7
	sign 24, 17, 8 ; MartSignText
	sign 14, 25, 9 ; PokeCenterSignText
	sign 15, 9, 10 ; PewterCityText10
	sign 17, 19, 11 ; PewterCityText11
	sign 25, 23, 12 ; PewterCityText12

	db 7 ; objects
	object SPRITE_FISHER2, 15, 30, STAY, RIGHT, 16 ; person
	object SPRITE_BUG_CATCHER, 35, 16, STAY, DOWN, 5 ; person
	object SPRITE_BUG_CATCHER, 27, 17, STAY, NONE, 3 ; person
	object SPRITE_BRUNETTE_GIRL, 17, 21, STAY, LEFT, 18, 4 ; person
	object SPRITE_BUG_CATCHER, 8, 20, STAY, NONE, 19 ; person
	object SPRITE_SEEL, 15, 31, STAY, NONE, 15 ; person
	object SPRITE_QUADRUPED2, 15, 29, STAY, RIGHT, 17 ; person

	; warp-to
	warp_to 14, 7, PEWTER_CITY_WIDTH ; MUSEUM_1F
	warp_to 19, 5, PEWTER_CITY_WIDTH ; MUSEUM_1F
	warp_to 16, 17, PEWTER_CITY_WIDTH ; CINNABAR_GYM
	warp_to 2, 33, PEWTER_CITY_WIDTH ; DIGLETTS_CAVE_ROUTE_2
	warp_to 23, 17, PEWTER_CITY_WIDTH ; PEWTER_MART
	warp_to 7, 29, PEWTER_CITY_WIDTH ; VIRIDIAN_SCHOOL_HOUSE
	warp_to 13, 25, PEWTER_CITY_WIDTH ; PEWTER_POKECENTER
