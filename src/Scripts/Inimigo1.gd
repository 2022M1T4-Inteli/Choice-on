extends KinematicBody2D

const SPEED = 60
const GRAVITY = 25

var motion = Vector2(0,0)
var up = Vector2(0,-1)
var direction = 1 #variavel para indicar direcao do mob


func _physics_process(delta):

	if is_on_wall() == true: #quando o personagem entra em contato com uma parede, muda o valor da variavel.

		if direction == 1:
			direction = 0
		else:
			direction = 1

	if direction == 1:		#essa condicao delimitada pela variavel direction, aplica o devido movimento ao mob
		motion.x = SPEED
	else:
		motion.x = -SPEED 

	motion.y += GRAVITY

	motion = move_and_slide(motion, up)
