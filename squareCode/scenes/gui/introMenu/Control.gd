extends Control

var animator
func _ready():
	animator = get_node("AnimationPlayer")




func _on_begin_pressed():
	print("begin")
	print("pressed")
	animator.play("fadeOut")

func begin():
	get_node("/root/g").goScene("res://Scenes/Levels/tutorial.tscn")
	 
