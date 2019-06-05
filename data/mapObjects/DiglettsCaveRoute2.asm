DiglettsCaveRoute2_Object:
	db $7d ; border block

	db 3 ; warps
	warp 2, 7, 3, PEWTER_CITY
	warp 3, 7, 3, PEWTER_CITY
	warp 2, 0, 0, DIGLETTS_CAVE

	db 1 ; signs
	sign 1, 1, 3 ; VidCityText1

	db 2 ; objects
	object SPRITE_BLUE, 2, -5, STAY, NONE, 1 ; person
	object SPRITE_BLUE, 2, -5, STAY, NONE, 2 ; person

	; warp-to
	warp_to 2, 7, DIGLETTS_CAVE_ROUTE_2_WIDTH
	warp_to 3, 7, DIGLETTS_CAVE_ROUTE_2_WIDTH
	warp_to 2, 0, DIGLETTS_CAVE_ROUTE_2_WIDTH ; DIGLETTS_CAVE_ROUTE_11
