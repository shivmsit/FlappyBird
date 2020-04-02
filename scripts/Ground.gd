#script: ground

extends StaticBody2D

onready var bottom_right = get_node("bottom_right")
onready var camera = utils.get_main_node().get_node("Camera")
signal distroyed

func _ready():
	pass # Replace with function body.

func _process(delta):
	if bottom_right.get_global_position().x <= camera.get_total_pos().x:
		queue_free()
	pass
