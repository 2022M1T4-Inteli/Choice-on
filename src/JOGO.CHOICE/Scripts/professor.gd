extends Node2D

export var scene_to_go = ''

func _ready():
	Classglobal.Scene = "professor"
	pass 
	
func _process(delta):
	if Input.is_key_pressed(KEY_E) && Classglobal.Scene == "professor":
		Transition.fade_into(scene_to_go)
	if Input.is_action_just_pressed("ui_accept"):
		$RichTextLabel2.visible = false
