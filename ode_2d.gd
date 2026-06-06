extends Control

@onready var dialogue_label = $TextBox/DialogueText

var dialogue = [
	"Я перешёл переулок",
	"Люди то идут то спешат на работу или по делам",
	"Пока я задумался идя по тротуару я столкнулся с девочкой"
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
		get_tree().change_scene_to_file("res://control.tscn")

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		next_dialogue()
