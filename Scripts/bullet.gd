extends CharacterBody2D
class_name Bullet
var speed = 800
var pos
var dir
func _physics_process(delta: float) -> void:
	velocity = dir * speed
	print(velocity)

	move_and_slide()
