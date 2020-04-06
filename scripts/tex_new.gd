extends TextureRect

func _ready():
	hide()
	game.connect("score_best_changed", self, "show")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
