extends Area2D


func _ready():
	pass


func _on_Artefato_body_entered(body):
	queue_free()
	body.addPoint()
