extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var hud
func _ready():
	hud = get_tree().get_root().get_node("hud")

func _on_exit_body_enter( body ):
	hud.add_child("node",false)