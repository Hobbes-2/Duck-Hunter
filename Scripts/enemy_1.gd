extends CharacterBody2D

@export var player : PlayerController

const speed = 30.0

@onready var nav: NavigationAgent2D = $Nav
var label

var health = 4

func _ready() -> void:
	label = player.label

func _physics_process(delta: float) -> void:
	nav.target_position = player.global_position

	var dir = global_position.direction_to(player.global_position)
	velocity = dir * speed

	move_and_slide()

	if health <= 0:
		queue_free()
		MainGlobal.flowers += 1


	label.text = "Flowers:" + str(MainGlobal.flowers)


func _on_hitbox_body_entered(body):
		health -= 1
		#body.queue_free()
