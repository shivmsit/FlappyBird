extends CanvasLayer

const GAME_STAGE = "res://stages/game_stage.tscn"
func _ready():
	get_node("amin").connect("animation_started", self, "_on_animaiton_started")
	get_node("amin").connect("animation_finished", self, "_on_animaiton_finished")
	pass
	
func _on_animaiton_started(anim_name):
	if anim_name == "fade_in":
		layer = 5
	pass
func _on_animaiton_finished(anim_name):
	if anim_name == "fade_out":
		layer = 1
	pass
func change_stage(stage_path):
	#fade to black
	get_node("amin").play("fade_in")
	yield(get_node("amin"), "animation_finished")
	#change to another stage
	get_tree().change_scene(stage_path)	
	#fade from black
	get_node("amin").play("fade_out")

	pass
