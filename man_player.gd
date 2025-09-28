extends CharacterBody2D
@onready var _animation_player = $AnimatedSprite2D

const SPEED = 300.0
const JUMP_VELOCITY = -580.0


func _physics_process(delta: float) -> void:
	var last_action_pressed = ""
	#var max_jumps = 2
	#var jumps = 0
	if self.position.x > 5040: # x is greater than 5040 #add the coll to house thing here pls (for me cux i sleep)
		get_tree().change_scene_to_file("uid://dt10djf0i4ceo")
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	#if is_on_floor():
		#jumps = 0

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor(): #and is_on_floor():
		velocity.y = JUMP_VELOCITY
		#jumps += 1
		_animation_player.pause()
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction != 0:
		velocity.x = direction * SPEED
		if direction <0:
			#_animation_player.h_flip = direction <0
			_animation_player.play("left")
			last_action_pressed = ("ui_left")
		else:
			_animation_player.play("right")
			last_action_pressed = ("ui_right")
			
		
			
		#if direction == 0:
			#_animation_player.play("idle")
			
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		_animation_player.pause()
	
	move_and_slide()
	
#func touched():
	#get_tree().change_scene_to_file("uid://hkk3ehnpl2y0")
