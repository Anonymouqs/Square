extends Area2D
export var level = 0
func _ready():
	pass


func _on_exit_body_enter( body ):
		get_tree().get_root().find_node("manager", true, false).finish()