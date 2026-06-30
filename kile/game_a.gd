class_name Enamy1
extends Node2D
var s = 650

func _ready():
	randomize()
	position = Vector2(randi_range(14, 386), 0)

func _process(delta: float):
	position.y += s * delta
	if position.y > 600:
		queue_free()

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "Area2D_p":
		#area.get_parent().queue_free()
		get_tree().change_scene_to_file("res://folder_C_D/control_d_1.tscn")
