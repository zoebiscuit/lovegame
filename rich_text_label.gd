extends RichTextLabel

@export var texts: String= "Narration sample"
@export var speed: float= .05
var current: int= 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func timeout():
	if current < text.length():
		current += 1
	else:
		$Timer.stop()
		
func ready():
	$Timer.wait_time= speed
	$Timer.start # Replace with function body.
