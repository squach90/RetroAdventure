extends CharacterBody2D

var rail_direction = Vector2.ZERO 
var speed = 100 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	# Déterminer la direction de déplacement
	var direction = rail_direction.normalized()
	
	# Calculer la vélocité en fonction de la direction des rails et de la vitesse
	velocity = direction * speed
	
	# Déplacer le wagonnet en utilisant la vélocité
	move_and_slide()
