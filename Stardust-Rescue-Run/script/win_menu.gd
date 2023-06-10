extends MarginContainer

@onready var retry = %Retry
@onready var exit = %exit
@onready var next = %Next

	
func _ready():
	retry.pressed.connect(_on_retry_pressed)
	exit.pressed.connect(_on_exit_pressed)
	next.pressed.connect(_on_next_pressed)

func _on_retry_pressed():
	Game.retry_level()
	
func _on_exit_pressed():
	get_tree().quit()

func _on_next_pressed():
	Game.next_level()
