#script: coin
extends Area2D

func _ready():
	add_to_group(game.GROUP_BIRDS)
	connect("area_entered", self, "_on_area_entered")
	pass
	
func _on_area_entered(other_body):
	if other_body.is_in_group(game.GROUP_BIRDS):
		game.score_current += 1
		pass
	pass
