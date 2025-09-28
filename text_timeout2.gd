extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(19).timeout
	self.visible = false
