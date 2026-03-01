extends Node2D
class_name Spawner

@export var enemiesToSpawn : int
@export var player : PlayerController
var enemy = preload("res://Scenes/enemy_1.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in enemiesToSpawn:
		var currEnemy = enemy.instantiate()
		currEnemy.global_position = global_position
		currEnemy.player = player
		add_child(currEnemy)
		await get_tree().create_timer(2.0).timeout


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
