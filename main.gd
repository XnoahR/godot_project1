extends Node2D

var character
# Called when the node enters the scene tree for the first time.
func _ready():
	character = $cat
	var myCatPosX = get_node("cat").position.x
	get_node("cat2").position = Vector2(300,250)
	$cat.scale.x = 2.5 #alternate use of get_node
	print(myCatPosX)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	character.position.x += 125*delta
	pass
