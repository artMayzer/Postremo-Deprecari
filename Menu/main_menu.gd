extends Control


@onready var scene_changer = get_tree()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	#var scene_changer = get_tree().get_root()
	scene_changer.change_scene_to_file("res://tutorial.tscn")


func _on_button_5_pressed():
	get_tree().quit()


func _on_button_4_pressed():
	scene_changer.change_scene_to_file("res://Menu/developer.tscn")
