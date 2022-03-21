extends Control

var dialog = [
	'Bem vindo a feira de profissoes do Inteli! Eu sou o diretor da faculdade,',
	'e estou muito feliz em recebe-lo aqui. Tenha certeza que nao vai se',
	'arrepender de ter vindo! A feira esta acontecendo justamente para voce',
	'conhecer a faculdade e os cursos que ela proporciona, para quem sabe um',
	'dia voce possa se juntar a nos!', 
	'Comece indo para a tenda onde o professor se encontra.',
]

var dialogNumber = 0

#var finished = false

func _ready():
	load_dialog()
	
func _process(delta):
	$"Ind".visible = Classglobal.finished
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()
		
func load_dialog():
	if dialogNumber < dialog.size():
		Classglobal.finished = false
		#finished = false
		$RichTextLabel.bbcode_text = dialog[dialogNumber]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, 1, 
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	else:
		queue_free()
	dialogNumber += 1
	
func _on_Tween_tween_completed(object, key):
	Classglobal.finished = true
	#finished = true
