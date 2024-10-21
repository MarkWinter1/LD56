extends CharacterBody2D

const dead_gnome = preload("res://dead_gnome.tscn")

var walked = []
var target = null
var hunger = 100 + randi()%50

var ground = self.get_parent().get_parent().get_child(0)._ground_matrix

func getnewtarget(newtarget):
	target = newtarget
	walked = []
	
func walkin_to_target():
	if walked[-1] != self.position:
		walked.append(self.position / 16)
	var xdiff = (target.position.x - self.position.x) 
	var ydiff = (target.position.y - self.position.y) 	
	if randf() > abs(xdiff/(xdiff+ydiff)):
		#if 
		
		position.x += 16 * sign(xdiff)
		
	else:
		position.y += 16 * sign(ydiff)

func mining(position, direction):
	pass
	

func _physics_process(delta):
	if Scents.time % 10 == 0:
		print("gnomes acting")
		if hunger == 0: 
			if randf() < 0.05:
				die()

		elif randf() < 0.5:
			hunger -= 1
	if target == null: 
			pass


	
func die():
	print("you must DIE", self)
	var corpse = dead_gnome.instantiate()
	get_parent().add_child(corpse)
	corpse.global_position = self.position
	self.queue_free()
	
