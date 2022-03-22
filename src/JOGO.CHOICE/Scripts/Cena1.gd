extends Node2D

func _ready():
	Classglobal.Scene = "Cena 1"
	pass 

func _process(delta):
#	if Classglobal.Scene == "Cena 1":
		if Input.is_key_pressed(KEY_M):
			$Player/Camera2D2.current = true
			$Player/Sprite.visible = true
			$Player/Sprite2.visible = true
		elif Input.is_key_pressed(KEY_P):
			$Player/Camera2D.current = true
			$Player/Sprite.visible = false
			$Player/Sprite2.visible = false
