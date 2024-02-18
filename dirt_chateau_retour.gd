extends Area2D


func _ready():
	pass


func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "Player":
		get_node("../Player").position = Vector2(-401, 408)
