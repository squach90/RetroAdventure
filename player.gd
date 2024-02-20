extends CharacterBody2D


@export var speed = 100
@onready var animated_sprite = $AnimatedSprite2D
@onready var can_move = null

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	if input_direction.x < 0:
		animated_sprite.play("gauche")
	elif input_direction.x > 0:
		animated_sprite.play("droite")
	elif input_direction.y < 0:
		animated_sprite.play("droite")
	elif input_direction.y > 0:
		animated_sprite.play("droite")
	else:
		animated_sprite.play("vide")
		
	if Input.is_action_pressed("shift"):
		speed = 150
	else:
		speed = 100

func _physics_process(delta):
	print(can_move)
	if can_move == true:
		move_and_slide()
		get_input()
