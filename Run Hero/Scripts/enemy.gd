extends Area3D

@export var move_speed: float = 4.0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	global_position.z += move_speed * delta
	if global_position.z > 40:
		queue_free()
	pass
	
func _on_body_entered(body: Node3D) -> void:
	get_tree().call_deferred("reload_current_scene")
	Global.score = 0
	pass

func _on_area_3d_body_entered(body: Node3D) -> void:
	$Area3D.queue_free()
	Global.score += 1
	print(Global.score)
	pass
