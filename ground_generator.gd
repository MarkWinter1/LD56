extends Node2D
######### max  x    y  
const bounds = [100, 100]
var path_block = preload("res://path_block.tscn")
var _block_matrix: Array[Array]

# maybe switch to using Array.resize for more general use case
func _ready():
	var i = 0
	_block_matrix = [[]]
	while i <= bounds[0]:
		_block_matrix.append([])
		var j = 0
		while j <= bounds[1]:
			_block_matrix[i].append(path_block.instantiate())
			
			add_child(_block_matrix[i][j] )
			
			_block_matrix[i][j].position.x = 16*i - 8*bounds[0]
			_block_matrix[i][j].position.y = 16*j
			
			j += 1
		i += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
