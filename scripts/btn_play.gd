extends TextureButton

func _ready():
	connect("pressed", self, "_on_button_pressed")
	pass # Replace with function body.

func _on_button_pressed():
	stage_manager.change_stage(stage_manager.GAME_STAGE)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
