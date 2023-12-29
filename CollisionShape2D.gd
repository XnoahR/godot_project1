extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _myFunc(x):
	print("Wake me up")
	match x:
		1:
			for i in range(5, 10):
				print(i)
				if i <= 5:
					print("When September ends") 
				else:
					print("Wake me up inside")
		2:
			print("Wake me up inside")


var myChoice = _myFunc(1)
