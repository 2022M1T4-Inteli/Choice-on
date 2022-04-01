extends Node2D

var zoom = false
var inventario = false

func _ready():
	Classglobal.Scene = "Cena 1"
	Classglobal.lives = 5
	Classglobal.n_artefatos = 0
	Classglobal.coins = 0
	Classglobal.passarfase = false
	Classglobal.frozen = false
	

 

func _process(delta):
	if Classglobal.Scene == "Cena 1":
		if Input.is_action_just_pressed("minimapa") and zoom == false and !inventario:
			zoom = true
			$Player/Camera2D2.current = true
			$Player/circles.visible = true
			$Player/Control2.visible = false
			$Sprites.visible = true
			if $Player.position.x >= 7850:
				$Player/Camera2D2.limit_bottom = 5500
		elif Input.is_action_just_pressed("minimapa") and zoom == true:
			zoom = false
			$Player/Control2.visible = true
			$Player/Camera2D.current = true
			$Player/circles.visible = false
			$Sprites.visible = false
		elif Input.is_action_just_pressed("inventairo") && !inventario and !zoom:
			$Player/Control2/inventario.visible = true
			inventario = true
		elif Input.is_action_just_pressed("inventairo") && inventario and !zoom:
			$Player/Control2/inventario.visible = false
			inventario = false

		if Classglobal.n_artefatos == 1:
			$Sprites/Circle_I.visible = false
		if Classglobal.n_artefatos == 2:
			$Sprites/Circle_N.visible = false
		if Classglobal.n_artefatos == 3:
			$Sprites/Circle_I2.visible = false
		if Classglobal.n_artefatos == 4:
			$Sprites/Circle_E.visible = false
		if Classglobal.n_artefatos == 5:
			$Sprites/Circle_T.visible = false
			
#		if Classglobal.quiz == true:
#			$Player/Control2.visible = false
#		else:
#			$Player/Control2.visible = true

		if Classglobal.lives <= 0:
			get_tree().change_scene("res://Cenas/Cena1.tscn")
			
		


