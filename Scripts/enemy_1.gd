extends CharacterBody2D

@export var player : PlayerController

const speed = 125.0

@onready var nav: NavigationAgent2D = $Nav
var label

var health = 3

func _ready() -> void:
	health += MainGlobal.round
	label = player.label

func _physics_process(delta: float) -> void:
	nav.target_position = player.global_position

	var dir = global_position.direction_to(player.global_position)
	velocity = dir * speed

	move_and_slide()

	if health <= 0:
		MainGlobal.flowers += 1
		#get_parent().get_parent().totalEnemies -= 1
		#print(get_parent().totalEnemies)
		queue_free()


	label.text = "Enemies Killed: " + str(MainGlobal.flowers)

func _on_hitbox_body_entered(body):
	if !body.is_in_group("Enemy"):
		health -= 1
		#body.queue_free()
