extends Control


func _ready():
	$ColorRect/Label.text = 'Pergunta'
	$Button/Resposta1.text = 'Primeira'
	$Button2/Resposta2.text = 'Segunda'
	$Button3/Resposta3.text = 'Terceira'
	$Button4/Resposta4.text = 'Quarta'


func _on_Button_pressed():
	Classglobal.passarfase = true
	$ColorRect/Label.text = 'Va ate o portal, voce passou de fase!'
	$Button.visible = false
	$Button2.visible = false
	$Button3.visible = false
	$Button4.visible = false
	$Button5.visible = false


func _on_Button2_pressed():
	get_tree().change_scene("res://Cenas/Cena1.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("res://Cenas/Cena1.tscn")


func _on_Button4_pressed():
	get_tree().change_scene("res://Cenas/Cena1.tscn")


func _on_Button5_pressed():
	if Classglobal.coins == 5:
		$Button3/Resposta3.text = ' '
		$Button4/Resposta4.text = ' '
	else:
		pass
