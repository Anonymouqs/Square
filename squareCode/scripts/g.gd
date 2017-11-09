extends Node
var scene = null

func _ready():
	var root = get_tree().get_root()
	scene = root.get_child(root.get_child_count() - 1)
	
func goScene(path):
	call_deferred("dgoScene", path)
func dgoScene(path):
	scene.free()
	var s = ResourceLoader.load(path)
	scene = s.instance()
	get_tree().get_root().add_child(scene)
	get_tree().set_current_scene(scene)
	