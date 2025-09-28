extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(6).timeout
	play("3")
