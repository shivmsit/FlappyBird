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

func _ready():
	game.connect("score_best_changed", self, "_on_score_best_changed")
	set_number(game.score_best)
	pass	
func _on_score_best_changed():
	set_number(game.score_best)
	pass
func set_number(num):
	for child in get_children():
		child.free()
	for digit in utils.get_digits(num):
		var texture_rect = TextureRect.new()
		texture_rect.set_texture(sprite_number[digit])
		add_child(texture_rect)
	pass
