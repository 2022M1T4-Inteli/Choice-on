extends RichTextLabel

var dialogProfessor = [
	" Bem vindo a tenda de Engenharia da Computacao!",
	" Eu, professor do Inteli, te desafio a se tornar um mestre da computacao, e ser reconhecido pelo Nosso Oraculo",
	" Te proponho uma aventura e aprendizados relacionadas ao curso que voce esta interessado.",
	" Faremos o seguinte: voce entrara dentro do computador, num minigame de plataforma e voce encontrara 5 artefatos perdidos!",
	' Cada um com informacoes sobre o curso de Engenharia da Computacao, para que consiga responder o Oraculo e prosseguir nesta jornada', 
	' caso responda corretamente, Ele o permitirá passar de fase... e caso erre...',
	' Bom, voce nao ira querer saber, entao preste atencao nas informacoes e colete as moedas para te ajudar nos desafios! Aperte E para comecar'

]

#var dialogArtefatos = [["artefato", "Esse é o artefato 1"], ["artefato", "Esse é o artefato 2"], ["artefato", "Esse é o artefato 3"]]
 
var dialogDiretor = [
	' Bem vindo a feira de profissoes do Inteli! Eu sou o diretor da faculdade e estou muito feliz em recebe-lo aqui.',
	' Tenha certeza que nao vai se arrepender de ter vindo! A feira esta acontecendo justamente para voce',
	' conhecer a faculdade e os cursos que ela proporciona, para quem sabe um dia voce possa se juntar a nos!', 
	' Comece indo para a tenda onde o professor se encontra.',
]

#onready var label = get_node("Dialog/TextEdit")

#var dialogNumber_A = 0
#var dialogNumber_A_2 = 0
var dialogNumber_P = 0
var dialogNumber_D = 0


func _ready():
	self.visible = false
	pass

func _process(delta):
	if Classglobal.Scene == "feira" or Classglobal.Scene == "professor":
		if Input.is_action_just_pressed("ui_accept"):
			load_dialog()
#	elif Artefato.PLAYER:
#		if Input.is_action_just_pressedK("ui_accept"):
#			load_Artefatos()
		
func load_dialog():
	
	self.visible = true
	Classglobal.frozen = true
	if Classglobal.Scene == "feira":
		if dialogNumber_D < dialogDiretor.size():
			self.text = dialogDiretor[dialogNumber_D]
			dialogNumber_D += 1
		else:
			self.visible = false
			Classglobal.frozen = false
	elif Classglobal.Scene == "professor":
		if dialogNumber_P < dialogProfessor.size():
			print("professor")
			self.text = dialogProfessor[dialogNumber_P]
			dialogNumber_P += 1
		else:
			Classglobal.frozen = false

#func load_Artefatos():
#	self.visible = true
#	if Classglobal.Scene == "Cena 1":
#		if dialogNumber_A_2 < 2:
#			self.text = dialogArtefatos[dialogNumber_A][dialogNumber_A_2]
#			dialogNumber_A_2 += 1
#		else:
#			self.visible = false
#			Classglobal.frozen == false
#			dialogNumber_A_2 = 0
#			dialogNumber_A += 1
