class_name Enamy
extends Area2D
var A_s: int = 80
func _ready():
	randomize()
	position = Vector2(randi_range(14, 386), 0)
func _process(delta: float):
	position.y += A_s * delta
	

var c = 0
var ct = 0
func _on_area_entered(area: Area2D):
	if area.name == "Area2D_MO":
		area.get_parent().queue_free()
		queue_free()
	if area.name == "Area2D_B":
		area.get_parent().queue_free()
		get_tree().change_scene_to_file("res://folder_C_D/control_d_2.tscn")
