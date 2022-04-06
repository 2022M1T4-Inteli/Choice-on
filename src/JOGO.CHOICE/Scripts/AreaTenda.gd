extends Area2D

func _ready():
	$RichTextLabel.visible = false 
	pass 
	
func _on_AreaTenda_body_entered(body):
	body.onTenda() # Chama a funcao do body onTenda()
	$RichTextLabel.visible = true

func _on_AreaTenda_body_exited(body):
	body.offTenda() # Chama a funcao do body offTenda()
	$RichTextLabel.visible = false
