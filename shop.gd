extends Control
var current = Globals.gold

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_glasses_pressed():
	if current >= 11000:
		get_tree().change_scene_to_file("uid://yyb102ooi2o2") # Replace with function body.


func _on_tomato_pressed():
	if current >= 100:
		get_tree().change_scene_to_file("uid://yyb102ooi2o2") # Replace with function body.


func _on_egg_pressed():
	if current >= 11000:
		get_tree().change_scene_to_file("uid://fui6fmnp32oe") # Replace with function body.


func _on_book_pressed():
	if current >= 9000:
		get_tree().change_scene_to_file("uid://yyb102ooi2o2") # Replace with function body.


func _on_slippers_pressed():
	if current >= 13000:
		get_tree().change_scene_to_file("uid://yyb102ooi2o2") # Replace with function body.
