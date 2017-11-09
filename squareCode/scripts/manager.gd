extends Node2D
var score
var player
export var scoreVal = 0

func _ready():

	score = get_node("swipe/hud/score")
	player = get_node("swipe/player")

func score(val):
	scoreVal += val
	score.set_text("Score: "  + str(scoreVal))
func respawn():
	player.set_pos(player.respawn)
	
func letTheGameBegin():
	print("attempt")
	remove_child(get_node("1Camera2D"))
	OS.delay_msec(100)
	get_node("swipe/player/Camera2D").make_current()
	