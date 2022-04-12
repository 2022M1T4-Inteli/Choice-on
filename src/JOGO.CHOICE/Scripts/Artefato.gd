extends Area2D

var can_interact = false
#acionada quando algum corpo entra na area, utiliza a variavel can_interact
func _on_Area2D_body_entered(body):
	can_interact = true
#acionada quando algum corpo entra na area, utiliza a variavel can_interact
func _on_Area2D_body_exited(body):
	can_interact = false
#funcao que elemina o artefato do mapa quando coletado e adiciona à variavel numberArtifacts
func _process(delta):
	if can_interact == true and Classglobal.Scene == "Cena 1":
		queue_free()
		Classglobal.numberArtifacts += 1

