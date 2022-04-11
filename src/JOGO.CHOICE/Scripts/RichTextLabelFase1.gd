extends RichTextLabel

var dialogArtefatos_1 = [
	[" Duas principais áreas que englobam a engenharia de computação", "Logo de início, é importante ressaltar que a Engenharia de Computação é um curso muito extenso e abrangente, o que permite diferentes atuações.", "Esse bacharelado oferece uma formação muito completa, que engloba duas principais áreas: a ciência da computação e a engenharia elétrica, que representam predominantemente,", "o desenvolvimento de software (programas, aplicativos) e de hardware (sistemas físicos), respectivamente."],
	[" Uma possível área de atuação de um engenheiro de computação", "Você já viu que um engenheiro de computação conhece bastante de hardware a software.", "Por isso, dentre os quatro cursos de bacharelado na computação, o engenheiro de computação é aquele que terá o melhor preparo para trabalhar com robótica, que é uma área que envolve engenharia, a computação e a eletricidade.", "E aí, já pensou em construir e programar um robô para destruir essas slimes verdes que vem por ai?"],
	[" O que você encontrará na gradução", "Uma dos conteúdos mais conhecidos e clássicos da engenharia de computação é o que aborda os sistemas embarcados. Não se assuste pelo nome, irei te explicar.","Esses sistemas são uma combinação de hardware (parte física do sistema) e software (a mente do sistema) que são designados para cumprir alguma função específica.", "É como se fosse um computador que possui uma única função. Na vida real, vemos que esses sistemas vão desde um controle remoto até os computadores de bordo de aeronaves e de satélites e pilotos automáticos de automóveis."],
	[" Ciências humanas na Engenharia?", "Um engenheiro, mais do que outros profissinais da computação, precisa diariamente lidar com questões éticas e morais.", "Esse profissional na maioria das vezes está envolvido com problemas do dia a dia, que impactam diretamente ou indiretamente a sociedade. Desse modo, um engenheiro da computação têm de ter como base a ética e a moral para tomar decisões", "Essas decisoes podem causar grandes impactos no mundo, mas ao longo da jornada obterá base para tomar-las da maneira correta."],
	[" Como é o mercado de trabalho para essa profissão? Essa parte é bem atrativa.", "É fato que a sociedade se aprofunda dia após dia no mundo digital, e um dos atores que possibilitam isso são os engenheiros da computação.","Por isso, esse é um profissional cada vez mais requisitado, em todos os setores que englobam a sociedade, desde a área de telecomunicações até a indústria automobilística e aeronáutica", "Se você pensa em seguir nessa área, oportunidades não irão faltar!"]]
 
#var dialogArtefatos_2 = [
#	[" Artefato 1", "Engenharia de Computacao esta na interseccao entre Ciencia da Computacao e Engenharia Eletrica."], 
#	[" Artefato 2", "O engenheiro de computacao e capaz de fazer o projeto e a programacao de um hardware."], 
#	[" Artefato 3", "O engenheiro de computacao estuda tanto a parte de hardware como a de software."], 
#	[" Artefato 4", "Dentre os quatro cursos de tecnologia, o engenheiro de computacao e aquele que, ao final da graduacao, tera o melhor preparo para trabalhar com robotica."], 
#	[" Artefato 5", "Sistemas embarcados sao uma combinacao de hardware e software que sao designados para cumprir funcoes especificas. Um sistema embarcado pode ser entendido como um computador projetado especificamente para cumprir uma determinada funcao. Exemplos de sistemas embarcados sao o microchip de controle do ar condicionado, o piloto automatico de um carro e os computadores de bordo de aeronaves e de satelites."]]


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	pass 
	
func _process(delta):
	if (Classglobal.Scene == "Cena 1" || Classglobal.Scene == "Cena 2") && Classglobal.dialogNumber_A_2 > 0: 
		if Input.is_action_just_pressed("ui_accept"):
			load_Artefatos()
			
func load_Artefatos():
	self.visible = true
	Classglobal.frozen = true
	if Classglobal.Scene == "Cena 1":
		if Classglobal.dialogNumber_A_2 < 4 && Classglobal.dialogNumber_A < 5:
			self.text = dialogArtefatos_1[Classglobal.dialogNumber_A][Classglobal.dialogNumber_A_2]
			Classglobal.dialogNumber_A_2 += 1
		else:
			self.visible = false
			Classglobal.frozen = false
			Classglobal.dialogNumber_A_2 = 0
			Classglobal.dialogNumber_A += 1
#	if Classglobal.Scene == "Cena 2":
#		if dialogNumber_A_2 < 2 && dialogNumber_A < 5:
#			self.text = dialogArtefatos_2[dialogNumber_A][dialogNumber_A_2]
#			dialogNumber_A_2 += 1
#		else:
#			self.visible = false
#			dialogNumber_A_2 = 0
#			dialogNumber_A += 1
