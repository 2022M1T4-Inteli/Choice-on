extends Node2D

var enemyScene = load("res://Cenas/Inimigo.tscn")

func _on_Timer2_timeout():
	var enemy = enemyScene.instance()
	add_child(enemy)

