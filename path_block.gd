extends Node2D

@onready var impassibletile = $dirtBlock / timer.start() 
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func mine(): 
	if has_node("dirtBlock"):
		impassibletile.queue_free()
		self.remove_child(impassibletile)
		impassibletile = null
	
