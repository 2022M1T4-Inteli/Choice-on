extends Control

var zoom = false
var inventario = false

func _ready():
	Classglobal.Scene = "Tutorial 2"
	if Classglobal.Scene == "Tutorial 2":
		$Player/Control2.visible = false

func _process(delta):
	if Classglobal.Scene == "Tutorial 2":
		inventario()
		mapa()

func inventario():
	
	$Player/inventario.scale.x = 0.5
	$Player/inventario.scale.y = 0.5
	$Player/inventario.position.y = -200
	
	
	if Input.is_action_just_pressed("inventairo") && !inventario:
		$Player/inventario.visible = true
		inventario = true
	elif Input.is_action_just_pressed("inventairo") && inventario:
		$Player/inventario.visible = false
		inventario = false

func mapa():
	if Input.is_action_just_pressed("minimapa") and zoom == false and !inventario:
		zoom = true
		$Player/Camera2D2.current = true
		$Player/circles.visible = true
	elif Input.is_action_just_pressed("minimapa") and zoom == true:
		zoom = false
		$Player/Camera2D.current = true
		$Player/circles.visible = false
