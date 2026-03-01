extends CharacterBody2D
class_name PlayerController


var speed = 300.0

#Arm parts 
@onready var arm: CharacterBody2D = $Arm
@onready var hand: Node2D = $Arm/Hand
@onready var hand_sprite: Sprite2D = $Arm/HandSprite
var bullet = preload("res://Scenes/bullet.tscn")

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:

#Left is -1, right is 1
	var directionLR := Input.get_axis("Left", "Right")
	var directionUD := Input.get_axis("Up", "Down")

	if directionLR or directionUD:
		velocity.x = directionLR * speed
		velocity.y = directionUD * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.y = move_toward(velocity.y, 0, speed)
	arm.look_at(get_global_mouse_position())
	hand.look_at(get_global_mouse_position())
	move_and_slide()


	if Input.is_action_just_pressed("Shoot"):
		var currentBullet = bullet.instantiate()
		currentBullet.global_position = hand.global_position
		currentBullet.pos = (get_global_mouse_position())
		add_child(currentBullet)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		pass
