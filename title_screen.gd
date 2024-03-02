extends Control
@onready var click = $click_03

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("../../../Player").can_move = false
	$Panel/PlayPanel/PlayBtn.grab_focus() # Replace with function body.
	
	
func _process(delta):
	var screen_size = DisplayServer.window_get_size()
	print(DisplayServer.window_get_size())
	
	if screen_size.x == 1920 and screen_size.y == 1080 or screen_size.x <= 1920 and screen_size.y <= 1080:
		get_node("../../Camera2D").zoom = Vector2(5,5)
		print(screen_size)
	if screen_size.x == 1280 and screen_size.y == 720 or screen_size.x <= 1280 and screen_size.y <= 720:
		get_node("../../Camera2D").zoom = Vector2(3.5,3.5)
		print(screen_size)
	if screen_size.x == 800 and screen_size.y == 600 or screen_size.x <= 800 and screen_size.y <= 600:
		get_node("../../Camera2D").zoom = Vector2(2.2,2.2)
		print(screen_size)
	
		
	if Input.is_action_just_pressed("toggle_fullscreen"):
		if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)


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
