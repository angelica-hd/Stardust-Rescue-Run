extends MarginContainer

@onready var backk = %backk

	
func _ready():
	backk.pressed.connect(_on_backk_pressed)
		
func _on_backk_pressed():
		get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
