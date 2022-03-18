extends KinematicBody2D

const SPEED = 60
const GRAVITY = 25

var motion = Vector2(0,0)
var up = Vector2(0,-1)
var direction = 1


func _physics_process(delta):

	if is_on_wall() == true:

		if direction == 1:
			direction = 0
		else:
			direction = 1

	if direction == 1:
		motion.x = SPEED
	else:
		motion.x = -SPEED 

	motion.y += GRAVITY

	motion = move_and_slide(motion, up)

func _on_FallzoneMob_body_entered(body):
	print("morri")
	body.queue_free()
#	MobSpawner.limite += 1
