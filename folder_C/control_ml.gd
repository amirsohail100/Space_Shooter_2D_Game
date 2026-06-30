extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta: float) -> void:
# 	pass

func _on_button_BACK_pressed() -> void:
	get_tree().change_scene_to_file("res://folder_C/Game_C.tscn")


func _on_button_L_1_pressed() -> void:
	get_tree().change_scene_to_file("res://player_L/game_1.tscn")


func _on_button_L_2_pressed() -> void:
	get_tree().change_scene_to_file("res://player_L/game_2.tscn")


func _on_button_l_3_pressed() -> void:
	print("awsd")
	# get_tree().change_scene_to_file("res://player_L/game_2.tscn")
	get_tree().change_scene_to_file("res://player_L/game 3/player1/game_3.tscn")


func _on_button_l_4_pressed() -> void:
	get_tree().change_scene_to_file("res://player_L/game 4/player1_4/game_4.tscn")
