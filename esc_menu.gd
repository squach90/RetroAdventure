extends Control

@export var bus_name: String
@export var bus_index: int

const SAVE_FILE = "user://savefile.dat"
@onready var click = $click_03
@onready var music = $music
var data = {}


# Called when the node enters the scene tree for the first time.
func _ready():
	bus_index = AudioServer.get_bus_index(bus_name) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var coin = get_node("../../../Player/Camera2D/Inventory").coins_value
	var player = get_node("../../../Player")
	if Input.is_action_just_pressed("ESC"):
		self.visible = !self.visible
	if Input.is_action_just_pressed("L"):
			load_data()
	if Input.is_action_just_pressed("M"):
			save_data()
	print(player.position)
	print(coin)
	if self.visible == true:
		get_node("../Inventory").visible = false

	


func _on_quit_btn_pressed():
	get_tree().quit() # Replace with function body.


func _on_go_btn_pressed():
	self.visible = false 

func save_data():
	var player = get_node("../../../Player")
	var player_pos = get_node("../../../Player").position
	var coin = get_node("../../../Player/Camera2D/Inventory").coins_value
	var carte = get_node("../../../Player/Camera2D/Commerce").carte_have
	var life = get_node("../../../Player/Camera2D/HearthBar").health
	var file = FileAccess.open(SAVE_FILE, FileAccess.WRITE)
	data = {
		"PosY" = player_pos.y,
		"PosX" = player_pos.x,
		"coins" = coin,
		"life" = life,
		"carte_have" = carte,
	}
	file.store_var(data)
	file = null

	
func load_data():
	var player = get_node("../../../Player")
	var player_pos = get_node("../../../Player").position
	var coin = get_node("../../../Player/Camera2D/Inventory").coins_value
	var carte = get_node("../../../Player/Camera2D/Commerce").carte_have
	var life = get_node("../../../Player/Camera2D/HearthBar").health
	print(coin)
	if not FileAccess.file_exists(SAVE_FILE):
		data = {
			"PosY" = player_pos.y,
			"PosX" = player_pos.x,
			"coins" = coin,
			"Life" = life,
			"carte_have" = carte,
		}
		save_data()
	var file = FileAccess.open(SAVE_FILE, FileAccess.READ)
	data = file.get_var()
	get_node("../../../Player").position.x = data.PosX
	get_node("../../../Player").position.y = data.PosY
	get_node("../../../Player/Camera2D/Commerce").carte_have = data.carte_have
	get_node("../../../Player/Camera2D/Inventory").coins_value = data.coins
	get_node("../../../Player/Camera2D/HearthBar").health = data.life
	file = null
	


func _on_save_btn_pressed():
	save_data() # Replace with function body.


func _on_load_btn_pressed():
	load_data() # Replace with function body.


func _on_volume_value_changed(value):
	get_node("Option/VolumeText").text = str(value) + "0%"# Replace with function body.
	click.volume_db = 1
	music.volume_db = value
	

func _on_go_btn_mouse_entered():
	click.play() # Replace with function body.


func _on_save_btn_mouse_entered():
	click.play() # Replace with function body.


func _on_load_btn_mouse_entered():
	click.play() # Replace with function body.


func _on_quit_btn_mouse_entered():
	click.play() # Replace with function body.


func _on_volume_mouse_entered():
	click.play() # Replace with function body.
