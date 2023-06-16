class_name Planeta
extends StaticBody2D


@export var vel_rotacion : float = 1.0
@onready var animation_player = $AnimationPlayer
@onready var sprite = $Sprite
@onready var planeta_1 = $Planeta1
var player

# Called when the node enters the scene tree for the first time.
func _ready():
	#planeta_1.body_entered.conect(_on_body_entered)
	animation_player.play("rotación")
	
	pass # Replace with function body.


		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#sprite.rotation += vel_rotacion * delta
	pass
