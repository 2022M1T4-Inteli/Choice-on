extends KinematicBody2D

var motion = Vector2(0,0)
var up = Vector2(0,-1)
var points = 0
var side = "zero"
var wall = false

const SPEED = 460
const JUMPFORCE = 705
const GRAVITY = 25
const WALL_SLIDE_ACC = 15
const MAX_WALL_SLIDE_SPEED = 120
const FIREBALL = preload("res://Cenas/Fireball.tscn")

var countJump = 0

func _physics_process(delta):

	if !Classglobal.frozen:
		if Input.is_action_pressed("ui_right"): #Leitor de Input, analisa e age no eixo x do player
			motion.x = SPEED
			$Sprite_Player.play("andar") #relaciona o sprite certo ao movimento do player
			$Sprite_Player.flip_h = false
		elif Input.is_action_pressed("ui_left"):
			motion.x = -SPEED
			$Sprite_Player.play("andar") #relaciona o sprite certo ao movimento do player
			$Sprite_Player.flip_h = true
		else:
			$Sprite_Player.play("idle")

		if Input.is_action_just_pressed("ui_accept"): #funçao para pular, e pular nas paredes
			if countJump < 2:
				motion.y = -JUMPFORCE
				if is_on_wall() && Input.is_action_pressed("ui_right")  && side != "right":
					motion.x = -SPEED
				elif is_on_wall() && Input.is_action_pressed("ui_left")  && side != "left":
					motion.x = +SPEED
			countJump += 1
			
		if is_on_wall() && Input.is_action_pressed("ui_left") && side != "left":
			countJump = 1
			side = "left"
			if motion.y >= 0:
				motion.y = min(motion.y + WALL_SLIDE_ACC, MAX_WALL_SLIDE_SPEED)

		if is_on_wall() && Input.is_action_pressed("ui_right") && side != "right":
			countJump = 1
			side = "right"
			if motion.y >= 0:
				motion.y = min(motion.y + WALL_SLIDE_ACC, MAX_WALL_SLIDE_SPEED)
			
		if not is_on_floor() and (motion.y > 25 or motion.y < 0):
			$Sprite_Player.play("air")

	motion = move_and_slide(motion, up) #move and slide para executar a movimentação
	a_gravity()
	fire()
				#	esse estilo de código deixa o personagem sem freio |||

	motion.x = lerp(motion.x,0,0.5) # Lerp permite a nice gliding stop |||
	
	if Classglobal.Scene == "Cena 1":
		$Control2/moeda.text = str(Classglobal.coins) 
		
		$Control2/vida.text = str(Classglobal.lives) + '/5'
		
		$Control2/n_artefatos.text = str(Classglobal.n_artefatos) + '/5'
	
func fire():
	var direction = 1 if not $Sprite_Player.flip_h else -1
	if Input.is_action_just_pressed("fireball"):
		var tiro = FIREBALL.instance()
		tiro.direction = direction
		get_parent().add_child(tiro)
		tiro.position.x = position.x + 25
		tiro.position.y = position.y

func a_gravity():
	if is_on_floor():
		countJump = 0
		motion.y = 0
		side = "zero"
	else:
		motion.y += GRAVITY
#		$AnimatedSprite.play("air")

func bounce():
	motion.y = - 500

func ouch():
	set_modulate(Color(1.5,0.3,0.3,0.4))
	$Timer.start()

func _on_Fallzone1_body_entered(body):
	get_tree().change_scene("res://Cenas/Cena1.tscn") 

func _on_Fallzone2_body_entered(body):
	get_tree().change_scene("res://Cenas/Cena1.tscn")

func _on_Artefato_E_body_entered(body):
	$player_assets/Control/RichTextLabel.load_Artefatos()


func _on_Artefato_N_body_entered(body):
	$player_assets/Control/RichTextLabel.load_Artefatos()
	

func _on_Artefato_T_body_entered(body):
	$player_assets/Control/RichTextLabel.load_Artefatos()
	

func _on_Artefato_I2_body_entered(body):
	$player_assets/Control/RichTextLabel.load_Artefatos()
	

func _on_Artefato_I_body_entered(body):
	$player_assets/Control/RichTextLabel.load_Artefatos()
	

func _on_Timer_timeout():
	set_modulate(Color(1,1,1,1))
