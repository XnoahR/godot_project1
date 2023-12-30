extends Node2D

var cat
# Called when the node enters the scene tree for the first time.
func _ready():
	cat = $cat
	pass # Replace with function body.

func _input(event):
	if(event is InputEventKey and event.pressed):
		match event.keycode:
			KEY_A:
				cat.velocity = Vector2(-100,0)
			KEY_D:
				cat.velocity = Vector2(100,0)
	
	pass


func _physics_process(delta):
	cat.move_and_slide()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
