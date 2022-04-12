extends Area2D

export var scene_to_go = ''

func _on_artefato_body_entered(body):#acionada quando algum corpo entra na area
	if (body.name == "Player"): #caso o corpo seja o player ele ira passar de cena
		Transition.fade_into(scene_to_go)


