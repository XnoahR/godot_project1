extends Node2D

var number : int = 3
var kalimat : String = "kalimat"

func _myFunc():
	print("Hell world")
	print("Dicc")

func loops() -> void :
	for i in range(25):
		print("Joe")
		
func switch(val):
	match val:
		1:
			print("ayonima")
		_:
			print("wkwkwk")
