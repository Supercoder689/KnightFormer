extends Area2D


@onready var audio_stream_player_2d = $AudioStreamPlayer2D
@onready var timer = $Timer


func _on_body_entered(body):
	audio_stream_player_2d.play()
	$AnimatedSprite2D.hide()
	$CollisionShape2D.queue_free()
