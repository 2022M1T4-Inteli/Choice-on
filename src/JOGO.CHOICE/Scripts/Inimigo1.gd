extends KinematicBody2D

const GRAVITY = 25
const SPEED = 70

var motion = Vector2(0,0)
var up = Vector2(0,-1)
export var direction = -1
export var detect_cliff = false

func _ready():
	$Floor_Check.position.x = $CollisionShape2D.shape.get_extents().x * direction
	$Floor_Check.enabled = detect_cliff

func _physics_process(delta):
	if is_on_wall() or not $Floor_Check.is_colliding() and is_on_floor() and detect_cliff:
		if direction == 1:
			direction = -1
			$AnimatedSprite.flip_h = false
		else:
			direction = 1
			$AnimatedSprite.flip_h = true
		$Floor_Check.position.x = $CollisionShape2D.shape.get_extents().x * direction

	motion.x = SPEED * direction
	motion.y += GRAVITY

	motion = move_and_slide(motion, up)

func _on_FallzoneMob_body_entered(body):
	#print("morri")
	body.queue_free()

func _on_Top_Check_body_entered(body):
	$AnimatedSprite.play("squashed")
	set_collision_layer_bit(2,false) #deixa de colidir com a plataforma
	$Sides_Check.set_collision_layer_bit(8,false) 
	$Sides_Check.set_collision_mask_bit(0,false) 

func _on_Sides_Check_body_entered(body):
	Classglobal.lives -= 1
	print (Classglobal.lives)
