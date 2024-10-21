extends Node2D

var current_workers
var marker_type = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Scents.time % 10 == 0:
		var i = 0
		while i < len(current_workers):
			pass#for gnome in 
