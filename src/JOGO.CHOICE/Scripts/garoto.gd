extends KinematicBody2D

var velocidade = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"): #Leitor de Input, analisa e age no eixo x do player
		velocidade.x = 3
		$boy.play("right")
	elif Input.is_action_pressed("ui_left"):
		velocidade.x = -3
		$boy.play("left")

	elif Input.is_action_pressed("ui_down"):
		$boy.play("down")
		velocidade.y = 3
	elif Input.is_action_pressed("ui_up"):
		$boy.play("up")
		velocidade.y = -3
	else:
		$boy.play("idle")
		velocidade.x = 0
		velocidade.y= 0
		
	move_and_collide(velocidade)
	move_and_slide(velocidade)

func _on_moedaArea2D_body_entered(body):
	get_tree().change_scene("res://Cenas/Feira.tscn")
