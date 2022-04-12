extends Node2D

var zoom = false
var inventory = false

func _ready():
	Classglobal.Scene = "Cena 1"
	Classglobal.passLevel = false
	Classglobal.frozen = false
#	Classglobal.coins = 20
#	Classglobal.numberArtifacts = 5
	checkpoint()

func _process(delta):
	if Classglobal.Scene == "Cena 1":
		mapa()
		inventario()
		circles()
		morte()
		quiz()

#funcao para abrir o inventario, tecla I, usa as variaveis zoom e inventory. deixa o nó 'inventario' ligado ao player visível
func inventario():
	$Player/inventario.scale.x = 1.2
	$Player/inventario.scale.y = 1.2
	if Input.is_action_just_pressed("inventairo") && !inventory and !zoom:
		$Player/inventario.visible = true
		inventory = true
	elif Input.is_action_just_pressed("inventairo") && inventory and !zoom:
		$Player/inventario.visible = false
		inventory = false

#funcao para abrir o mapa, telca M, usa as variaveis zoom e inventory. troca a camera current na cena e habilita alguns assets que apenas aparecem no mapa
func mapa():
	if Input.is_action_just_pressed("minimapa") and zoom == false and !inventory:
		zoom = true
		$Player/Camera2D2.current = true
		$Player/circles.visible = true
		$Player/Control2.visible = false
		$Sprites.visible = true
	elif Input.is_action_just_pressed("minimapa") and zoom == true:
		zoom = false
		$Player/Control2.visible = true
		$Player/Camera2D.current = true
		$Player/circles.visible = false
		$Sprites.visible = false

#funcao para apagar os circles do mapa quando  o personagem coleta o devido artefato, utiliza da variavel 'numberArtifacts'
func circles():
	if Classglobal.numberArtifacts >= 1:
		$Sprites/Circle_I.visible = false
	if Classglobal.numberArtifacts >= 2:
		$Sprites/Circle_N.visible = false
	if Classglobal.numberArtifacts >= 3:
		$Sprites/Circle_T.visible = false
	if Classglobal.numberArtifacts >= 4:
		$Sprites/Circle_E.visible = false
	if Classglobal.numberArtifacts >= 5:
		$Sprites/Circle_I2.visible = false

#funcao para caso o personagem perca todas as vidas ele volta do começo e reseta seus itens, utiliza da variavel 'lives' e mexe na 'dialogNumber' e 'coins' e 'numberArtifacts' 
func morte():
	if Classglobal.lives <= 0:
		Classglobal.dialogNumber_A = 0
		Classglobal.numberArtifacts = 0
		Classglobal.lives = 5
		get_tree().change_scene("res://Cenas/Cena1.tscn")
		Classglobal.coins = 0

#funcao para sinalizar ao player para apertar E para iniciar o quiz, utiliza a variavel quiz
func quiz():
	if Classglobal.quiz == true:
		$Player/Control2.visible = false

#funcao que organiza o checkpoint com base no numero de artefatos em maos quando o personagem morreu e seta as devidas configuracoes
func checkpoint():
	if Classglobal.numberArtifacts >= 3:
		Classglobal.dialogNumber_A = 3
		Classglobal.numberArtifacts = 3
		$Artefatos/Artefato_I/Sprite.visible = false
		$Artefatos/Artefato_I.monitoring = false
		$Artefatos/Artefato_N/Sprite.visible = false
		$Artefatos/Artefato_N.monitoring = false
		$Artefatos/Artefato_T/Sprite.visible = false
		$Artefatos/Artefato_T.monitoring = false
		if Classglobal.checkpoint:
			$Player.global_position = Classglobal.checkpoint
	else:
		Classglobal.numberArtifacts = 0
		Classglobal.coins = 0

