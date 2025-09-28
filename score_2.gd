extends Label
#var gold = Globals.gold

func _process(delta):
	self.text = "$" + str(Globals.gold)
	
func _physics_process(delta: float) -> void:
#	if Input.is_action_just_pressed("left_click"):
		#Globals.gold -= 500
	
	if Globals.gold <= 0:
		get_tree().change_scene_to_file("uid://hkk3ehnpl2y0")
