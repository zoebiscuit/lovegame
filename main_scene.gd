extends Node2D
var GoldBar = preload("res://Gold_bar.tscn")
#var ballSpawnPoint

func _ready():
	# Get a reference to the spawn point
	#allSpawnPoint = get_node("ballSpawnPoint")
	pass	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var click_position = get_global_mouse_position()
	
	if(Input.is_action_just_pressed("left_click")):
		
		# Create a new sphere (ball) instance
		var newBar = GoldBar.instantiate()
		
		if(newBar == null):
			print("Error creating the new barrrrr!")
			
		else: 
			
			# Set position (translation) of the new ball/sphere
			newBar.position = click_position

			
			# Add the new bar to the root scene
			get_parent().add_child(newBar)


 # Replace with function body.
