extends Node2D

@onready var impassibletile = $dirtBlock 
# Called when the node enters the scene tree for the first time.
func _ready():
	#print("Im here!", self.global_position)
	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func mine(): 
	if has_node("dirtBlock"):
		impassibletile.queue_free()
		self.remove_child(impassibletile)
		impassibletile = null
	
