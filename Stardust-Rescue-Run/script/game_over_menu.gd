extends MarginContainer

@onready var retry = %Retry
@onready var exit = %exit
@onready var confirm = $Confirm

	
func _ready():
	retry.pressed.connect(_on_retry_pressed)
	exit.pressed.connect(_on_exit_pressed)


func _on_retry_pressed():
	$Confirm.play()
	await($Confirm.finished)
	Game.retry_level()
	
func _on_exit_pressed():
	$Confirm.play()
	await($Confirm.finished)
	get_tree().quit()

