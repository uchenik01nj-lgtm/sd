
extends Control
@onready var image = $Character
@onready var dialogue_label = $TextBox/DialogueText

var dialogue = [
	"Привет",
	"Ты же новенький?",
	"Тогда...",
	"Добро пожаловать в академию Звезды",
	"Меня зовут Аой. Приятно познакомиться.",
	"Я покажу тебе одноклассников которые будут учиться в твоем классе."
]

var index = 0

func _ready():
	show_text()

func show_text():
	dialogue_label.text = dialogue[index]


func zoom_image():
	var tween = create_tween()
	tween.tween_property(image, "scale", Vector2(1.1, 1.1), 0.3)
	
func next_dialogue():
	index += 1
	
	if index < dialogue.size():
		show_text()
		
		# 👇 Срабатывает после "Привет"
		if index == 1:
			zoom_image()
	
		
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		next_dialogue()
