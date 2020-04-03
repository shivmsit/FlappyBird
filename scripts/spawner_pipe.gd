#scripts: spawner_pipe
 
extends Node2D
	
const scn_pipe = preload("res://scenes/pipe.tscn")
const PIPE_WIDTH = 26
const GROUND_HEIGHT = 56
const OFFSET_Y = 55
const OFFSET_X = 65
const AMOUNT_TO_FILL_VIEW = 3

func _ready():
	go_next_pos()
	for i in range(AMOUNT_TO_FILL_VIEW):
		spawn_and_move()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func spawn_and_move():
	spawn_pipe()
	go_next_pos()
	pass
	
func spawn_pipe():
	var new_pipe = scn_pipe.instance()
	new_pipe.position = position;
	new_pipe.connect("tree_exited", self, "spawn_and_move")
	get_node("container").add_child(new_pipe)
	pass
	
func go_next_pos():
	randomize()
	var next_pos = position
	next_pos.x += PIPE_WIDTH/2 + OFFSET_X + PIPE_WIDTH/2
	next_pos.y = rand_range(0 + OFFSET_Y, get_viewport_rect().size.y - GROUND_HEIGHT - OFFSET_Y)
	position = next_pos
	pass
