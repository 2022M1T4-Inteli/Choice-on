extends KinematicBody2D

var motion = Vector2()
var direction = 1
var bounces = 0

const SPEED = 500
const GRAVITY = 25
const BOUNCE = -360

func _ready():
	motion.x = SPEED * direction

func _physics_process(delta):
	
	$Sprite.rotation_degrees += 25 * direction
	
	motion.y += GRAVITY
		
	if is_on_wall():
		queue_free()

	if is_on_floor():
		if bounces < 5:
			motion.y = BOUNCE
			bounces += 1
		else:
			queue_free()
		
	motion = move_and_slide(motion, Vector2.UP)
	
#func kill():
	
