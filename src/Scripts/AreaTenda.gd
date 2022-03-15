extends Area2D

func _ready():
	pass 
	
func _on_AreaTenda_body_entered(body):
	body.onTenda()
