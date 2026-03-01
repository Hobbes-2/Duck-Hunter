extends CharacterBody2D
class_name PlayerController


var speed = MainGlobal.speed
var health = MainGlobal.health

#Arm parts 
@onready var arm: CharacterBody2D = $Arm
@onready var hand: Node2D = $Arm/Hand
@onready var hand_sprite: Sprite2D = $Arm/HandSprite
@onready var label: Label = $Camera2D/Label
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
		#if get_local_mouse_position().x != 0 and get_local_mouse_position().y != 0:
			#currentBullet.pos = (get_local_mouse_position()/abs(get_local_mouse_position()))
		#elif get_local_mouse_position().x == 0:
			#currentBullet.pos = Vector2(0, get_local_mouse_position().y/abs(get_local_mouse_position().y))
		#elif get_local_mouse_position().y == 0:
			#currentBullet.pos = Vector2(get_local_mouse_position().x/abs(get_local_mouse_position().x), 0)
		var direction_to_mouse = currentBullet.position.direction_to(get_global_mouse_position()).normalized()
		currentBullet.look_at(direction_to_mouse)
		currentBullet.rotation_degrees = hand.rotation_degrees
		currentBullet.dir = direction_to_mouse
		get_parent().add_child(currentBullet)
		
	if health <= 0:
		get_tree().change_scene_to_file("res://Scenes/death.tscn")

		#print(get_local_mouse_position())
func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		pass

func _on_hitbox_body_entered(body):
	health -= 1
	print("dying")
