extends Control

var perguntas = ["PRIMEIRPEGUNTA", "ola"]

var respostas = [["oi", "oi", "oi", "oi"],
				 ["ola", "ola", "ola", "ola"]]

var pergIndex = 0

var respIndex = 0
var respIndex_2 = 0

var respondeu = 0

func _ready():
	$RichTextLabel.text = perguntas[pergIndex]
	$Buttons/Button/Resposta1.text = respostas[respIndex][respIndex_2]
	$Buttons/Button2/Resposta2.text = respostas[respIndex][respIndex_2 + 1]
	$Buttons/Button3/Resposta3.text = respostas[respIndex][respIndex_2 + 2]
	$Buttons/Button4/Resposta4.text = respostas[respIndex][respIndex_2 + 3]

func _on_Button_pressed():
	if respondeu == 0:
		respondeu += 1
		pergIndex += 1
		respIndex += 1
		_ready()
	elif respondeu == 1:
		get_tree().change_scene("res://Cenas/Cena1.tscn")

func _on_Button2_pressed():
	if respondeu == 0:
			get_tree().change_scene("res://Cenas/Cena1.tscn")
	elif respondeu == 1:
			get_tree().change_scene("res://Cenas/Cena1.tscn")

func _on_Button3_pressed():
	if respondeu == 0:
		get_tree().change_scene("res://Cenas/Cena1.tscn")
	elif respondeu == 1:
		get_tree().change_scene("res://Cenas/Cena1.tscn")

func _on_Button4_pressed():
	if respondeu == 0:
		get_tree().change_scene("res://Cenas/Cena1.tscn")
	elif respondeu == 1:
		$RichTextLabel.text = "Você Acertou!!, passe pelo portal!"
		$Buttons.visible = false
		Classglobal.frozen = false
		Classglobal.passarfase = true


func _on_Button5_pressed():
	if Classglobal.coins >= 20:
		Classglobal.coins -= 20
		$Button3/Resposta3.text = ' '
		$Button4/Resposta4.text = ' '

