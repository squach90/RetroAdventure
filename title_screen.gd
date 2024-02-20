extends Control
@onready var click = $click_03

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("../../../Player").can_move = false
	$Panel/PlayPanel/PlayBtn.grab_focus() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_btn_pressed():
	get_node("../../../Player").can_move = true
	self.visible = false # Replace with function body.


func _on_quit_btn_pressed():
	get_tree().quit() # Replace with function body.


func _on_load_btn_pressed():
	self.visible = false
	get_node("../../Camera2D/ESCMenu").load_data() # Replace with function body.


func _on_quit_btn_mouse_entered():
	click.play() # Replace with function body.


func _on_play_btn_mouse_entered():
	click.play() # Replace with function body.


func _on_load_btn_mouse_entered():
	click.play() # Replace with function body.
