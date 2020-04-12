extends Label

func _ready():
	text = str(game.score_current)
	game.connect("score_current_changed", self, "_on_score_current_changed")
	var bird = utils.get_main_node().get_node("bird")
	if (bird):
		bird.connect("state_changed", self, "_on_bird_state_changed")
	pass

func _on_bird_state_changed(bird):
	if bird.get_state() == bird.STATE_GROUNDED: 	hide()
	if bird.get_state() == bird.STATE_HIT: hide()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_score_current_changed():
	text = str(game.score_current)
	pass
