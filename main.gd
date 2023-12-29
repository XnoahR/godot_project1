extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("cat2").position = Vector2(300,250)
	$cat.scale.x = 2.5


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
