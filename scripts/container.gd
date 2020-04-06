extends Container

func _ready():
	hide()
	var bird = utils.get_main_node().get_node("bird");
	if bird:
		bird.connect("state_changed", self, "_on_bird_state_changed")
	pass # Replace with function body.

func _on_bird_state_changed(bird):
	if bird.get_state() == bird.STATE_GROUNDED:
		get_node("anim").play("show")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
