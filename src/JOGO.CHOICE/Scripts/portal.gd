extends Area2D

#funcao para caso possivel o player ir para outra fase
func _on_Area2D_body_entered(body):
	if Classglobal.passLevel == true:
		get_tree().change_scene("res://Cenas/Feira.tscn")

