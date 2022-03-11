extends KinematicBody2D

var motion = Vector2(0,0)
var up = Vector2(0,-1)

const JUMPFORCE = 700
const GRAVITY = 25
const WALL_SLIDE_A = 15
const MAX_WALL_SLIDE_S = 120

var countJump = 0

func _physics_process(delta):

	if Input.is_action_pressed("ui_right"): #Leitor de Input, analisa e age no eixo x do player
		motion.x = 250
		$AnimatedSprite.play("walk") #relaciona o sprite certo ao movimento do player
		$AnimatedSprite.flip_h = false
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -250
		$AnimatedSprite.play("walk") #relaciona o sprite certo ao movimento do player
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("idle")

	if Input.is_action_just_pressed("pulo") && countJump < 2:
		motion.y = -JUMPFORCE
		countJump += 1

	if is_on_wall() && (Input.is_action_pressed("ui_left") || Input.is_action_pressed("ui_right")):
		countJump == 1
		if motion.y >= 0:
			motion.y = min(motion.y + WALL_SLIDE_A, MAX_WALL_SLIDE_S)
	
	motion = move_and_slide(motion, up) #move and slide para executar a movimentação
	a_gravity()

	#esse estilo de código deixa o personagem sem freio |||

	motion.x = lerp(motion.x,0,0.1) # Lerp permite a nice gliding stop |||

	print(motion.y)
	print(motion.x)

func a_gravity():
	if is_on_floor():
		countJump = 0
		motion.y = 0
	else:
		motion.y += GRAVITY


func _on_Fallzone1_body_entered(body):
	get_tree().change_scene("res://TSCN/Cena1.tscn")


func _on_Fallzone2_body_entered(body):
	get_tree().change_scene("res://TSCN/Cena1.tscn")

