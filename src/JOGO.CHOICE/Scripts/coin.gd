extends Area2D

#funcao para deletar as moedas do mapa e adicionar-las ao espólio 
func _on_coin_body_entered(body):
	queue_free()
	Classglobal.coins += 1
#	print(Classglobal.coins)
