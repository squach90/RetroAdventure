extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "Player":
		get_node("../Player").position = Vector2(2208, 352)
