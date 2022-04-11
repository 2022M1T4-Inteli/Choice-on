extends Node

var frozen = false

var Scene 

var lives = 5

var n_artefatos = 0

var quiz = false

var coins = 0

var passfase = false

var oraculo = false

var checkpoint = null

var dialogNumber_A = 0

var dialogNumber_A_2 = 0

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
