extends Node2D

func _ready():
	Classglobal.Scene = "professor"
	pass 
	
func _process(delta):
	if Input.is_key_pressed(KEY_E) && Classglobal.Scene == "professor":
		get_tree().change_scene('res://Cenas/Cena1.tscn')
