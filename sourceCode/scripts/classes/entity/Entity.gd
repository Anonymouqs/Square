extends "res://Root.gd"

export var health = 100


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	dragon
	pass
	

class pc:
	
	export var _respawn_pos = Vector2(0,0)
	
	
	func _ready():
		
		
		pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
