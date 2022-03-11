extends KinematicBody2D

var velocidade = 250

var on_tenda1 = false

func _physics_process(delta):
	var motion = Vector2(0,0)
	if Input.is_action_pressed("ui_right"): #Leitor de Input, analisa e age no eixo x do player
		motion.x += 1
	if Input.is_action_pressed("ui_left"):
		motion.x -= 1
	if Input.is_action_pressed("ui_up"): #Leitor de Input, analisa e age no eixo x do player
		motion.y -= 1
	if Input.is_action_pressed("ui_down"):
		motion.y += 1
	
	move_and_slide(motion * velocidade)
	
	if Input.is_action_pressed("pulo") && on_tenda1==true:
		#get_tree().change_scene("res://TSCN/professor.tscn")
		get_tree().change_scene("res://TSCN/Cena1.tscn")

func _on_Tenda2_body_entered(body):
	on_tenda1 = true
