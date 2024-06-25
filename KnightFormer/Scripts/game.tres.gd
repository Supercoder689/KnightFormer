extends Node2D

var score = 0


func _on_coin_body_entered(body):
	score += 1


func _on_coin_2_body_entered(body):
	score += 1


func _on_coin_3_body_entered(body):
	score += 1


func _on_coin_4_body_entered(body):
	score += 1


func _on_coin_5_body_entered(body):
	score += 1


func _on_coin_6_body_entered(body):
	score += 1


func _on_coin_7_body_entered(body):
	score += 1


func _on_coin_8_body_entered(body):
	score += 1


func _on_coin_10_body_entered(body):
	score += 1


func _on_coin_11_body_entered(body):
	score += 1


func _on_coin_12_body_entered(body):
	score += 1


func _on_coin_13_body_entered(body):
	score += 1


func _on_coin_14_body_entered(body):
	score += 1


func _on_coin_15_body_entered(body):
	score += 1


func _on_coin_16_body_entered(body):
	score += 1


func _on_coin_17_body_entered(body):
	score += 1


func _on_coin_18_body_entered(body):
	score += 1


func _on_coin_19_body_entered(body):
	score += 1


func _on_coin_20_body_entered(body):
	score += 1


func _on_coin_21_body_entered(body):
	score += 1


func _on_coin_22_body_entered(body):
	score += 1


func _on_coin_23_body_entered(body):
	score += 1


func _on_slime_5_died():
	score += 1


func _on_slime_died():
	score += 1


func _on_slime_2_died():
	score += 1


func _on_slime_3_died():
	score += 1


func _on_slime_4_died():
	score += 1





func _on_area_2d_body_entered(body):
	if score == 27:
		get_tree().change_scene_to_file("res://Scenes/Win_100%.tscn")
	if score < 27:
		get_tree().change_scene_to_file("res://Scenes/Win.tscn")
