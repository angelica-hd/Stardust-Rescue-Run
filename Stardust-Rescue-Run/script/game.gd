extends Node

@export var levels : Array[PackedScene]
@export var arr_monitos : Array[PackedScene]
@export var arr_monitos_capturados : Array[PackedScene]
@export var cant_monitos = 0

var level = -1
#const blast_scene = preload("res://Blast.gd")

func next_level():
	arr_monitos_capturados.clear()
	if levels.size() >= level+1:
		level+=1
		get_tree().change_scene_to_packed(levels[level])

func retry_level():
	arr_monitos_capturados.clear()
	if levels.size() >= level+1:
		get_tree().change_scene_to_packed(levels[level])
		

func add_monitos(monito):
	if monito in arr_monitos:
		cant_monitos += 1
		arr_monitos_capturados.append(monito)
