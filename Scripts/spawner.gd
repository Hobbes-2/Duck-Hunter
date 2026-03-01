extends Node2D
class_name Spawner

@export var enemiesToSpawn : int
@export var rate : float
@export var player : PlayerController
var enemy = preload("res://Scenes/enemy_1.tscn")
@export var yes : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MainGlobal.reset()
	spawn()

func spawn():
	for i in enemiesToSpawn:
		var currEnemy = enemy.instantiate()
		currEnemy.global_position = global_position
		currEnemy.player = player
		add_child(currEnemy)
		await get_tree().create_timer(rate + randf_range(-0.5, 0.5)).timeout

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if MainGlobal.round_over == true:
		enemiesToSpawn += MainGlobal.round
		spawn()
		if yes:
			MainGlobal.round_over = false
			MainGlobal.round += 1
