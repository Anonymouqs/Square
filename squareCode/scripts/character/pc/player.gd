extends RigidBody2D

var rigid

func _ready():
	rigid = get_node(".")
	set_process(true)

func _input(event):
	if (Input.is_action_pressed("player_up")):
		
		