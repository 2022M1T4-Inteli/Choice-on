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

func inventario():
	if Input.is_action_just_pressed("inventairo") && !inventario:
		$Player/Control2/inventario.visible = true
		inventario = true
	elif Input.is_action_just_pressed("inventairo") && inventario:
		$Player/Control2/inventario.visible = false
		inventario = false
