db DEX_WARTORTLE_3 ; pokedex id
db 79 ; base hp
db 83 ; base attack
db 100 ; base defense
db 78 ; base speed
db 85 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 210 ; base exp yield
INCBIN "pic/bmon/wartortle3.pic",0,1 ; 66, sprite dimensions
dw Wartortle3PicFront
dw Wartortle3PicBack
; attacks known at lvl 0
db TACKLE
db TRANSFORM
db ICE_BEAM
db PSYBEAM
db 3 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,20
	tmlearn 26,27,28,31,32
	tmlearn 33,34,40
	tmlearn 44
	tmlearn 50,53,54
db Bank(Wartortle3PicFront) ; padding
