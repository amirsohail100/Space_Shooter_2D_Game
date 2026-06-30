extends Node2D
var B_s := 400
func _process(delta: float):
	position.y -= B_s * delta
	if (position.y < -1381):
		queue_free()
