extends Control

@onready var coins_value = 0
@onready var coins_text = $CoinBox/Value_text

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	coins_text.text = str(coins_value)
	print(coins_value)
	if Input.is_action_just_pressed("I"):
			self.visible = !self.visible
