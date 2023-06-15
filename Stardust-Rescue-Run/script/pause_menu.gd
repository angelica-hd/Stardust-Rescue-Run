extends MarginContainer

@onready var sigue = %sigue
@onready var retry = %retry
@onready var exit2 = %exit2
@onready var confirm = $Confirm

	
func _ready():
	sigue.pressed.connect(_on_sigue_pressed)
	retry.pressed.connect(_on_retry_pressed)
	exit2.pressed.connect(_on_exit2_pressed)
	hide()
	
func _input(event):
	if event.is_action_pressed("Stop"):
		show()
		get_tree().paused = true
		
func _on_sigue_pressed():
	$Confirm.play()
	await($Confirm.finished)
	hide()
	get_tree().paused = false

func _on_retry_pressed():
	$Confirm.play()
	await($Confirm.finished)
	get_tree().reload_current_scene()
	get_tree().paused = false
	
func _on_exit2_pressed():
	$Confirm.play()
	await($Confirm.finished)
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
	get_tree().paused = false

