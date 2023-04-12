extends MarginContainer

@onready var resume = %Resume
@onready var retry = %Retry
@onready var exit = %Exit


# Called when the node enters the scene tree for the first time.
func _ready():
	resume.pressed.connect(_on_resume_pressed)
	retry.pressed.connect(_on_retry_pressed)
	exit.pressed.connect(_on_exit_pressed)
	hide()
	
func _input(event):
	if event.is_action_pressed("pausa"):
		show()
		get_tree().paused = true

func _on_resume_pressed():
	hide()
	get_tree().paused = false
	
func _on_retry_pressed():
	get_tree().reload_current_scene()
	
func _on_exit_pressed():
	get_tree().change_scene_to_file("res://scenes/menu_1.tscn")
