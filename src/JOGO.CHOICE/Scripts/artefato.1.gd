extends Area2D

func _on_artefato_body_entered(body):
	if (body.name == "Robozinho"):
		queue_free()
