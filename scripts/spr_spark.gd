extends AnimatedSprite

const MEDAL_RADIUS = 11

func _ready():
	to_random_pos()
	get_parent().connect("medal_shown", get_node("anim"), "play", ["shine"])
	pass

func to_random_pos():
	var random_angle = deg2rad(rand_range(0, 360))
	var rand_radius =  rand_range(0, MEDAL_RADIUS)
	var x = rand_radius*sin(random_angle) + MEDAL_RADIUS;
	var y = rand_radius*cos(random_angle) + MEDAL_RADIUS;
	position = Vector2(x, y)
	pass
