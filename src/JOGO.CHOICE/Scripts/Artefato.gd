extends Area2D

var can_interact = false

func _on_Area2D_body_entered(body):
	can_interact = true
	
	
func _on_Area2D_body_exited(body):
	can_interact = false

func _process(delta):
	if can_interact == true and Classglobal.Scene == "Cena 1":
		queue_free()
		Classglobal.n_artefatos += 1

