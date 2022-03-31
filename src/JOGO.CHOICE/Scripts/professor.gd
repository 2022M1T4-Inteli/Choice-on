extends Node2D

export var scene_to_go = ''
var aperte_e = false

func _ready():
	Classglobal.Scene = "professor"
	pass 
	
func _process(delta):
	if Input.is_key_pressed(KEY_E) && Classglobal.Scene == "professor":
		Transition.fade_into(scene_to_go)
	if $Control.visible == true:
		$RichTextLabel2.visible = false
		aperte_e = true
	elif $Control.visible == false and aperte_e:
		$RichTextLabel2.text = '  APERTE E'
		$RichTextLabel2.visible = true
