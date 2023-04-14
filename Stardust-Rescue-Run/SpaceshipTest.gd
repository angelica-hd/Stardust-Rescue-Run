extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
# var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var g_scale:float = ProjectSettings.get("physics/2d/default_gravity")
var g:Vector2 = ProjectSettings.get("physics/2d/default_gravity_vector") * g_scale

var gravity = PhysicsServer2D.body_get_direct_state(get_rid())


var area_affect_velocity = Vector2(0.0,0.0)

func _physics_process(delta):
	# Add the gravity.
	# if not is_on_floor():
	velocity = Vector2()
	
	#velocity.x += gravity * delta
	#velocity.y += gravity * delta
	
	# velocity = move_and_slide(velocity, get_floor_normal())

	# Handle Jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
	#	velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x = Input.get_axis("ui_left", "ui_right")
	if direction_x:
		velocity.x = (direction_x + area_affect_velocity.x) * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	
	var direction_y = Input.get_axis("ui_up", "ui_down")
	if direction_y:
		velocity.y = (direction_y + area_affect_velocity.y) * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	#move_and_slide()
