extends Control

var carte_have = false
var cle_have = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var coins = get_node("../Inventory").coins_value
	if carte_have == true:
		TP_Carte()
	if Input.is_action_just_pressed("Money -"):
		coins -= 1


func _on_item_list_item_selected(index):
	var coins = get_node("../Inventory").coins_value
	var selected_item = $Panel/ItemList.get_item_text(index)
	print(selected_item)
	match selected_item:
		" +10% VIE :                   3 coins":
			if coins == 3 or coins >= 3:
				print("+10% de vie acheter")
				get_node("../Inventory").coins_value -= 3
				get_node("../HearthBar").health += 10
			else :
				get_node("Panel/NoMoney").visible = !get_node("Panel/NoMoney").visible
				print("Vous n'avez pas assez d'argent pour acheter cela.")
		" Clé du chateau :    4 coins":
			if coins == 4 or coins >= 4:
				print("Clé du chateau acheté")
				cle_have = true
				##FIXME: Faire disparraitre le dirt du chateau
				get_node("../Inventory").coins_value -= 4
			else :
				get_node("Panel/NoMoney").visible = !get_node("Panel/NoMoney").visible
				print("Vous n'avez pas assez d'argent pour acheter cela.")
		" Carte de Tp :            5 coins":
			if coins == 5 or coins >= 5:
				print("Carte acheté. Appuier sur T pour vous téléporter")
				carte_have = true
				get_node("../Inventory").coins_value -= 5
			else :
				get_node("Panel/NoMoney").visible = !get_node("Panel/NoMoney").visible
				print("Vous n'avez pas assez d'argent pour acheter cela.")# Replace with function body.

func TP_Carte():
	var player = get_node("../../../Player")
	if Input.is_action_just_pressed("TP_Carte"):
		player.position = Vector2(0, 14)


func _on_quit_pressed():
	get_node("Panel/NoMoney").visible = !get_node("Panel/NoMoney").visible# Replace with function body.
