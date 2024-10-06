extends CharacterBody2D

var walked = []
var goal = null
var target = null
var hunger = 100 + randi()%50

func getnewtarget(newtarget):
	target = newtarget
	walked = []
	
func walkin():
	if walked[-1] != self.position:
		walked.append(self.position / 16)
	
	

func mining(position, direction):
	pass
	

func process(delta):
	if hunger == 0: 
		if randf() < 0.05:
			die()

	elif randf() < 0.5:
		hunger -= 1


	if goal == null: 
		pass
	
func die():
	print("you must DIE", self)
	pass
	
