extends Control


func _ready():
	$ColorRect/Label.text = 'Pergunta'
	$Button/Resposta1.text = 'Primeira'
	$Button2/Resposta2.text = 'Segunda'
	$Button3/Resposta3.text = 'Terceira'
	$Button4/Resposta4.text = 'Quarta'

func _on_Button_pressed():
	#get_tree().change_scene(Cena aqui)
	pass


func _on_Button2_pressed():
	get_tree().change_scene("res://Cenas/Cena1.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("res://Cenas/Cena1.tscn")


func _on_Button4_pressed():
	get_tree().change_scene("res://Cenas/Cena1.tscn")


func _on_Button5_pressed():
	$Button3/Resposta3.text = ' '
	$Button4/Resposta4.text = ' '
