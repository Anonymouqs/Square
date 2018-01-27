extends Node2D
var score
var player
var hud
export var scoreVal = 0
onready var fin = preload("res://scenes/map/basic/gui/gameFinished.tscn")
func _ready():
	print(get_tree().get_current_scene())
	score = find_node("score")
	player = find_node("player")
	hud = find_node("hud")

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

func finish():
	var final = fin.instance()
	hud.add_child(final)
	