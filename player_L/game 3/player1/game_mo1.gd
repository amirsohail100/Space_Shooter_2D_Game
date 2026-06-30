extends Node2D
var B_s := 550
func _process(delta: float):
	position.y -= B_s * delta
	if (position.y < 0):
		queue_free()


func _on_area_mo_area_entered(area: Area2D) -> void:
	if area.name == "Area2D_R1":
		area.get_parent().queue_free()
		queue_free()
		get_tree().change_scene_to_file("res://folder_C/control_w_3_B.tscn")
	elif area.name == "Area2D_B":
		queue_free()
