extends Node2D

export var scene_to_go = ''

func _ready():
	Sound.stream_paused = false


func _on_Sair_pressed():
	get_tree().quit()


func _on_Start_pressed():
	Transition.fade_into(scene_to_go)


func _on_CheckButton_toggled(button_pressed):
	if Sound.stream_paused == false:
		Sound.stream_paused = true
	else:
		Sound.stream_paused = false

