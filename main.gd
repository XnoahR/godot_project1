extends Node2D

var cat
func _ready() -> void :
	cat = $cat
	pass
	
func _speed_limiter():
	if(cat.velocity.x > 0):
		cat.velocity.x -= 1
	elif(cat.velocity.x < 0):
		cat.velocity.x += 1
		
	if(cat.velocity.y > 0):
		cat.velocity.y -= 1
	elif(cat.velocity.y < 0):
		cat.velocity.y += 1

func _physics_process(delta) -> void:
	cat.velocity = Vector2(0,0)
	
	#if(Input.is_action_pressed("ui_right")):
		#cat.move_and_collide(Vector2(100, cat.position.y))
	if(Input.is_action_pressed("ui_right")):
		cat.velocity = Vector2(100, cat.velocity.y)
	if(Input.is_action_pressed("ui_left")):
		cat.velocity = Vector2(-100, cat.velocity.y)
	if(Input.is_action_pressed("ui_up")):
		cat.velocity = Vector2(cat.velocity.x, -100)
	if(Input.is_action_pressed("ui_down")):
		cat.velocity = Vector2(cat.velocity.x, 100)
		
	cat.move_and_slide()
	pass

func _process(delta) -> void:
	
	pass

#
#func _input(event):
	#if event is InputEventKey and event.pressed:
		#print(event)
		#match event.keycode:
			#KEY_D:
				#print("Move Right")
			#KEY_A:
				#print("Move Left")
