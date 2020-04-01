# script: bird
extends RigidBody2D

func _ready():
	set_linear_velocity(Vector2(50, get_linear_velocity().x))
	pass # Replace with function body.

#func _process(delta):
#	pass # Replace with function body.

func _physics_process(delta):
	#print("bird _physics_process")
	if rotation < deg2rad(-30):
		rotation = deg2rad(-30)
		set_angular_velocity(0)
		
	if get_linear_velocity().y > 0:
		set_angular_velocity(1.5)
		
	pass

func flap():
	set_linear_velocity(Vector2(get_linear_velocity().x, -150))
	set_angular_velocity(-3)
	pass
	
func _input(event):
	#if event.is_pressed() and event.scancode == KEY_SPACE:
	#	print("bird input")
	
	if event.is_action_pressed("flap"):
		flap()
	pass
