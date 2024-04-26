extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D
var speed = 100
var player
var can_move = true

func _ready():
	player = get_node("../Player")

func _physics_process(delta):
	print(self.position)
	var direction = player.global_position - global_position
	direction = direction.normalized()
	velocity = direction * speed
	if direction.x < 0:
		animated_sprite.play("gauche")
	elif direction.x > 0:
		animated_sprite.play("droite")
	elif direction.y < 0:
		animated_sprite.play("droite")
	elif direction.y > 0:
		animated_sprite.play("droite")
	else:
		animated_sprite.play("default")
	if can_move == true:
		move_and_slide()


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		get_node("../Player").can_move = false
		get_node("../Player").visible = false
		get_node("../Player").position = Vector2(8033, 1630)
		self.queue_free() # Replace with function body.
