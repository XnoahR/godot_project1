extends Node2D

var num = 2
var stg : String = "Joe"
# Called when the node enters the scene tree for the first time.
func _ready():
	print("inside _ready")
	print(typeof(num))
	print(typeof(stg))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#position.x = position.x + (10*delta)
	#print(position.x)
