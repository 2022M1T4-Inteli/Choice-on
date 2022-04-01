extends Control

func _ready():
	Classglobal.Scene = "Turoeial 2"
	if Classglobal.Scene == "Turoeial 2":
		$Player/Control2.visible = false
