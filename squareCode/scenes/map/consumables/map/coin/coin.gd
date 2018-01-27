extends Area2D




export var val = 1

func _ready():
	print(get_tree().get_current_scene())
	pass


func _on_coin_body_enter( body ):
	
	get_tree().get_root().find_node("manager", true, false).score(val)
	queue_free()
	