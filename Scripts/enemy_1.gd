extends CharacterBody2D

@export var player : PlayerController

const speed = 300.0

@onready var nav: NavigationAgent2D = $Nav

var health = 2

func _physics_process(delta: float) -> void:
	nav.target_position = player.global_position

	var dir = global_position.direction_to(player.global_position)
	velocity = dir * speed

	move_and_slide()
