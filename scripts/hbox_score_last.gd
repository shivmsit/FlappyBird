extends HBoxContainer

const sprite_number = [
	preload("res://sprites/number_middle_0.png"),
	preload("res://sprites/number_middle_1.png"),
	preload("res://sprites/number_middle_2.png"),
	preload("res://sprites/number_middle_3.png"),
	preload("res://sprites/number_middle_4.png"),
	preload("res://sprites/number_middle_5.png"),
	preload("res://sprites/number_middle_6.png"),
	preload("res://sprites/number_middle_7.png"),
	preload("res://sprites/number_middle_8.png"),
	preload("res://sprites/number_middle_9.png")
]

signal counter_finished
func _ready():
	var anim = utils.get_main_node().get_node("hud/con_instruciton/anim")
	yield(anim, "animation_finished") #yield till animaiton finish
	count_to_score()
	pass	

func count_to_score():
	var lerp_time 		= 0 
	var lerp_duration 	= 0.5
	while lerp_time < lerp_duration and game.score_current > 0:
		lerp_time += get_process_delta_time()
		lerp_time = min (lerp_time, lerp_duration)
		var percent = lerp_time/lerp_duration
		set_number(int(lerp(0, game.score_current, percent)))
		
		yield(get_tree(), "idle_frame")
	game.score_best = game.score_current
	emit_signal("counter_finished")
	pass
	
func set_number(num):
	for child in get_children():
		child.free()
	for digit in utils.get_digits(num):
		var texture_rect = TextureRect.new()
		texture_rect.set_texture(sprite_number[digit])
		add_child(texture_rect)
	pass
