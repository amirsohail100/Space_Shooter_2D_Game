extends Node2D
var B_s := 200     
func _process(delta: float):
	position.y-=B_s*delta
	if(position.y <0):
		queue_free()
