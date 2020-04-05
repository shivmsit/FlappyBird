extends Node

func _ready():
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
