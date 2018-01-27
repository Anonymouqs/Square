extends "res://scripts/root/Entity.gd"

export var respawn = Vector2(0,0)
export var speed = 5
export var jump = 6
export var mult = 100
export var maxJumps = 2
var grounded = false
var jumps = 0
var player
var ray 



func _ready():
	set_process(true)
	set_process_input(true)
	respawn = get_global_pos()
	speed *= mult
	jump *= mult
	ray = get_node("RayCast2D")
	

func _integrate_forces(state):
	player = state.get_linear_velocity()
	if ray.is_colliding():
		jumps = 0
	if (Input.is_action_pressed("playerRight")):
		state.set_linear_velocity(Vector2(speed, player.y))
	elif (Input.is_action_pressed("playerLeft")):
		state.set_linear_velocity(Vector2(-speed, player.y))
	else:
		state.set_linear_velocity(Vector2(0, player.y))
		
func _input(event):
	if event.is_action_pressed("playerUp") and jumps < maxJumps:
		set_linear_velocity(Vector2(get_linear_velocity().x, -jump))
	if (event.is_action_released("playerUp")):
		jumps += 1
