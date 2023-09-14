extends CharacterBody3D

const SPEED = 6.0

func _ready():
	pass
	
func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		velocity.x = 0.0
	elif Input.is_action_pressed("ui_right"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_left"):
		velocity.x = SPEED
	else:
		velocity.x = lerp(float(velocity.x),0.0,0.10)
	
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		velocity.x = 0.0
	elif Input.is_action_pressed("ui_up"):
		velocity.z = SPEED
	elif Input.is_action_pressed("ui_down"):
		velocity.z = -SPEED
	else:
		velocity.z = lerp(float(velocity.z),0.0,0.10)
	move_and_slide()
