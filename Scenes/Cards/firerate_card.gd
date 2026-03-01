extends Sprite2D

var fireratemod = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_firerate_button_pressed() -> void:
	MainGlobal.fire_rate += fireratemod + MainGlobal.round
	MainGlobal.round_over = false
