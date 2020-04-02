extends Node2D
const GROUND_WIDTH = 168
const scn_ground = preload("res://scenes/Ground.tscn")
const AMOUNT_TO_FILL_VIEW = 2

func _ready():
	for i in range(AMOUNT_TO_FILL_VIEW):
		spwan_ground()
		go_next_pos()
	pass # Replace with function body.

func spwan_ground():
	var new_ground = scn_ground.instance()
	new_ground.position = position
	new_ground.connect("distroyed", self, "spwan_ground")
	new_ground.connect("distroyed", self, "go_next_pos")
	get_node("container").add_child(new_ground)
	pass
	
func go_next_pos():
	position += Vector2(GROUND_WIDTH, 0)
	pass
