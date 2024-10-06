extends AnimatedSprite2D

const dig_mark = preload("res://dig_marker.tscn")
const egg_mark = preload("res://egg_marker.tscn")
const butcher_mark = preload("res://butcher_marker.tscn")
const take_mark = preload("res://take_marker.tscn")


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
			if ( abs(marker.position.x - get_parent().position.x)  + abs(marker.position.y - get_parent().position.y) <= 1):
				Scents.remove_marker(marker)
				marker.queue_free()
				get_parent().get_parent().remove_child(marker)
		
	if Input.is_action_just_pressed("place_dig_marker"):
		var mark = dig_mark.instantiate()
		get_parent().get_parent().add_child(mark)
		Scents.add_marker(mark)
		mark.global_position = get_parent().position
		mark.scale = self.scale

	if Input.is_action_just_pressed("place_butcher_marker"):
		var mark = butcher_mark.instantiate()
		get_parent().get_parent().add_child(mark)
		Scents.add_marker(mark)
		mark.global_position = get_parent().position
		mark.scale = self.scale
		
	if Input.is_action_just_pressed("place_take_marker"):
		var mark = take_mark.instantiate()
		get_parent().get_parent().add_child(mark)
		Scents.add_marker(mark)
		mark.global_position = get_parent().position
		mark.scale = self.scale

	if Input.is_action_just_pressed("place_egg_marker"):
		var mark = egg_mark.instantiate()
		get_parent().get_parent().add_child(mark)
		Scents.add_marker(mark)
		mark.global_position = get_parent().position
		mark.scale = self.scale
