extends Control

func _ready():
	# Эта строчка принудительно делает курсор видимым и возвращает ему управление
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	print("Режим мыши принудительно установлен в VISIBLE")

# Ваш существующий код для кнопки...
func _on_button_pressed():
	print("Кнопка работает")
	get_tree().change_scene_to_file("res://node_2D.tscn")
