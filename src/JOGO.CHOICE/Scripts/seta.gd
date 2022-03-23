extends AnimatedSprite

var displayValue = 0

onready var timer = get_parent().get_node("SetaTimer")

func _ready():
	timer.set_wait_time(5)
	timer.start()

	
	pass 

func _on_SetaTimer_timeout():
	displayValue += 1
	
	if (displayValue > 5):
		$setas.queue_free()
