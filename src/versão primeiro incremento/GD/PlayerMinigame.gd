extends KinematicBody2D

#variáveis usadas no código
var motion = Vector2(0,0)
var up = Vector2(0,-1)
const JUMPFORCE = 700
const GRAVITY = 25
const WALL_SLIDE_A = 15
const MAX_WALL_SLIDE_S = 120

#Variável do doublejump
var countJump = 0

func _physics_process(delta):

	if Input.is_action_pressed("ui_right"): #Leitor de Input, analisa e age no eixo x do player
		motion.x = 250
	elif Input.is_action_pressed("ui_left"):
		motion.x = -250

#Sistema de pulo
	if Input.is_action_just_pressed("pulo") && countJump < 2:
			motion.y = -JUMPFORCE
			countJump += 1

#colocar um sistema de agarrar a parede
	if is_on_wall() && (Input.is_action_pressed("ui_left") || Input.is_action_pressed("ui_right")):
		if motion.y >= 0:
			motion.y = min(motion.y + WALL_SLIDE_A, MAX_WALL_SLIDE_S)
		else:
			motion.y += GRAVITY
	
	motion = move_and_slide(motion, up) #move and slide para executar a movimentação
	animate()
	a_gravity()


	#esse estilo de código deixa o personagem sem freio

	motion.x = lerp(motion.x,0,0.1)

	print(motion.y)
	print(motion.x)

#Gravidade
func a_gravity():
	if is_on_floor():
		countJump = 0
		motion.y = 0
	else:
		motion.y += GRAVITY
		

#Animações
func animate():
	if motion.x > 0 :
		$AnimatedSprite.play("walk") #relaciona o sprite certo ao movimento do player
		$AnimatedSprite.flip_h = false
	elif motion.x < 0 :
		$AnimatedSprite.play("walk") #relaciona o sprite certo ao movimento do player
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("idle")
	
