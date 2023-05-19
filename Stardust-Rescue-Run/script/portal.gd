extends Area2D
@onready var portal_animate = $portal_animate

func _ready():
	#$Icon.texture = texturas[tipo_monito]
	portal_animate.play("portal1")
	pass # Replace with function body.

func _on_portal_body_entered(body):
	if body.name == "SPACESHIP":
		get_tree().change_scene_to_file("res://scenes/win_menu.tscn")
