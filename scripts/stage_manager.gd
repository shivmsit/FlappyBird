extends CanvasLayer

const GAME_STAGE = "res://stages/game_stage.tscn"
const MENU_STAGE = "res://stages/main_menu.tscn"

signal stage_changed

func _ready():
	#get_node("amin").connect("animation_finished", self, "_on_animaiton_finished")
	pass
func change_stage(stage_path):
	#fade to black
	var old_layer = layer
	layer = 5
	get_node("amin").play("fade_in")
	get_node("sfx_swooshing").play()
	yield(get_node("amin"), "animation_finished")
	#change to another stage
	get_tree().change_scene(stage_path)
	layer = old_layer
	emit_signal("stage_changed")
	#fade from black
	#get_node("amin").play("fade_out")
	pass
