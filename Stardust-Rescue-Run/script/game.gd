extends Node

@export var levels : Array[PackedScene]
@export var level_monitos : Array[int] = [0, 0, 0, 0] 

var level = -1
#const blast_scene = preload("res://Blast.gd")

func first_level():
	level = 0
	get_tree().change_scene_to_packed(levels[0])
	
func next_level():
	if levels.size() >= level+1:
		level+=1
		get_tree().change_scene_to_packed(levels[level])

func retry_level():
	if levels.size() >= level+1:
		get_tree().change_scene_to_packed(levels[level])
		

func get_level_monitos():
	return level_monitos[level]
	
func get_level():
	return level+1
	
func set_level(lvl):
	level = lvl
