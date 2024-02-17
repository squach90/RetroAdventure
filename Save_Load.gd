extends Node

const SAVE_FILE = "user://savefile.dat"
@onready var player = preload("res://player.gd").new()

var data = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	if Input.is_action_just_pressed("L"):
			load_data()
	if Input.is_action_just_pressed("M"):
			save_data() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(player.position)

func save_data():
	var player_pos = player.postion
	var coin = get_node("../../../Player/Inventory").coins_value
	var life = player.health
	var file = FileAccess.open(SAVE_FILE, FileAccess.WRITE)
	data = {
		"xPos" = player_pos.x,
		"yPos" = player_pos.y,
		"coins" = coin,
		"life" = life,
	}
	file.store_var(data)
	file = null
	
func load_data():
	var player_pos = get_node("../../../Player").postion
	var coin = get_node("../../../Player/Inventory").coins_value
	var life = get_node("../../../Player/HearthBar").health
	print(coin)
	if not FileAccess.file_exists(SAVE_FILE):
		data = {
			"xPos" = player_pos.x,
			"yPos" = player_pos.y,
			"coins" = coin,
			"life" = life,
		}
		save_data()
	var file = FileAccess.open(SAVE_FILE, FileAccess.READ)
	data = file.get_var()
	get_node("../../../Player").postion.x = player_pos.x
	get_node("../../../Player").postion.y = player_pos.y
	get_node("../../../Player/Inventory").coins_value = coin
	get_node("../../../Player/HearthBar").health = life
	file = null
	
