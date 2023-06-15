extends MarginContainer

@onready var backk = %backk
@onready var confirm = $Confirm

	
func _ready():
	backk.pressed.connect(_on_backk_pressed)
		
func _on_backk_pressed():
	$Confirm.play()
	await($Confirm.finished)
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
