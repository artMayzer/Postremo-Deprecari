extends Node


var piska = false
var scene_stack = []  # Масив для збереження стеку сцен
# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().change_scene_to_file("res://Menu/main_menu.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	
	if event.is_action_pressed("ui_cancel"):
		act_pause()
	
		#open_menu()
func act_pause():
	if get_tree().paused:
		get_tree().paused = false
	else:
		get_tree().paused = true
