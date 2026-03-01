extends CharacterBody2D

@export var speedmod : int
@export var damagemod : int
@export var fireratemod : int
@export var healthmod : int
@onready var damage_card: ColorRect = $Icon/DamageCard
@onready var health_card: ColorRect = $Icon/HealthCard
@onready var firerate_card: ColorRect = $Icon/FirerateCard
@onready var speed_card: ColorRect = $Icon/SpeedCard
@onready var card_back: ColorRect = $Icon/CardBack

var types: Array = ["DamageCard", "HealthCard", 
"FirerateCard", "SpeedCard"]
var card 

func _ready() -> void:
	card = types[randi_range(0, len(types) - 1)]
	damage_card.hide()
	health_card.hide()
	firerate_card.hide()
	speed_card.hide()

	if card == "DamageCard":
		damage_card.show()
	elif card == "HealthCard":
		health_card.show()
	elif card == "FirerateCard":
		firerate_card.show()
	elif card == "SpeedCard":
		speed_card.show()


func _on_button_pressed() -> void:
	if card == "DamageCard":
		damagemod = randi_range(1, 10)
		damage_card.get_child(0).text = "Damage: +" + str(damagemod + MainGlobal.round)
	elif card == "HealthCard":
		healthmod = randi_range(1, 10)
		health_card.get_child(0).text = "Health: +" + str(healthmod + MainGlobal.round)
	elif card == "FirerateCard":
		fireratemod = randi_range(1, 10)
		firerate_card.get_child(0).text = "Firerate: +" + str(fireratemod + MainGlobal.round)
	elif card == "SpeedCard":
		speedmod = randi_range(1, 10)
		speed_card.get_child(0).text = "Speed: +" + str(speedmod + MainGlobal.round)


func _on_damage_button_pressed() -> void:
	MainGlobal.damage += damagemod + MainGlobal.round
	MainGlobal.round_over = false

func _on_health_button_pressed() -> void:
	MainGlobal.health += healthmod + MainGlobal.round
	MainGlobal.round_over = false

func _on_firerate_button_pressed() -> void:
	MainGlobal.fire_rate += fireratemod + MainGlobal.round
	MainGlobal.round_over = false


func _on_speed_button_pressed() -> void:
	MainGlobal.speed += speedmod + MainGlobal.round
	MainGlobal.round_over = false
