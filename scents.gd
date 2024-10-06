extends Node


var _scent_markers: Array

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for marker in _scent_markers:
		pass

func add_marker(marker):
	_scent_markers.append(marker)
	return true

func remove_marker(marker):
	var i = _scent_markers.find(marker)
	if i != -1:
		_scent_markers.pop_at(i)
		return true
	else:
		return false
	
