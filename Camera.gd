extends Camera2D

var player = null
var camera_offset = Vector2(0, 0)
var camera_speed = 0.1

func _ready():
	player = get_parent().get_node("Player")

func _process(delta):
	var target_position = player.position + camera_offset
	position = position.lerp(target_position, camera_speed)
