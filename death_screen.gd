extends Control
@onready var click = $click_03
@onready var game_over = $"Game-Over"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_quit_btn_pressed():
	get_tree().quit() # Replace with function body.


func _on_quit_btn_mouse_entered():
	click.play()
	game_over.play() # Replace with function body.
