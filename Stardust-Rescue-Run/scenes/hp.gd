extends MarginContainer

@onready var progress_bar = $ProgressBar

func set_fueld(value):
	progress_bar.value = value
	
