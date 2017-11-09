extends Area2D

export var val = 1
# var a = 2
# var b = "textvar"

func _ready():
	pass


func _on_coin_body_enter( body ):
	get_tree().get_current_scene().find_node("manager").score(val)
	queue_free()
	