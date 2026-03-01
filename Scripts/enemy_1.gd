extends CharacterBody2D

@export var player : PlayerController

const speed = 300.0

@onready var nav: NavigationAgent2D = $Nav


func _physics_process(delta: float) -> void:
	nav.target_position = player.global_position

	var dir = to_local(nav.get_next_path_position()).normalized()
	velocity = dir * speed

	move_and_slide()
