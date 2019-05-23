DiglettsCaveRoute2_Object:
	db $7d ; border block

	db 3 ; warps
	warp 2, 7, 3, PEWTER_CITY
	warp 3, 7, 3, PEWTER_CITY
	warp 4, 7, 0, DIGLETTS_CAVE

	db 1 ; signs
	sign 1, 2, 11 ; VidCityText1

	db 1 ; objects
	object SPRITE_BLUE, 2, 2, STAY, NONE, 1 ; person

	; warp-to
	warp_to 2, 7, DIGLETTS_CAVE_ROUTE_2_WIDTH
	warp_to 3, 7, DIGLETTS_CAVE_ROUTE_2_WIDTH
	warp_to 4, 4, DIGLETTS_CAVE_ROUTE_2_WIDTH ; DIGLETTS_CAVE
