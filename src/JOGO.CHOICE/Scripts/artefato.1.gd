extends Area2D

func _on_artefato_body_entered(body):
	if (body.name == "Robozinho"):
		get_tree().change_scene("res://Cenas/Cena1.tscn")


