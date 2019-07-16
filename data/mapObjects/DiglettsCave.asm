DiglettsCave_Object:
	db $19 ; border block

	db 3 ; warps
	warp 25, 15, 2, DIGLETTS_CAVE_ROUTE_2
	warp 37, 31, 2, DIGLETTS_CAVE_ROUTE_11
	warp 18, 27, 3, PALLET_TOWN

	db 3 ; signs
	sign 13, 27, 1 ; VidCityText1
	sign 13, 17, 2 ; VidCityText1
	sign 25, 25, 3 ; VidCityText1

	db 4 ; objects
	object SPRITE_MEDIUM, 18, 25, STAY, DOWN, 4 ; person
	object SPRITE_MEDIUM, 17, 26, STAY, RIGHT, 5 ; person
	object SPRITE_MEDIUM, 19, 26, STAY, LEFT, 6 ; person
	object SPRITE_OMANYTE, 18, 26, STAY, NONE, 1 ; person

	; warp-to
	warp_to 25, 15, DIGLETTS_CAVE_WIDTH ; DIGLETTS_CAVE_ROUTE_2
	warp_to 37, 31, DIGLETTS_CAVE_WIDTH ; DIGLETTS_CAVE_ROUTE_11
	warp_to 18, 27, DIGLETTS_CAVE_WIDTH ; PALLET_TOWN
