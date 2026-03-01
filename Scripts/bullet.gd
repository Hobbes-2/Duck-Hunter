extends CharacterBody2D

var speed = 5
var pos
func _physics_process(delta: float) -> void:
	velocity = pos * speed
	move_and_slide()
