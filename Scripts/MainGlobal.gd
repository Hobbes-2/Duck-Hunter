extends Node

#Player vars
var health = 10
var speed = 500
var damage = 2
var fire_rate = 2
var flowers = 0


var round = 1

var round_over : bool = false

var BASEhealth = 5
var BASEspeed = 500
var BASEdamage = 2
var BASEfire_rate = 2
var BASEflowers = 0


var BASEround = 1

func reset():
	health = BASEhealth
	speed = BASEspeed
	damage = BASEdamage
	fire_rate = BASEfire_rate
	flowers = BASEflowers
	round = BASEround
	round_over = false
