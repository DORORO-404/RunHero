extends Node3D

@export var obstacle_scenes: Array[PackedScene] = []

func _ready():
	while  true:
		spawn_obstacle()
		await get_tree().create_timer(2.5).timeout
		
func spawn_obstacle()-> void:
	obstacle_scenes.shuffle()
	var new_obstacle = obstacle_scenes[0].instantiate()
	add_child(new_obstacle)
