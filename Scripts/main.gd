extends Node2D

var totalEnemies = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in len(get_children()):
		if get_child(i).is_in_group("Spawning"):
			totalEnemies += get_child(i).enemiesToSpawn
	print(totalEnemies)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if totalEnemies <= 0:
		MainGlobal.round += 1
		MainGlobal.round_over = true
