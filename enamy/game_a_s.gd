extends Node2D
var enemy_scene = preload("res://kile/game_a.tscn")

func _ready():
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = 0.3
	timer.connect("timeout",self._NEW_emeny)
	timer.start()

func _NEW_emeny():
	var emeny_instance = enemy_scene.instantiate()
	get_parent().get_node("Node_k").add_child(emeny_instance)
