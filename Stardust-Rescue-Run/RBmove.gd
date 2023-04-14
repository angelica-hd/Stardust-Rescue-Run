extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var pos = position


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _physics_process(delta): # FUNCIONA A VECES, CON PHYSICS PROCESS FUNCIONA SIEMPRE PERO EL PROFE DIJO QUE SE OCUPABA ESTE
	move()
	
	# if Input.is_action_just_pressed("ui_accept"):
	# 	for body in $Area2D.get_overlapping_bodies():
	# 		if body != $SPACESHIP:
	# 			body.hide()

func move():
	if Input.is_action_pressed('ui_right'):
		apply_central_impulse(Vector2(4, 0))
	
	if Input.is_action_pressed('ui_left'):
		apply_central_impulse(Vector2(-4,0))
	
	if Input.is_action_pressed('ui_up'):
		apply_central_impulse(Vector2(0, -4))
	
	if Input.is_action_pressed('ui_down'):
		apply_central_impulse(Vector2(0, 4))

