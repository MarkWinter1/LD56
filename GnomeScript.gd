extends CharacterBody2D

const dead_gnome = preload("res://dead_gnome.tscn")

var walked = []
var target = null
var hunger = 100 + randi()%50

func getnewtarget(newtarget):
	target = newtarget
	walked = []
	
func walkin():
	if walked[-1] != self.position:
		walked.append(self.position / 16)
	var xdiff = (target.position.x - self.position.x) 
	var ydiff = (target.position.y - self.position.y) 
	
	

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
	
