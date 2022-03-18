extends Control

var dialog = [
	'Bem vindo a tenda de Engenharia da Computacao!',
	'Eu, professor do Inteli, estou com certa dificuldade para resolver um',
	'problema, e preciso da sua ajuda! Em troca, irei fornecer a voce', 
	'explicacoes relacionadas ao curso que voce esta interessado. ',
	'Faremos o seguinte: voce entrara dentro do computador, num minigame', 
	'de plataforma e ao longo dessa fase terao inimigos, assim como pecas', 
	'com informacoes sobre o curso de Engenharia da Computacao que voce', 
	'deve coletar para poder responder uma pergunta no final da fase', 
	'que se respondida corretamente, faz voce passar de fase e caso erre...',
	'Bom, voce nao ira querer saber, entao preste atencao nas informacoes', 
	'e colete as moedas para te ajudar na pergunta. Pressione E para começar o minigame'
]

var dialogNumber = 0

#var finished = false

func _ready():
	load_dialog()
	
func _process(delta):
	$"Ind".visible = Classglobal.finished
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()
	if Input.is_action_pressed('cena'):
		get_tree().change_scene('res://Cenas/Cena1.tscn')
		
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


