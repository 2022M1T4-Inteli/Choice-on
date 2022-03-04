
extends KinematicBody2D

var gravity = 9.8
var velocity = Vector2()
var booleano = false
var velocidade = 250

func _physics_process(delta):
	var vetor_entrada=Vector2.ZERO
	vetor_entrada.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	vetor_entrada.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	
	if(booleano):
		move_and_slide(vetor_entrada*(velocidade+50))
	else:
		move_and_slide(vetor_entrada*(velocidade-50))
		
	if Input.is_action_pressed('pulo'):
		get_tree().change_scene("res://cena 2.tscn")
		
