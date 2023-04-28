extends Area2D

@onready var area = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CollisionShape2D.shape.radius += 0.5

func _input(event):
	#for body in area.get_overlapping_bodies():
	#	body.queue_free()
	pass

func destroy(body):
	
	pass # Replace with function body.


func _on_body_entered(body):
	body.queue_free()
	pass # Replace with function body.
