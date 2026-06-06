extends Control

func _on_button_pressed():
	print("Кнопка работает")
	get_tree().change_scene_to_file("res://node_2D.tscn")
	
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		print("Работает")
