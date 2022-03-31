extends Node2D

func _process(delta):
	if Classglobal.Scene == "Cena 1" and Classglobal.artefato == "I":
		$TabContainer/Artefato_1/RichTextLabel.text = 'Logo de início, é importante ressaltar que a Engenharia de Computação é um curso muito extenso e abrangente, o que permite diferentes atuações. Esse bacharelado oferece uma formação muito completa, que engloba duas principais áreas: a ciência da computação e a engenharia elétrica, que representam predominantemente, o desenvolvimento de software (programas, aplivativos) e de hardware (sistemas físicos), respectivamente.'
	if Classglobal.Scene == "Cena 1" and Classglobal.artefato == "E":
		$TabContainer/Artefato_2/RichTextLabel.text = "O engenheiro de computacao e capaz de fazer o projeto e a programacao de um hardware"
	if Classglobal.Scene == "Cena 1" and Classglobal.artefato == "I2":
		$TabContainer/Artefato_3/RichTextLabel.text = "O engenheiro de computacao estuda tanto a parte de hardware como a de software."
	if Classglobal.Scene == "Cena 1" and Classglobal.artefato == "T":
		$TabContainer/Artefato_4/RichTextLabel.text = "Dentre os quatro cursos de tecnologia, o engenheiro de computacao e aquele que, ao final da graduacao, tera o melhor preparo para trabalhar com robotica."
	if Classglobal.Scene == "Cena 1" and Classglobal.artefato == "N":
		$TabContainer/Artefato_5/RichTextLabel.text = "Sistemas embarcados sao uma combinacao de hardware e software que sao designados para cumprir funcoes especificas. Um sistema embarcado pode ser entendido como um computador projetado especificamente para cumprir uma determinada funcao. Exemplos de sistemas embarcados sao o microchip de controle do ar condicionado, o piloto automatico de um carro e os computadores de bordo de aeronaves e de satelites."

