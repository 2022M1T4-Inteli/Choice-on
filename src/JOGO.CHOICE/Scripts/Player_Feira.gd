extends KinematicBody2D

const SPEED = 130 

var motion = Vector2(0,0)

var onTenda = false

func _physics_process(delta):
	
	if !Classglobal.frozen:
		if Input.is_action_pressed("ui_right"): #Leitor de Input, analisa e age no eixo x do player
			motion.x += 1
			$AnimatedSprite.play("walk right")
		elif Input.is_action_pressed("ui_left"):
			motion.x -= 1
			$AnimatedSprite.play("walk left")
		elif Input.is_action_pressed("ui_up"): #Leitor de Input, analisa e age no eixo x do player
			motion.y -= 1
			$AnimatedSprite.play("walk up")
		elif Input.is_action_pressed("ui_down"):
			motion.y += 1
			$AnimatedSprite.play("walk down")
		else:
			$AnimatedSprite.play("idle")

	move_and_slide(motion * SPEED)
	
	motion.x = lerp(motion.x,0,0.5)
	motion.y = lerp(motion.y,0,0.5)

	if Input.is_action_pressed("ui_accept") && onTenda == true:
		#get_tree().change_scene("res://TSCN/professor.tscn")
		get_tree().change_scene("res://Cenas/professor.tscn")

func onTenda():
	onTenda = true
