extends Control

var perguntas = ["Essa é uma lista dos projetos recém feitos pelos professores que frequentam o Jardim Flutuante do Inteli: veículo terrestre autônomo, aplicações para celulares, inteligência artificial para jogos digitais, gerenciamento e análise de big data. Quero que você analise as seguintes afirmações acerca da atuação de um engenheiro de computação nesses projetos e marque a correta, ou melhor, a mais correta, rs.", 
"Como você viu, essas gosmas verdes ficam surgindo a todo instante aqui no Jardim Flutuante do Inteli… Ninguém mais aguenta elas. Estava precisando de um canhão inteligente que mire automaticamente e exploda esses bichinhos insuportáveis. O engenheiro que está em minha equipe está um pouco confuso em relação a como implementar isso. Qual o melhor modo para implementar essa função?"]

var respostas = [["a) Um engenheiro de computação poderia atuar em todos os projetos citados, pois todos envolvem hardware, software, ou os dois combinados. ",
				  "b) Um engenheiro de computação pode atuar na construção de um veículo terrestre autônomo, pois envolve hardware (o veículo) e software (a inteligência do veículo).", 
				  "c) O engenheiro de computação só conseguiria fazer com 100% de eficiência o veículo terrestre autônomo, pois é o único dos projetos que, além de software, envolve hardware.", 
				  "d)  Não é ideal que um engenheiro desenvolva um aplicativo para celular, já que esse projeto não envolve nada de hardware, apenas software."],
				 ["a) Utilizando sistemas embarcados, que são sistemas físicos desenvolvidos para uma função específica que possuem um computador anexado a eles.", 
				  "b) Utilizar IoT (Internet das coisas) para detectar aparelhos nas gosmas e fazer a mira seguir esse sinal", 
				  "c) Por meio de sistemas embarcados, que são sistemas físicos com propósito geral que possuem um software associado a eles. ", 
				  "d) Criar um software e transmiti-lo via bluetooth para o canhão"]]

var pergIndex = 0

var respIndex = 0
var respIndex_2 = 0

var respondeu = 0

func _physics_process(delta):
	if Classglobal.quiz == true: 
		self.visible = true
		$RichTextLabel.text = perguntas[pergIndex]
		$Buttons/Button/Resposta1.text = respostas[respIndex][respIndex_2]
		$Buttons/Button2/Resposta2.text = respostas[respIndex][respIndex_2 + 1]
		$Buttons/Button3/Resposta3.text = respostas[respIndex][respIndex_2 + 2]
		$Buttons/Button4/Resposta4.text = respostas[respIndex][respIndex_2 + 3]

func _on_Button_pressed():
	if respondeu == 0:
		respondeu += 1
		pergIndex += 1
		respIndex += 1
	elif respondeu == 1:
		Classglobal.lives = 0
		$Buttons.visible = false
		Classglobal.quiz = false

func _on_Button2_pressed():
	if respondeu == 0:
			Classglobal.lives = 0
			$Buttons.visible = false
			Classglobal.quiz = false
	elif respondeu == 1:
			Classglobal.lives = 0
			$Buttons.visible = false
			Classglobal.quiz = false

func _on_Button3_pressed():
	if respondeu == 0:
		Classglobal.lives = 0
		$Buttons.visible = false
		Classglobal.quiz = false
	elif respondeu == 1:
		Classglobal.lives = 0
		$Buttons.visible = false
		Classglobal.quiz = false

func _on_Button4_pressed():
	if respondeu == 0:
		Classglobal.lives = 0
		$Buttons.visible = false
		Classglobal.quiz = false
	elif respondeu == 1:
		$RichTextLabel.text = "Você Acertou!!, passe pelo portal!"
		$Buttons.visible = false
		Classglobal.frozen = false
		Classglobal.passarfase = true
		Classglobal.quiz = false


func _on_Button5_pressed():
	if Classglobal.coins >= 20:
		Classglobal.coins -= 20
		$Buttons/Button4/Resposta4.text = ' '
		$Buttons/Button3/Resposta3.text = ' '

