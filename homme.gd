extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if body.name == "Player":
		get_node("../Player/Camera2D/Commerce").visible = true
		

func _on_body_exited(body):
	if body.name == "Player":
		get_node("../Player/Camera2D/Commerce").visible = false
		get_node("../Player/Camera2D/Inventory").text_msg.text = "" # Replace with function body. # Replace with function body.
		get_node("../Player/Camera2D/Inventory").msg_box.visible = false
		get_node("../Player/Camera2D/Inventory").perso_panel.visible = true
		get_node("../Player/Camera2D/Inventory").coins_box.visible = true
