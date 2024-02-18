extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.monitoring = false # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "Player":
		get_node("../Player").position = Vector2(4160, 1456)
