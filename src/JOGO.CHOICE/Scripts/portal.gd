extends Area2D

export var scene_to_go = ''

func _on_Area2D_body_entered(body):
	if Classglobal.passarfase == true:
		Transition.fade_into(scene_to_go)

