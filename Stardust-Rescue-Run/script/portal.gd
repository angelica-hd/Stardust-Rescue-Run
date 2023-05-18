extends Area2D

func _on_portal_body_entered(body):
	if body.name == "SPACESHIP":
		get_tree().change_scene_to_file("res://scenes/win_menu.tscn")
