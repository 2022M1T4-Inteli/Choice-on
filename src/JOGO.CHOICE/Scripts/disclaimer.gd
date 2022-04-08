extends Control

var timer = null

export var scene_to_go_two = ''

# Called when the node enters the scene tree for the first time.
func _ready():
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(10)
	timer.connect("timeout", self, "on_timeout")
	add_child(timer)
	timer.start()
	
	
func on_timeout():
	Transition.fade_into(scene_to_go_two)
