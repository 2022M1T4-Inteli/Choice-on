extends Control

var dialogProfessor = [
	" Arggg... Que droga! Não acredito que isso aconteceu... Ainda bem que você veio. ",
	" Desculpe o estresse, é que estou meio encrencado. Há meses venho trabalhando em um projeto gigante de engenharia de computação, algo que mudará o mundo.",
	" Mas ontem aconteceu algo que atrapalhou todo o andamento desse plano...",
	" Estava de passagem pelo Jardim Flutuante do Inteli e acabei perdendo algumas peças importantíssimas para o projeto. Agora, preciso urgentemente de sua ajuda para recuperá-las.",
	' Toda vez que você coletar uma peça, te ensinarei algo novo sobre o curso de engenharia da computação.',
	' Mas precisamos combinar uma coisa: preste muita atenção a tudo o que será dito, pois ao fim do Jardim, você precisará responder corretamente a algumas perguntas do Oráculo Inteliano para passar de fase.',
	' Ao longo de sua jornada, você poderá abrir um mini mapa apertando a tecla “M”, em que você verá a localização das peças, circuladas de amarelo.',
	' Além disso, é possível consultar a qualquer momento a explicação associada a cada peça acessando o inventário, apertando a tecla “I”.',
	' Aprenda, se divirta, mas tenha muito cuidado, em alguns momentos o caminho é perigoso, o Jardim está cheio de gosmas verdes que podem te machucar. Para matá-las, pule em suas cabeças ou atire uma bola de fogo apertando a tecla “F”.',
	'Fique tranquilo, esses comandos aparecerão no canto direito da tela para você consultar sempre que necessário.',
	'Ah, ia quase me esquecendo, caso você consiga coletar 20 moedas, você poderá utilizar uma bomba que eliminará duas das quatro alternativas em uma das perguntas do quiz. Boa sorte, meu jovem!'
]
 
var dialogDiretor = [
	' Olha só,  você por aqui! É um prazer enorme recebê-lo na feira de profissões do Inteli.',
	' A feira está acontecendo faz 5 dias, mas hoje é o dia mais agitado. Muitas coisas estão acontecendo... ',
	' inovações surgindo, empresas sendo criadas e muita animação pairando pelo ar. Então porque você não aproveita para explorar o ambiente e, principalmente, para conversar com algum dos nossos professores.', 
	' Se você possuir interesse e vontade de aprender, quem sabe ele não entrega uma tarefa para você resolver?',
	'Se eu fosse você, começaria indo para a tenda do professor Merlock... Volte e meia ele aparece com uns desafios bem curiosos e recheados de conhecimento.',
	'Ela fica bem ali em cima, à esquerda. Aproveite muito essa jornada e... muita atenção (a tudo). Boa sorte!'
]


var dialogNumber_P = 0
var dialogNumber_D = 0


func _ready():
	self.visible = false
	pass

func _process(delta):
	if Classglobal.Scene == "feira" or Classglobal.Scene == "professor":
		if Input.is_action_just_pressed("ui_accept"):
			load_dialog()

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
			Classglobal.professorf = true
			self.visible = false
			Classglobal.frozen = false

