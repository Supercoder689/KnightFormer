extends Node2D

const SPEED = 60

var direction = 1

signal Died()

@onready var raycast_right = $"Raycast Right"
@onready var raycast_left = $"Raycast Left"
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var death_sound = $"Death Sound"
@onready var death_zone = $"Death Zone"
@onready var collision_shape_2d = $KillZone/CollisionShape2D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x += direction * SPEED * delta




func _on_death_zone_body_entered(body):
	death_sound.play()
	collision_shape_2d.queue_free()
	death_zone.queue_free()
	animated_sprite_2d.hide()
	Died.emit()
