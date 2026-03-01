extends CharacterBody2D
class_name Bullet
var speed = 800
var pos
var dir

var numberEntered = 0
var maxNum = 4
func _physics_process(delta: float) -> void:
	velocity = dir * speed

	move_and_slide()

	if numberEntered >= maxNum:
		queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:
	numberEntered += 1


func _on_lifespan_timeout() -> void:
	queue_free()
