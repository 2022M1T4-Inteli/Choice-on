extends KinematicBody2D

const SPEED = 60
const GRAVITY = 10
const JUMP_POWER = -240
const FLOOR = Vector2(0, -1)

var velocity = Vector2()
var on_ground = false
var double_jump = false

func _physics_process(delta):
	#SISTEMA DE VELOCIDADE HORIZONTAL E 
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$AnimatedSprite.play("run")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$AnimatedSprite.play("run")		
		$AnimatedSprite.flip_h = true	
	else:
		velocity.x = 0
		if on_ground == true:
			$AnimatedSprite.play("idle")
		
	#SISTEMA DE PULO E DOUBLE JUMP
	if Input.is_action_pressed("ui_up"):
		if on_ground == true and double_jump == false:
			velocity.y = JUMP_POWER
			on_ground = false
			double_jump = true
		elif velocity.y >= 0 and double_jump == true:
			velocity.y = JUMP_POWER
			double_jump = false

	velocity.y += GRAVITY
		
	if is_on_floor():
		on_ground = true
		double_jump = false
	else:
		on_ground = false
		
		if velocity.y < 0 :
			$AnimatedSprite.play("jump")		
		else:
			$AnimatedSprite.play("fall")		
	
	if Input.is_action_just_pressed("voltar"):
		get_tree().change_scene("res://cena 2.tscn")
		
	velocity = move_and_slide(velocity, FLOOR)

func _on_Hurtbox_area_entered(area: Area2D)-> void:
	if area.is_in_group("Enemies"):
		print("ouch")
