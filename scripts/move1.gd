extends Node2D

var cat
# Called when the node enters the scene tree for the first time.
func _ready():
	cat = $cat
	pass # Replace with function body.

#not recommend for movement
func _input(event):
	if(event is InputEventKey and event.pressed):
		
		match event.keycode:
			KEY_A:
				cat.velocity = Vector2(-100,cat.velocity.y)
			KEY_D:
				cat.velocity = Vector2(100,cat.velocity.y)
			KEY_W:
				cat.velocity = Vector2(cat.velocity.x,-100)
			KEY_S:
				cat.velocity = Vector2(cat.velocity.x,100)
	
	pass

func _speed_limiter():
	if(cat.velocity.x > 0):
		cat.velocity.x -= 2
	elif(cat.velocity.x < 0):
		cat.velocity.x += 2
		
	if(cat.velocity.y > 0):
		cat.velocity.y -= 2
	elif(cat.velocity.y < 0):
		cat.velocity.y += 2

func _physics_process(delta):
	
	_speed_limiter()
	cat.move_and_slide()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
