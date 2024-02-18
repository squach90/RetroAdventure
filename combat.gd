extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_attack_btn_pressed():
	if get_node("Magic").visible == true:
		get_node("Magic").visible = !get_node("Magic").visible
	get_node("Attack").visible = !get_node("Attack").visible
	 # Replace with function body.


func _on_magic_btn_pressed():
	if get_node("Attack").visible == true:
		get_node("Attack").visible = !get_node("Attack").visible
	get_node("Magic").visible = !get_node("Magic").visible # Replace with function body.


func _on_quit_btn_pressed():
	get_node("../Player").position = Vector2(0, 14)
	get_node("../Player").visible = true
	get_node("../Player").can_move = true # Replace with function body.


func _on_bomb_btn_pressed():
	get_node("../Grand_monstre").health -= 40
	get_node("../Grand_monstre2").health -= 40 # Replace with function body.


func _on_thunder_btn_pressed():
	get_node("../Grand_monstre").health -= 30
	get_node("../Grand_monstre2").health -= 30 # Replace with function body.


func _on_lion_btn_pressed():
	get_node("../Grand_monstre").health -= 50
	get_node("../Grand_monstre2").health -= 50 # Replace with function body.


func _on_life_btn_pressed():
	get_node("../Player/Camera2D/HearthBar").health += 10
	get_node("HearthBar").health += 10 # Replace with function body.


func _on_poison_btn_pressed():
	get_node("../Grand_monstre").health -= 30
	get_node("../Grand_monstre2").health -= 50 # Replace with function body.


func _on_sun_btn_pressed():
	get_node("../Grand_monstre").health -= 5
	get_node("../Grand_monstre2").health -= 5
