extends CharacterBody2D

var speed = 500
var pos
var dir
func _physics_process(delta: float) -> void:
	velocity = dir * speed
	print(velocity)

	move_and_slide()
