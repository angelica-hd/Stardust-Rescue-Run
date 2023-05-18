extends MarginContainer

@onready var retry = %Retry
@onready var exit = %exit
@onready var next = %Next

	
func _ready():
	retry.pressed.connect(_on_retry_pressed)
	exit.pressed.connect(_on_exit_pressed)
	next.pressed.connect(_on_next_pressed)

func _on_retry_pressed():
	get_tree().change_scene_to_file("res://scenes/prueba1.tscn")
	
func _on_exit_pressed():
	get_tree().quit()

func _on_next_pressed():
	get_tree().change_scene_to_file("res://scenes/nivel2.tscn")
