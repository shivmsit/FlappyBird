extends StaticBody2D


onready var right = get_node("right")
onready var camera = utils.get_main_node().get_node("Camera")


func _ready():
	pass # Replace with function body.

func _process(delta):
	if right.get_global_position().x <= camera.get_total_pos().x:
		queue_free()
	pass