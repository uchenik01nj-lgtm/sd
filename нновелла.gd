
extends Control

@onready var dialogue_label = $TextBox/DialogueText

var dialogue = [
	"прости, прости!",
	"я реально не хотел...",
	"просто задумался пока шел и не увидел тебя...",
	"я собрал ее учебники которые выпали из сумки и помог ей встать.",
	"она отряхлась, взела сумку которую подал я ей"
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
		get_tree().change_scene_to_file("res://cwtyf.tscn")

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		next_dialogue()
