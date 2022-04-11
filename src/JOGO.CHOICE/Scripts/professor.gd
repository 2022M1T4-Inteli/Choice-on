extends Node2D

export var scene_to_go = ''
var finished = false

func _ready():
	Classglobal.Scene = "professor"
	pass 
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept") && Classglobal.Scene == "professor" && Classglobal.professorf:
		Transition.fade_into(scene_to_go)
	if $Control.visible == true:
		$RichTextLabel2.visible = false
	elif $Control.visible == false:
		$RichTextLabel2.visible = true
