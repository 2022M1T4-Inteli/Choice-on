extends Control

var dialogProfessor = [
	" Arggg... Que droga! Não acredito que isso aconteceu... Ainda bem que você veio. ",
	" Desculpe o estresse, é que estou meio encrencado. Há meses venho trabalhando em um projeto gigante de engenharia de computação, algo que mudará o mundo.",
	" Mas ontem aconteceu algo que atrapalhou todo o andamento desse plano...",
	" Estava de passagem pelo Jardim Flutuante do Inteli e acabei perdendo algumas peças importantíssimas para o projeto. Agora, preciso urgentemente de sua ajuda para recuperá-las.",
	' Toda vez que você coletar uma peça, te ensinarei algo novo sobre o curso de engenharia da computação.', 
	' Mas precisamos combinar uma coisa: preste muita atenção a tudo o que será dito, pois ao fim do Jardim, você precisará responder corretamente a algumas perguntas do Oráculo Inteliano para passar de fase.',
	' Aprenda, se divirta, mas tenha muito cuidado, em alguns momentos o caminho é perigoso.'

]

#var dialogArtefatos = [["artefato", "Esse é o artefato 1"], ["artefato", "Esse é o artefato 2"], ["artefato", "Esse é o artefato 3"]]
 
var dialogDiretor = [
	' Olha só,  você por aqui! É um prazer enorme recebê-lo na feira de profissões do Inteli.',
	' A feira está acontecendo faz 5 dias, mas hoje é o dia mais agitado. Muitas coisas estão acontecendo... ',
	' inovações surgindo, empresas sendo criadas e muita animação pairando pelo ar. Então porque você não aproveita para explorar o ambiente e, principalmente, para conversar com algum dos nossos professores.', 
	' Se você possuir interesse e vontade de aprender, quem sabe ele não entrega uma tarefa para você resolver?',
	'Se eu fosse você, começaria indo para a tenda do professor Merlock... Volte e meia ele aparece com uns desafios bem curiosos e recheados de conhecimento.',
	'Ela fica bem ali em cima, à esquerda. Aproveite muito essa jornada e... muita atenção (a tudo). Boa sorte!'
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
			$RichTextLabel.bbcode_text = dialogDiretor[dialogNumber_D]
			dialogNumber_D += 1
		else:
			self.visible = false
			Classglobal.frozen = false
	elif Classglobal.Scene == "professor":
		if dialogNumber_P < dialogProfessor.size():
			print("professor")
			$RichTextLabel.bbcode_text = dialogProfessor[dialogNumber_P]
			dialogNumber_P += 1
		else:
			self.visible = false
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
