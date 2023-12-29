extends Node
var joe = true

func _myfunc():
	for i in range(20):
		print(i)
## Called when the node enters the scene tree for the first time.
#func _ready():
	#pass  # Replace with function body.
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

func _hisFunc(num):
	match num:
		0:
			print("Yes Sir!")
		1:
			print("ywd sih")
		_:
			print("What?")
	

	if(joe):
		print("Hello World!")
