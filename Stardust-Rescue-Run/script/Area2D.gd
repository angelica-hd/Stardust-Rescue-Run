extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var area_effect_velocity:Vector2

var bodies_within = get_overlapping_bodies()

func _body_entered(body):
	if("area_effect_velocity" in body):
		bodies_within.append(body)
		body.area_effect_velocity = Vector2(-50.0, 0.0)

func _body_exited(body):
	if(body in bodies_within):
		bodies_within.erase(body)
		body.area_effect_velocity = Vector2.ZERO
		

