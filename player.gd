extends CharacterBody2D
class_name Player

var speed = 250
var rotation_speed = 2.0

var rotation_dir = 0

func get_input():
	rotation_dir = 0
	velocity = Vector2.ZERO
	if Input.is_action_pressed("right"):
		rotation_dir += 1
	if Input.is_action_pressed("left"):
		rotation_dir -= 1
	if Input.is_action_pressed("forward"):
		velocity += transform.x * speed
	if Input.is_action_pressed("back"):
		velocity -= transform.x * speed

func _physics_process(delta):
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	move_and_slide()


