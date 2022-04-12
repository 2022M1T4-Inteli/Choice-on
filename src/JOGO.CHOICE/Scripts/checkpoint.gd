extends Area2D

#caso o corpo entre na area ele setara o checkpoint com o valor da posicao dele no mapa
func _on_Area2D_body_entered(body):
	Classglobal.checkpoint = global_position
