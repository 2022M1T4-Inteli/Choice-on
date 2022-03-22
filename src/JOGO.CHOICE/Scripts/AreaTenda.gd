extends Area2D

func _ready():
	$TextEdit.visible = false
	pass 
	
func _on_AreaTenda_body_entered(body):
	body.onTenda()
	$TextEdit.visible = true
	$AnimatedSprite.visible = false
	$AnimatedSprite2.visible = false
	

func _on_AreaTenda_body_exited(body):
	$TextEdit.visible = false
	$AnimatedSprite.visible = true
	$AnimatedSprite2.visible = true
	pass # Replace with function body.
