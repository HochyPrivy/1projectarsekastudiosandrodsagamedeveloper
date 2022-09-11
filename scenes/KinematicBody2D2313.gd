extends KinematicBody2D

var speed = 10
var jumpForce = 400
var gravity = 10
var can_doublejump = false

var vel = Vector2()

onready var imagePlayer = get_node("Sprite")

# warning-ignore:unused_argument
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		vel.x -= speed
	elif Input.is_action_pressed("ui_right"):
		vel.x += speed

	vel.y += gravity * delta

	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		vel.y -= jumpForce
		can_doublejump = true
	if !is_on_floor() and can_doublejump and Input.is_action_just_pressed("ui_up"): 
		vel.y -= jumpForce 
		can_doublejump = false



	vel = move_and_slide(vel, Vector2.UP)
	vel.x = lerp(vel.x, 0, 0.2)

	if vel.x > 0:
		imagePlayer.flip_h = true
	elif vel.x < 0:
		imagePlayer.flip_h = false
