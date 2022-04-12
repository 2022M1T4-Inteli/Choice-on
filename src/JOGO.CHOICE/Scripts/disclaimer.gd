extends Control
var timer = null
export var scene_to_go_two = ''
#aqui um timer é setado para passar a cena automaticamente apos 15 segundos
func _ready():
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(15)
	timer.connect("timeout", self, "on_timeout")
	add_child(timer)
	timer.start()

func on_timeout():
	Transition.fade_into(scene_to_go_two)
