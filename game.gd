extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Scents.time >= 1000:
		Scents.time = 0
	else:
		Scents.time += 1
	for marker in Scents._scent_markers:
		pass
	
