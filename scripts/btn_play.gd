extends TextureButton

func _ready():
	connect("pressed", self, "_on_button_pressed")
	pass # Replace with function body.

func _on_button_pressed():
	get_tree().reload_current_scene()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
