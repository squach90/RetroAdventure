extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Dialogic.VAR.End == 0:
		get_node("../Player").can_move = true
		get_node("../ennemies").can_move = true
	else:
		get_node("../Player").can_move = false
		get_node("../ennemies").can_move = false

func _on_body_entered(body):
	if body.name == "Player":
		Dialogic.start("Princesse_story")

func _on_body_exited(body):
	pass
