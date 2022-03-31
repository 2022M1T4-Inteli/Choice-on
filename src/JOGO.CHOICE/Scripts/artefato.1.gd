extends Area2D

export var scene_to_go = ''

func _on_artefato_body_entered(body):
	if (body.name == "Player"):
		Transition.fade_into(scene_to_go)


