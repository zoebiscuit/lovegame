extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


 # Replace with function body.


func _on_yes_pressed() -> void:
	get_tree().change_scene_to_file("uid://dtyskoehpex5") # Replace with function body.


func _on_no_pressed() -> void:
	get_tree().quit() # Replace with function body.
