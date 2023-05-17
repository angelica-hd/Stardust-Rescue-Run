class_name Monito
extends RigidBody2D

##@export_enum("Juan", "Juana") var tipo_monito : int
##@export var texturas : Array
@onready var animation_player = $AnimationPlayer
@onready var icon = $Icon

# Called when the node enters the scene tree for the first time.
func _ready():
	#$Icon.texture = texturas[tipo_monito]
	animation_player.play("monito1")
	pass # Replace with function body.


