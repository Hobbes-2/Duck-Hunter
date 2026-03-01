extends RigidBody2D

var speed = 500
var pos
func _physics_process(delta: float) -> void:
	apply_impulse(Vector2(100, 100), Vector2.ZERO)
