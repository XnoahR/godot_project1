extends Node2D

var cat
func _ready() -> void :
	cat = $cat
	pass
	

func _process(delta) -> void:
	
	pass


func _input(event):
	if event is InputEventKey and event.pressed:
		match event.keycode:
			KEY_D:
				print("Move Right")
			KEY_A:
				print("Move Left")
