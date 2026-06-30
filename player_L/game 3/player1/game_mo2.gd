extends Node2D
var B_s := 550
func _process(delta: float):
	position.y += B_s * delta
	if (position.y > 600):
		queue_free()

func _on_area_2d_mo_r_area_entered(area: Area2D) -> void:
	if area.name == "Area2D_B1":
		area.get_parent().queue_free()
		queue_free()
		get_tree().change_scene_to_file("res://folder_C/control_w_3_R.tscn")
	elif area.name == "Area2D_R":
		queue_free()
	if area.name == "Area2D_MO_B":
		area.get_parent().queue_free()
		queue_free()
