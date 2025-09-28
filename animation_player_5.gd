extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(17).timeout
	play("5")
	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("uid://bcq5x0xadmo70")
