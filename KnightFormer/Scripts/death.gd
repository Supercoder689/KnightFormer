extends Control


func _on_respawn_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/game.tscn")


func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/home_screen.tscn")
