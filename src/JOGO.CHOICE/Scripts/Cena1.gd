extends Node2D

var zoom = false
var inventario = false

func _ready():
	Classglobal.Scene = "Cena 1"
	Classglobal.lives = 5
	Classglobal.n_artefatos = 0
	Classglobal.coins = 0
	Classglobal.passarfase = true
 

func _process(delta):
	if Classglobal.Scene == "Cena 1":
		if Input.is_action_just_pressed("minimapa") and zoom == false and !inventario:
			zoom = true
			$Player/Camera2D2.current = true
			$Player/player_assets.visible = false
			$Player/circles.visible = true
			$Sprites.visible = true
			if $Player.position.x >= 7850:
				$Player/Camera2D2.limit_bottom = 5600
		elif Input.is_action_just_pressed("minimapa") and zoom == true:
			zoom = false
			$Player/Camera2D.current = true
			$Player/player_assets.visible = true
			$Player/circles.visible = false
			$Sprites.visible = false
		elif Input.is_action_just_pressed("inventairo") && !inventario and !zoom:
			$Player/player_assets/inventario.visible = true
			inventario = true
		elif Input.is_action_just_pressed("inventairo") && inventario and !zoom:
			$Player/player_assets/inventario.visible = false
			inventario = false
		
		if Classglobal.artefato == "I":
			$Sprites/Circle_I.visible = false
		if Classglobal.artefato == "N":
			$Sprites/Circle_N.visible = false
		if Classglobal.artefato == "I2":
			$Sprites/Circle_I2.visible = false
		if Classglobal.artefato == "E":
			$Sprites/Circle_E.visible = false
		if Classglobal.artefato == "T":
			$Sprites/Circle_T.visible = false
		
		if Classglobal.lives <= 0:
			get_tree().change_scene("res://Cenas/Cena1.tscn")
			
		


