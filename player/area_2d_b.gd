extends Area2D

func _ready():
	randomize()
	position = Vector2(randf_range(0, 335), 0)

func _on_area_entered(area: Area2D) -> void:
	if area.name == "Area2D_p":
		get_tree().change_scene_to_file("res://folder_C/control_w_1.tscn")
