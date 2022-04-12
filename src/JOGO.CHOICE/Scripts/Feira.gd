extends Node2D
#configura as variaveis scene e frozen no inicio da cena
func _ready():
	Classglobal.Scene = "feira"
	Classglobal.frozen = true

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		$Player/RichTextLabel2.visible = false

