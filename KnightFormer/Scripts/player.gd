extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var hited = 0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animated_sprite_2d = $AnimatedSprite2D


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		animated_sprite_2d.play("Jump")
	
	
	var direction = Input.get_axis("move_left", "move_right")
	
	if direction == 0:
		animated_sprite_2d.play("Idle")
	elif direction == 1:
		animated_sprite_2d.flip_h = false
		animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.flip_h = true
		animated_sprite_2d.play("run")
	
	
	velocity.x = direction * SPEED



	move_and_slide()
