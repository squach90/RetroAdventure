extends Control

@onready var coins_value = 0
@onready var coins_text = $CoinBox/Value_text
@onready var text_msg = $MSGBox/Text
@onready var perso_msg = $MSGBox/Perso
@onready var msg_box = $MSGBox
@onready var perso_panel = $PersoPanel
@onready var coins_box = $CoinBox



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	coins_text.text = str(coins_value)
	if Input.is_action_just_pressed("I"):
			self.visible = !self.visible
