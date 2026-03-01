extends CharacterBody2D
class_name PlayerController


var speed = MainGlobal.speed

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
		var bullspeed = 200
		currentBullet.global_position = hand.global_position
		#if get_local_mouse_position().x != 0 and get_local_mouse_position().y != 0:
			#currentBullet.pos = (get_local_mouse_position()/abs(get_local_mouse_position()))
		#elif get_local_mouse_position().x == 0:
			#currentBullet.pos = Vector2(0, get_local_mouse_position().y/abs(get_local_mouse_position().y))
		#elif get_local_mouse_position().y == 0:
			#currentBullet.pos = Vector2(get_local_mouse_position().x/abs(get_local_mouse_position().x), 0)
		currentBullet.apply_impulse(Vector2(), Vector2(bullspeed, 0).rotated(rotation))
		add_child(currentBullet)

		print(get_local_mouse_position())
func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		pass
