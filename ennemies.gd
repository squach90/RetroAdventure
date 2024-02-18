extends CharacterBody2D

var speed = 100
var player

func _ready():
	player = get_node("../Player")

func _physics_process(delta):
	var direction = player.global_position - global_position
	direction = direction.normalized()
	velocity = direction * speed
	move_and_slide()


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		get_node("../Player").can_move = false
		get_node("../Player").visible = false
		get_node("../Player").position = Vector2(8033, 1630)
		self.queue_free() # Replace with function body.
