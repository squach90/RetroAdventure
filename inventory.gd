extends Control

@onready var coins_value = 10
@onready var coins_text = $CoinBox/Value_text
@onready var text_msg = $MSGBox/Text
@onready var perso_msg = $MSGBox/Perso
@onready var msg_box = $MSGBox
@onready var perso_panel = $PersoPanel
@onready var coins_box = $CoinBox


func _ready():
	pass

func _process(delta):
	coins_text.text = str(coins_value)
	if Input.is_action_just_pressed("I"):
			self.visible = !self.visible
