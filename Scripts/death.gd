extends Label

@onready var yes_button: Button = $YesButton
@onready var no_button: Button = $NoButton
@onready var label: Label = $Label
@onready var label_2: Label = $Label2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = "Final Wave: " + str(MainGlobal.round)
	label_2.text = "Final Score: " + str(MainGlobal.flowers)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_yes_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/title_page.tscn")
	



func _on_no_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/title_page.tscn")
