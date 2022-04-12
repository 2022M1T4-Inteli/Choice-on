extends Node2D

func _ready():
	$Sprite/AnimationPlayer.play("Robo")

#funcao para acessar o quiz, utiliza as variaveis oracle, quizf e frozen
func _physics_process(delta):
	if Input.is_action_just_pressed("cena") && Classglobal.oracle == true && Classglobal.quizf == false:
		Classglobal.frozen = true
		$RichTextLabel.visible = false
		Classglobal.quiz = true

#funcao para acionar a variavel oracle, utiliza as variaveis numberArtifacts e quizf
func _on_Area2D_body_entered(body):
	if Classglobal.numberArtifacts == 5 && Classglobal.quizf == false:
		$RichTextLabel.visible = true
		Classglobal.oracle = true

##funcao para desacionar a variavel oracle
func _on_Area2D_body_exited(body):
	$RichTextLabel.visible = false
	Classglobal.oracle = false
