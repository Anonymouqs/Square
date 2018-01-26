extends TextureButton
var anim
var playing = false
func _ready():
	anim = get_node("AnimationPlayer")
	set_process(true)
	
func _process(delta):
	if is_hovered() && anim.is_playing():
		anim.set_speed(1)
		

func _on_Button_mouse_enter():
	if anim.is_playing():
		anim.set_speed(1)

	if anim.get_pos() <= 0.2:
		anim.set_speed(1)
	if not anim.is_playing():
		anim.play("buttonFade")
	OS.delay_msec(100)
	if anim.get_pos() <= 0.2:
		anim.set_speed(1)

func _on_Button_mouse_exit():
	if anim.get_pos() >= 1:
		anim.play_backwards("buttonFade")
		playing = true
	else:
		anim.set_speed(-1)
	



func _on_AnimationPlayer_finished():

	playing = false
