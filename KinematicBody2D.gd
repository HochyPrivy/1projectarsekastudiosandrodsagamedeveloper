extends KinematicBody2D

var speed = 40
var jumpForce = 400
var gravity = 400

var vel = Vector2()

onready var imagePlayer = get_node("Sprite")

# warning-ignore:unused_argument
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		vel.x -= speed
	elif Input.is_action_pressed("ui_right"):
		vel.x += speed

	vel.y += gravity * delta

	if Input.is_action_pressed("ui_up") and is_on_floor():
		vel.y -= jumpForce

	vel = move_and_slide(vel, Vector2.UP)
	vel.x = lerp(vel.x, 0, 0.2)

	if vel.x > 0:
		imagePlayer.flip_h = true
	elif vel.x < 0:
		imagePlayer.flip_h = false
