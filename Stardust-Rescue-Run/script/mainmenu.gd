extends MarginContainer

@onready var start = %start
@onready var exit = %exit
@onready var credits = %credits

# Called when the node enters the scene tree for the first time.
func _ready():
	start.pressed.connect(_on_start_pressed)
	exit.pressed.connect(_on_exit_pressed)
	credits.pressed.connect(_on_credits_pressed)
	
func _on_start_pressed():
	Game.next_level()

func _on_exit_pressed():
	get_tree().quit()
	
func _on_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
