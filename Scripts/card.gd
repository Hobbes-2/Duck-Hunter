extends CharacterBody2D

@export var speedmod : int
@export var damagemod : int
@export var fireratemod : int
@export var healthmod : int
#@onready var damage_card: Sprite2D = $Icon/DamageCard
#@onready var health_card: Sprite2D = $Icon/HealthCard
#@onready var firerate_card: Sprite2D = $Icon/FirerateCard
#@onready var speed_card: Sprite2D = $Icon/SpeedCard
var DAMAGE_CARD = preload("res://Scenes/Cards/damage_card.tscn")
var FIRERATE_CARD = preload("res://Scenes/Cards/firerate_card.tscn")
var HEALTH_CARD = preload("res://Scenes/Cards/health_card.tscn")
var SPEED_CARD = preload("res://Scenes/Cards/speed_card.tscn")

var types: Array = [DAMAGE_CARD,FIRERATE_CARD,HEALTH_CARD,SPEED_CARD]
#var card1real
#var card2real
#var card3real
@onready var spawn_point_1: Node2D = $SpawnPoint1
@onready var spawn_point_2: Node2D = $SpawnPoint2
@onready var spawn_point_3: Node2D = $SpawnPoint3

func _ready() -> void:
	setup()

func setup():
	var card1 = types[randi_range(0, len(types) - 1)].instantiate()
	var card2 = types[randi_range(0, len(types) - 1)].instantiate()
	var card3 = types[randi_range(0, len(types) - 1)].instantiate()

	#print(card1, card2, card3)

	card1.show()
	card2.show()
	card3.show()

	print(spawn_point_1.global_position)
	print(card1.global_position)

	card1.global_position = spawn_point_1.global_position
	card2.global_position = spawn_point_2.global_position
	card3.global_position = spawn_point_3.global_position

	#if card1 == card2:
		#card2 = types[randi_range(0, len(types) - 1)]
		#return
	#if card1 == card3:
		#card3 = types[randi_range(0, len(types) - 1)]
		#return
	#if card3 == card2:
		#card2 = types[randi_range(0, len(types) - 1)]
		#return
	#damage_card.hide()
	#health_card.hide()
	#firerate_card.hide()
	#speed_card.hide()
#
	#if card1 == "DamageCard":
		#damage_card.show()
		#card1real = damage_card
	#elif card1 == "HealthCard":
		#health_card.show()
		#card1real = health_card
	#elif card1 == "FirerateCard":
		#firerate_card.show()
		#card1real = firerate_card
	#elif card1 == "SpeedCard":
		#speed_card.show()
		#card1real = speed_card
#
	#if card2 == "DamageCard":
		#damage_card.show()
		#card2real = damage_card
	#elif card2 == "HealthCard":
		#health_card.show()
		#card2real = health_card
	#elif card2 == "FirerateCard":
		#firerate_card.show()
		#card2real = firerate_card
	#elif card2 == "SpeedCard":
		#speed_card.show()
		#card2real = speed_card
#
	#if card3 == "DamageCard":
		#damage_card.show()
		#card3real = damage_card
	#elif card3 == "HealthCard":
		#health_card.show()
		#card3real = health_card
	#elif card3 == "FirerateCard":
		#firerate_card.show()
		#card3real = firerate_card
	#elif card3 == "SpeedCard":
		#speed_card.show()
		#card3real = speed_card
#
	#card1real.global_position = spawn_point_1.global_position
	#card2real.global_position = spawn_point_2.global_position
	#card3real.global_position = spawn_point_3.global_position
#
	#if card1 == "DamageCard":
		#damagemod = randi_range(1, 10)
		#damage_card.get_child(0).text = "Damage: +" + str(damagemod + MainGlobal.round)
	#elif card1 == "HealthCard":
		#healthmod = randi_range(1, 10)
		#health_card.get_child(0).text = "Health: +" + str(healthmod + MainGlobal.round)
	#elif card1 == "FirerateCard":
		#fireratemod = randi_range(1, 10)
		#firerate_card.get_child(0).text = "Firerate: +" + str(fireratemod + MainGlobal.round)
	#elif card1 == "SpeedCard":
		#speedmod = randi_range(1, 10)
		#speed_card.get_child(0).text = "Speed: +" + str(speedmod + MainGlobal.round)
#
	#if card2 == "DamageCard":
		#damagemod = randi_range(1, 10)
		#damage_card.get_child(0).text = "Damage: +" + str(damagemod + MainGlobal.round)
	#elif card2 == "HealthCard":
		#healthmod = randi_range(1, 10)
		#health_card.get_child(0).text = "Health: +" + str(healthmod + MainGlobal.round)
	#elif card2 == "FirerateCard":
		#fireratemod = randi_range(1, 10)
		#firerate_card.get_child(0).text = "Firerate: +" + str(fireratemod + MainGlobal.round)
	#elif card2 == "SpeedCard":
		#speedmod = randi_range(1, 10)
		#speed_card.get_child(0).text = "Speed: +" + str(speedmod + MainGlobal.round)
#
	#if card3 == "DamageCard":
		#damagemod = randi_range(1, 10)
		#damage_card.get_child(0).text = "Damage: +" + str(damagemod + MainGlobal.round)
	#elif card3 == "HealthCard":
		#healthmod = randi_range(1, 10)
		#health_card.get_child(0).text = "Health: +" + str(healthmod + MainGlobal.round)
	#elif card3 == "FirerateCard":
		#fireratemod = randi_range(1, 10)
		#firerate_card.get_child(0).text = "Firerate: +" + str(fireratemod + MainGlobal.round)
	#elif card3 == "SpeedCard":
		#speedmod = randi_range(1, 10)
		#speed_card.get_child(0).text = "Speed: +" + str(speedmod + MainGlobal.round)
#
#
#func _on_damage_button_pressed() -> void:
	#MainGlobal.damage += damagemod + MainGlobal.round
	#MainGlobal.round_over = false
#
#func _on_health_button_pressed() -> void:
	#MainGlobal.health += healthmod + MainGlobal.round
	#MainGlobal.round_over = false
#
#func _on_firerate_button_pressed() -> void:
	#MainGlobal.fire_rate += fireratemod + MainGlobal.round
	#MainGlobal.round_over = false
#
#
#func _on_speed_button_pressed() -> void:
	#MainGlobal.speed += speedmod + MainGlobal.round
	#MainGlobal.round_over = false
#
#func _physics_process(delta: float) -> void:
	#if MainGlobal.round_over == true:
		#setup()
