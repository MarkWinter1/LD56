extends AnimatedSprite2D

const dig_mark = preload("res://dig_marker.tscn")
const maxcursorscale = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("enlarge_cursor"):
		self.scale.x = min(self.scale.x + 1, maxcursorscale)
		self.scale.y = min(self.scale.y + 1, maxcursorscale)
		
		
	elif Input.is_action_just_pressed("shrink_cursor"):
		self.scale.x = max( 1, self.scale.x - 1 )
		self.scale.y = max( 1, self.scale.y - 1 )
		
	if Input.is_action_just_pressed("remove_marker"):
		for marker in Scents._scent_markers:
			if ( abs(marker.position.x - self.position.x)  + abs(marker.position.y - self.position.y) == 0):
				Scents.remove_marker(marker)
				marker.queue_free()
				get_parent().get_parent().remove_child(impassibletile)
		
	if Input.is_action_just_pressed("place_dig_marker"):
		var mark = dig_mark.instantiate()
		get_parent().get_parent().add_child(mark)
		Scents.add_marker()
		mark.global_position = self.global_position
		mark.scale = self.scale
