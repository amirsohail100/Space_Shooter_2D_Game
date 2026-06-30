extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_01_pressed() -> void:
	get_tree().change_scene_to_file("res://player_L/game 3/player1/game_3.tscn")


func _on_button_02_pressed() -> void:
	get_tree().change_scene_to_file("res://folder_C/control_ml.tscn")
