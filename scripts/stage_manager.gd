extends CanvasLayer

const GAME_STAGE = "res://stages/game_stage.tscn"

func _ready():
	#get_node("amin").connect("animation_finished", self, "_on_animaiton_finished")
	pass
func change_stage(stage_path):
	#fade to black
	layer = 5
	get_node("amin").play("fade_in")
	yield(get_node("amin"), "animation_finished")
	#change to another stage
	get_tree().change_scene(stage_path)
	layer = -2
	#fade from black
	#get_node("amin").play("fade_out")
	pass
