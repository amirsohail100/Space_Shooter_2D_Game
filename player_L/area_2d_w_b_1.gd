extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var B_s := 20
func _process(delta: float):
	position.y += B_s * delta


func _on_area_entered(area: Area2D) -> void:
	if area.name == "Area2D_B":
		queue_free()
		get_tree().change_scene_to_file("res://folder_C/control_w_2.tscn")
