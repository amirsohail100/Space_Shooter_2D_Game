class_name EnamyR4
extends Area2D
var palyer_W_a = 22
var A_s: int = 80
func _ready():
	randomize()
	position = Vector2(randi_range(14, 386), randi_range(0, 40))
	# position = Vector2(0, 0)
func _process(delta: float):
	position.y += A_s * delta

func _on_area_entered(area: Area2D):
	if area.name == "Area2D_MO_R":
		area.get_parent().queue_free()
		queue_free()
	elif area.name == "Area2D_B":
		get_tree().change_scene_to_file("res://folder_C_D/control_d_4_R.tscn")
		queue_free()
	if area.name == "Area2D_MO_B":
		area.get_parent().queue_free()

