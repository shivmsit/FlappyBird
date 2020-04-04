#script: game
extends Node

const GROUP_PIPES 	= "pipes"
const GROUP_GROUNDS 	= "grounds"
const GROUP_BIRDS 	= "birds"

var score_best 		= 0 setget _set_score_best
var score_current 	= 0 setget _set_score_current

signal score_best_changed
signal score_current_changed

func _ready():
	pass # Replace with function body.
	
func _set_score_current(new_val):
	score_current = new_val
	emit_signal("score_current_changed")
	pass
	
func _set_score_best(new_val):
	score_best = new_val
	emit_signal("score_best_changed")
	pass
