extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var pos = position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _integrate_forces(delta):
	move()

func move():
	if Input.is_action_pressed('ui_right'):
		apply_central_impulse(Vector2(4, 0))
	
	if Input.is_action_pressed('ui_left'):
		apply_central_impulse(Vector2(-4,0))
	
	if Input.is_action_pressed('ui_up'):
		apply_central_impulse(Vector2(0, -4))
	
	if Input.is_action_pressed('ui_down'):
		apply_central_impulse(Vector2(0, 4))

