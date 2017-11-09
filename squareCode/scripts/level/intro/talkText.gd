extends Node2D

# class member variables go here, for example:
# var a = 2
var anim

func _ready():
	anim = get_node("AnimationTreePlayer")

func moved():
	
	anim.transition_node_set_current("stage", 1)
	
func _on_helloNotification_body_enter( body ):
	anim.transition_node_set_current("stage", 2)


func _on_coins_body_enter( body ):
	 	anim.transition_node_set_current("stage", 3)
