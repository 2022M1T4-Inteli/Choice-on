extends KinematicBody2D

var velocity = Vector2(0,0)
const JUMPFORCE = -900
const GRAVITY = 25

func _physics_process(delta):
	if Input.is_action_pressed("key_d"): #Leitor de Input, analisa e age no eixo x do playes
		velocity.x = 250
		$AnimatedSprite.play("walk") #relaciona o sprite certo ao movimento do player
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("key_a"):
		velocity.x = -250
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("idle")
	
	if not is_on_floor():
		$AnimatedSprite.play("air")
	
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_pressed("jump_w_spc") and is_on_floor():
		velocity.y = JUMPFORCE

	
	velocity = move_and_slide(velocity, Vector2.UP) #move and slide para executar a movimentação
	
	#esse estilo de código deixa o personagem sem freio 
	
	velocity.x = lerp(velocity.x,0,0.1) # Lerp permite a nice gliding stop
	
	print(velocity.y)
