extends Node

@export var levels : Array[PackedScene]
var level = -1
#const blast_scene = preload("res://Blast.gd")

func next_level():
	if levels.size() >= level+1:
		level+=1
		get_tree().change_scene_to_packed(levels[level])

func retry_level():
	if levels.size() >= level+1:
		get_tree().change_scene_to_packed(levels[level])
