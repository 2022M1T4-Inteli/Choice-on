extends Node
var enemyScene = load("res://Cenas/Inimigo.tscn")
var rand = RandomNumberGenerator.new()
#var limite = 100

func _ready():
	pass

func _on_Timer_timeout():
#	print(limite)
#	if limite != 0:
		var enemy = enemyScene.instance()
		rand.randomize() 
		var x = rand.randf_range(0, 1500)
		enemy.position.y = 500
		enemy.position.x = x
#		enemy.detect_cliffs = false
		add_child(enemy)
#		limite -= 1
