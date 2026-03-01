extends CharacterBody2D

@export var player : PlayerController

const SPEED = 300.0

@onready var nav: NavigationAgent2D = $Nav

func _physics_process(delta: float) -> void:
	nav.target_position = player.global_position

	move_and_slide()
