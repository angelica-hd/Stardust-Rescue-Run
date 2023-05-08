extends Area2D

@onready var area = $"."
@onready var animation_player = $"../AnimationPlayer"
@onready var blast_2 = $"../Blast2"

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_player.play("boom")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CollisionShape2D.shape.radius += 0.5
	blast_2.scale.x +=0.01
	blast_2.scale.y +=0.01

func _input(event):
	#for body in area.get_overlapping_bodies():
	#	body.queue_free()
	pass

func destroy(body):
	
	pass # Replace with function body.


func _on_body_entered(body):
	body.queue_free()
	get_tree().change_scene_to_file("res://scenes/game_over_menu.tscn")
	pass # Replace with function body.
