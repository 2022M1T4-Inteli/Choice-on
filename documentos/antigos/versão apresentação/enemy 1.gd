extends KinematicBody2D

const speed = 60
const gravity = 9.8
const Floor = Vector2(0, -1)

var velocity = Vector2()
var bateu = false
var sentido = "direita"

func _physics_process(delta):
	if is_on_wall() == true:
		bateu = true
		if sentido == "direita":
			sentido = "esquerda"
		else:
			sentido = "direita"
			
	if sentido == "direita":
		velocity.x = speed
	else:
		velocity.x = speed * -1
		
	velocity.y += gravity
		
	velocity = move_and_slide(velocity, Floor)

