extends Sprite2D

var speedmod = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_speed_button_pressed() -> void:
	MainGlobal.speed += speedmod + MainGlobal.round
	MainGlobal.round_over = false
