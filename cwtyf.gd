extends Control

@onready var dialogue_label = $TextBox/DialogueText

var dialogue = [
	"она была миленькой но и чуть чуть вредной",
	"я вдохнул и она уже была далеко от меня",
	"она пошла в академию в ту в которой я буду учится...",
	"если она вредина и будет в моем классе то это будет... ",
	"ужасно.."
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
		get_tree().change_scene_to_file("res://trol.tscn")

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		next_dialogue()
