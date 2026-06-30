extends Node
var enemy_scene = preload("res://player_L/game 4/player1_4/game_a4_R.tscn")
func _ready():
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = 1.3
	timer.connect("timeout", self._NEW_emeny)
	timer.start()
func _NEW_emeny():
	var emeny_instance = enemy_scene.instantiate()
	get_parent().get_node("Node_AM4").add_child(emeny_instance)
