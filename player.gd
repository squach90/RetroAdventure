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
	var screen_size = DisplayServer.window_get_size()
	print(DisplayServer.window_get_size())
	
	if screen_size.x == 1920 and screen_size.y == 1080 or screen_size.x <= 1920 and screen_size.y <= 1080:
		get_node("../Player/Camera2D").zoom = Vector2(5,5)
		print(screen_size)
	if screen_size.x == 1280 and screen_size.y == 720 or screen_size.x <= 1280 and screen_size.y <= 720:
		get_node("../Player/Camera2D").zoom = Vector2(3.5,3.5)
		print(screen_size)
	print(can_move)
	if can_move == true:
		move_and_slide()
		get_input()
