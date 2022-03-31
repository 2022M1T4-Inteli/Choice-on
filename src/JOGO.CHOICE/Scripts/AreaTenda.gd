extends Area2D

func _ready():
	$RichTextLabel.visible = false
	pass 
	
func _on_AreaTenda_body_entered(body):
	body.onTenda()
	$RichTextLabel.visible = true

func _on_AreaTenda_body_exited(body):
	body.offTenda()
	$RichTextLabel.visible = false
	pass # Replace with function body.
