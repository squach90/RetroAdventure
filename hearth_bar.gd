extends Control

@onready var progressBar = $TextureProgressBar
@onready var health = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progressBar.value = health
	if Input.is_action_just_pressed("P"):
		health -= 10
	if health == 0 or health <= 0:
		get_node("../../../Player/Camera2D/DeathScreen").visible = true
