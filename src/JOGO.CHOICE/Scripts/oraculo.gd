extends Node2D

var oraculo = false

func _ready():
	$Quizz.visible = false
	$Sprite/AnimationPlayer.play("Robo")

func _physics_process(delta):
	if Input.is_action_just_pressed("cena") && oraculo == true:
		$Quizz.visible = true
		Classglobal.frozen = true


func _on_Area2D_body_entered(body):
	if Classglobal.n_artefatos == 5:
		oraculo = true


func _on_Area2D_body_exited(body):
	oraculo = false
