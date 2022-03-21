extends TextEdit

var dialogArtefatos = [
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
	if Classglobal.Scene == "Cena 1" && dialogNumber_A_2 > 0:
		if Input.is_action_just_pressed("cena"):
			load_Artefatos()
			
func load_Artefatos():
	self.visible = true
	if Classglobal.Scene == "Cena 1":
		if dialogNumber_A_2 < 2 && dialogNumber_A < 5:
			self.text = dialogArtefatos[dialogNumber_A][dialogNumber_A_2]
			dialogNumber_A_2 += 1
		else:
			self.visible = false
			dialogNumber_A_2 = 0
			dialogNumber_A += 1
