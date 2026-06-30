extends Node2D
var s = 650

func _ready():
	randomize()
	position = Vector2(randi_range(0, 335), 0)

func _on_area_entered(area: Area2D) -> void:
	if area.name == "Area2D_p":
		print("amir")
		area.get_parent().queue_free()
		# queue_free()
		get_tree().change_scene_to_file("res://folder_C/control_w_1.tscn")
