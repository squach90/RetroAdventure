extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_btn_pressed():
	self.visible = false # Replace with function body.


func _on_quit_btn_pressed():
	get_tree().quit() # Replace with function body.


func _on_load_btn_pressed():
	self.visible = false
	get_node("../../Camera2D/ESCMenu").load_data() # Replace with function body.