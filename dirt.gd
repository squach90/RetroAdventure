extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	get_node("../Player/Camera2D/Inventory").visible = true
	get_node("../Player/Camera2D/Inventory").perso_msg.text = "???"
	get_node("../Player/Camera2D/Inventory").text_msg.text = "Salutation voyageurs,\nBienvenue dans RetroAdventure,\ndans ce monde tu vas découvrir\nplein de chose magique et\nparanormales :)" # Replace with function body.

func _on_body_exited(body):
	self.queue_free()
	get_node("../Player/Camera2D/Inventory").text_msg.text = "" # Replace with function body. # Replace with function body.
	get_node("../Player/Camera2D/Inventory").msg_box.visible = false
	get_node("../Player/Camera2D/Inventory").perso_panel.visible = true
	get_node("../Player/Camera2D/Inventory").coins_box.visible = true
