extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://StageOne.tscn")
	elif Input.is_action_just_pressed("voltar"):
		get_tree().change_scene("res://Node2D.tscn")
