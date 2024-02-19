extends Area2D

@onready var health = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	if health == 0 or health <= 0: # Replace with function body.
		get_node("../Player").position = Vector2(0, 14)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$ProgressBar.value = health
	if health == 0 or health <= 0:
		self.queue_free()
		get_node("../Player").can_move = true
		get_node("../Player").visible = true
		get_node("../Player/Camera2D/Inventory").coins_value += 5
		get_node("../Player").position = Vector2(0, 14)
		get_node("../Combat").number_of_use = 3


func _on_button_pressed():
	get_node("../Combat").selected_mob = 1
	
