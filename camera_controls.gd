extends Camera2D


const CAMERASPEEDSCALE = 16

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#hold SHIFT to pan faster!
	var CAMERASPEED = CAMERASPEEDSCALE
	if Input.is_action_pressed("shift"):
		CAMERASPEED = 8 * CAMERASPEEDSCALE
	if Input.is_action_just_pressed("pan_up"):
		position.y += -CAMERASPEED
	if Input.is_action_just_pressed("pan_down"):
		position.y += CAMERASPEED
	if Input.is_action_just_pressed("pan_left"):
		position.x += -CAMERASPEED
	if Input.is_action_just_pressed("pan_right"):
		position.x += CAMERASPEED
		

	
