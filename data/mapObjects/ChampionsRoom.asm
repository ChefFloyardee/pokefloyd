ChampionsRoom_Object:
	db $3 ; border block

	db 4 ; warps
	warp 3, 7, 0, ROCKET_HIDEOUT_ELEVATOR
	warp 4, 7, 0, ROCKET_HIDEOUT_ELEVATOR
	warp 3, 0, 0, HALL_OF_FAME
	warp 4, 0, 0, HALL_OF_FAME

	db 0 ; signs

	db 2 ; objects
	object SPRITE_SEEL, 4, 2, STAY, DOWN, 1 ; person
	object SPRITE_LAPRAS_GIVER, 3, 0, STAY, DOWN, 2 ; person

	; warp-to
	warp_to 3, 7, CHAMPIONS_ROOM_WIDTH ; LANCES_ROOM
	warp_to 4, 7, CHAMPIONS_ROOM_WIDTH ; LANCES_ROOM
	warp_to 3, 0, CHAMPIONS_ROOM_WIDTH ; HALL_OF_FAME
	warp_to 4, 0, CHAMPIONS_ROOM_WIDTH ; HALL_OF_FAME
