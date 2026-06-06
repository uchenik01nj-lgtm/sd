extends Control

@onready var dialogue_label = $TextBox/DialogueText

var dialogue = [
	"Смотри куда идёшь!",
	"Из-за тебя время теряю!",
	"Если из-за тебя опоздаю в школу будешь сам виноват"
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
		get_tree().change_scene_to_file("res://нновелла.tscn")

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		next_dialogue()
