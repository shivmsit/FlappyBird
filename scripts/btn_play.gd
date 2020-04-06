extends TextureButton

func _ready():
	connect("pressed", self, "_on_button_pressed")
	var hbox_score_last = utils.get_main_node().find_node("hbox_score_last")
	if hbox_score_last:
		hbox_score_last.connect("counter_finished", self, "grab_focus")
	pass # Replace with function body.

func _on_button_pressed():
	stage_manager.change_stage(stage_manager.GAME_STAGE)
	disabled = true
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
