extends MarginContainer
@onready var menuu = %menuu
@onready var restart = %restart

	
func _ready():
	menuu.pressed.connect(_on_menuu_pressed)
	restart.pressed.connect(_on_restart_pressed)


func _on_menuu_pressed():
	$Confirm.play()
	await($Confirm.finished)
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
	
func _on_restart_pressed():
	$Confirm.play()
	await($Confirm.finished)
	Game.set_level(2)
	get_tree().change_scene_to_file("res://scenes/nivel2.tscn")
