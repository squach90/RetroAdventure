extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "Player":
		var coin_value = get_node("../Player/Camera2D/Inventory")
		coin_value.coins_value += 1  # Remplacez par le chemin correct vers le nœud Singleton
		queue_free() # Replace with function body.
