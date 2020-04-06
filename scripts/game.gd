#script: game
extends Node

const GROUP_PIPES 	= "pipes"
const GROUP_GROUNDS 	= "grounds"
const GROUP_BIRDS 	= "birds"

const MEDAL_BRONZ	= 10
const MEDAL_SILVER	= 20
const MEDAL_GOLD		= 30
const MEDAL_PLATINUM	= 50

var score_best 		= 0 setget _set_score_best
var score_current 	= 0 setget _set_score_current

signal score_best_changed
signal score_current_changed

func _ready():
	stage_manager.connect("stage_changed", self, "_on_stage_changed")
	pass # Replace with function body.
	
func _on_stage_changed():
	score_current = 0
	pass
	
func _set_score_current(new_val):
	score_current = new_val
	emit_signal("score_current_changed")
	pass
	
func _set_score_best(new_val):
	if new_val > score_best:
		score_best = new_val
		emit_signal("score_best_changed")
	pass
