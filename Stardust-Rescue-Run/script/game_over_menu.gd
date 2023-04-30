extends MarginContainer

@onready var retry = %Retry
@onready var exit = %exit

	
func _ready():
	retry.pressed.connect(_on_retry_pressed)
	exit.pressed.connect(_on_exit_pressed)


func _on_retry_pressed():
	get_tree().change_scene_to_file("res://scenes/prueba1.tscn")
	
func _on_exit_pressed():
	get_tree().quit()
