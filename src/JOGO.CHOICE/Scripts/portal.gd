extends Area2D


func _on_Area2D_body_entered(body):
	if Classglobal.passarfase == true:
		get_tree().change_scene("res://Cenas/Feira.tscn")

