extends Node2D

func _ready():
	pass # Replace with function body.


func _on_Sair_pressed():
	get_tree().quit()

func _on_Start_pressed():
	get_tree().change_scene("res://Cenas/Feira.tscn")
