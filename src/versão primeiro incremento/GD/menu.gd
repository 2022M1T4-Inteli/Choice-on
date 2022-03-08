extends Node2D

#Botão de sair do jogo
func _on_Sair_pressed():
	get_tree().quit()

#Botão de começar o jogo
func _on_Start_pressed():
	get_tree().change_scene("res://TSCN/Feira.tscn")
