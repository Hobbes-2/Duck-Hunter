extends CharacterBody2D


var speed = 300.0

#Arm parts 
@onready var arm: Node2D = $Arm
@onready var hand: Node2D = $Arm/Hand

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		hand.look_at(Vector2(1, 1))
