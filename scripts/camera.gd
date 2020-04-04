#script: camera

extends Camera2D

#onready var bird = get_node("../Bird")
onready var bird = utils.get_main_node().get_node("bird")

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	position = Vector2(bird.position.x, position.y)
	pass

func get_total_pos():
	return position + offset;
