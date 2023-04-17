extends RigidBody2D

@export_enum("Juan", "Juana") var tipo_monito : int
@export var texturas : Array

# Called when the node enters the scene tree for the first time.
func _ready():
	$Icon.texture = texturas[tipo_monito]
	pass # Replace with function body.


