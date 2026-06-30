# class_name EnamyB4

extends Area2D
var A_s: int = 80
func _ready():
	# randomize()
	# position = Vector2(bullet_intance.position.x, bullet_intance.position.y + 100)
	position = Vector2(randi_range(14, 386), -2000)
	# position = Vector2(0, 0)
func _process(delta: float):
	position.y += A_s * delta


func _on_area_entered(area: Area2D):
	if area.name == "Area2D_MO_B":
		area.get_parent().queue_free()
		queue_free()
	elif area.name == "Area2D_B":
		get_tree().change_scene_to_file("res://folder_C_D/control_d_4_B.tscn")
		queue_free()
	if area.name == "Area2D_MO_R":
		area.get_parent().queue_free()
