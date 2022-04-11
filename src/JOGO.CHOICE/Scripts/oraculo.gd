extends Node2D

func _ready():
	$Sprite/AnimationPlayer.play("Robo")

func _physics_process(delta):
	if Input.is_action_just_pressed("cena") && Classglobal.oracle == true:
		Classglobal.frozen = true
		$RichTextLabel.visible = false
		Classglobal.quiz = true


func _on_Area2D_body_entered(body):
	if Classglobal.numberArtifacts == 5:
		$RichTextLabel.visible = true
		Classglobal.oracle = true


func _on_Area2D_body_exited(body):
	$RichTextLabel.visible = false
	Classglobal.oracle = false
