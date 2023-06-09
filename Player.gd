extends CharacterBody2D


const SPEED = 100.0
#const JUMP_VELOCITY = -400.0
@onready var sprite = $Sprite2D
const FRICTION = 0.25

func _physics_process(delta):
	get_input()
	move_and_slide()

func get_input():
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	# Make sure diagonal movement isn't faster
	velocity = velocity.normalized() * SPEED

	if Input.is_action_pressed("ui_left"):
		sprite.flip_h = true
	elif Input.is_action_pressed("ui_right"):
		sprite.flip_h = false


