extends Sprite2D

var damagemod = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_damage_button_pressed() -> void:
	MainGlobal.damage += damagemod + MainGlobal.round
	MainGlobal.round_over = false
