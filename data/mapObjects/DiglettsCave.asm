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

	db 0 ; objects

	; warp-to
	warp_to 25, 15, DIGLETTS_CAVE_WIDTH ; DIGLETTS_CAVE_ROUTE_2
	warp_to 37, 31, DIGLETTS_CAVE_WIDTH ; DIGLETTS_CAVE_ROUTE_11
	warp_to 18, 27, DIGLETTS_CAVE_WIDTH ; PALLET_TOWN
