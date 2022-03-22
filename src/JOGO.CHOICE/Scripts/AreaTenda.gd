extends Area2D

func _ready():
	$TextEdit.visible = false
	pass 
	
func _on_AreaTenda_body_entered(body):
	body.onTenda()
	$TextEdit.visible = true

func _on_AreaTenda_body_exited(body):
	$TextEdit.visible = false
	pass # Replace with function body.
