extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var W_s = 5
func _process(delta: float) -> void:
	position.y += W_s * delta
	if position.y > 600:
		queue_free()
		get_tree().change_scene_to_file("res://folder_C_D/control_d_3.tscn")
