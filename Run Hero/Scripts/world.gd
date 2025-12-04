extends Node3D

@export var speed:float = 4.0

func _process(delta):
	
	$Floor.material.uv1_offset -= Vector3(0, 0, 1)*delta*speed
	$Control/Label.text = "Score : "+str(Global.score)
