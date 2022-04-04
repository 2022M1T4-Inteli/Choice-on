extends Node2D

func _ready():
	$Sprite/AnimationPlayer.play("Robo")

func _physics_process(delta):
	if Input.is_action_just_pressed("cena") && Classglobal.oraculo == true:
		Classglobal.frozen = true
		$RichTextLabel.visible = false
		Classglobal.quiz = true


func _on_Area2D_body_entered(body):
	if Classglobal.n_artefatos == 5:
		$RichTextLabel.visible = true
		Classglobal.oraculo = true


func _on_Area2D_body_exited(body):
	$RichTextLabel.visible = false
	Classglobal.oraculo = false
