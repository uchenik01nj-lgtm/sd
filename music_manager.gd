extends Node

@onready var player = $AudioStreamPlayer

func _ready():
	player.stream = load("res://assets/ui/5fee5524b9c82f3.mp3")
	player.play()
