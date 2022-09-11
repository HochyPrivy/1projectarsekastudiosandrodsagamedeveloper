extends KinematicBody2D

export (int) var speed = 200

onready var imagePlayer = get_node("AnimatedSprite")

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

if velocity.x > 0:
	imagePlayer.flip_h = true
elif velocity.x < 0:
	imagePlayer.flip_h = false
