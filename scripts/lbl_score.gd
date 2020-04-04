extends Label

func _ready():
	text = str(game.score_current)
	game.connect("score_current_changed", self, "_on_score_current_changed")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_score_current_changed():
	text = str(game.score_current)
	pass
