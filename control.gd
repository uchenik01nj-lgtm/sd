extends Control

@onready var dialogue_label = $TextBox/DialogueText

var dialogue = [
	"Обычный весенний день, у меня нет таких особых дел которые меня бы настроили это сразу же делать.",
	"Я шёл в школу спокойно думая про новую академию."
]

var index = 0

func _ready():
	show_text()

func show_text():
	dialogue_label.text = dialogue[index]

func next_dialogue():
	index += 1

	if index < dialogue.size():
		show_text()
	else:
		get_tree().change_scene_to_file("res://ode_2d.tscn")

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		next_dialogue()
