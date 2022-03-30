extends RichTextLabel

var dialogArtefatos_1 = [
	["Duas principais áreas que englobam a engenharia de computação", "Logo de início, é importante ressaltar que a Engenharia de Computação é um curso muito extenso e abrangente, o que permite diferentes atuações.", "Esse bacharelado oferece uma formação muito completa, que engloba duas principais áreas: a ciência da computação e a engenharia elétrica, que representam predominantemente,", "o desenvolvimento de software (programas, aplivativos) e de hardware (sistemas físicos), respectivamente."], 
	["Uma possível área de atuação de um engenheiro de computação", "Você já viu que um engenheiro de computação conhece bastante de hardware a software.", "Por isso, dentre os quatro cursos de bacharelado na computação, o engenheiro de computação é aquele que terá o melhor preparo para trabalhar com robótica, que é uma área que envolve engenharia, a computação e a eletricidade.", "E aí, já pensou em construir e programar um robô para destruir essas slimes verdes que vem por ai?"], 
	[" Artefato 3", "O engenheiro de computacao estuda tanto a parte de hardware como a de software."], 
	[" Artefato 4", "Dentre os quatro cursos de tecnologia, o engenheiro de computacao e aquele que, ao final da graduacao, tera o melhor preparo para trabalhar com robotica."], 
	[" Artefato 5", "Sistemas embarcados sao uma combinacao de hardware e software que sao designados para cumprir funcoes especificas. Um sistema embarcado pode ser entendido como um computador projetado especificamente para cumprir uma determinada funcao. Exemplos de sistemas embarcados sao o microchip de controle do ar condicionado, o piloto automatico de um carro e os computadores de bordo de aeronaves e de satelites."]]
 
var dialogArtefatos_2 = [
	[" Artefato 1", "Engenharia de Computacao esta na interseccao entre Ciencia da Computacao e Engenharia Eletrica."], 
	[" Artefato 2", "O engenheiro de computacao e capaz de fazer o projeto e a programacao de um hardware."], 
	[" Artefato 3", "O engenheiro de computacao estuda tanto a parte de hardware como a de software."], 
	[" Artefato 4", "Dentre os quatro cursos de tecnologia, o engenheiro de computacao e aquele que, ao final da graduacao, tera o melhor preparo para trabalhar com robotica."], 
	[" Artefato 5", "Sistemas embarcados sao uma combinacao de hardware e software que sao designados para cumprir funcoes especificas. Um sistema embarcado pode ser entendido como um computador projetado especificamente para cumprir uma determinada funcao. Exemplos de sistemas embarcados sao o microchip de controle do ar condicionado, o piloto automatico de um carro e os computadores de bordo de aeronaves e de satelites."]]
	
var dialogNumber_A = 0
var dialogNumber_A_2 = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	pass 
	
func _process(delta):
	if (Classglobal.Scene == "Cena 1" || Classglobal.Scene == "Cena 2") && dialogNumber_A_2 > 0:
		if Input.is_action_just_pressed("cena"):
			load_Artefatos()
			
func load_Artefatos():
	self.visible = true
	if Classglobal.Scene == "Cena 1":
		if dialogNumber_A_2 < 4 && dialogNumber_A < 5:
			self.text = dialogArtefatos_1[dialogNumber_A][dialogNumber_A_2]
			dialogNumber_A_2 += 1
		else:
			self.visible = false
			dialogNumber_A_2 = 0
			dialogNumber_A += 1
	if Classglobal.Scene == "Cena 2":
		if dialogNumber_A_2 < 2 && dialogNumber_A < 5:
			self.text = dialogArtefatos_2[dialogNumber_A][dialogNumber_A_2]
			dialogNumber_A_2 += 1
		else:
			self.visible = false
			dialogNumber_A_2 = 0
			dialogNumber_A += 1
