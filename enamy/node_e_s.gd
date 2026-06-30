extends Node
#var enemy_scene = preload("res://enamy/game_a_p.tscn")
var enemy_scene = preload("res://kile/game_a_p.tscn")
func _ready():
	get_parent().get_node("Area2D_B").connect("area_entered",self._the_end)
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = 1.3
	timer.connect("timeout",self._NEW_emeny)
	timer.start()
func _NEW_emeny():
	var emeny_instance = enemy_scene.instantiate()
	get_parent().get_node("Node_AM").add_child(emeny_instance)
func _the_end(body: Node):
	if body is Enamy:
		#get_tree().set_pause(true)
		get_tree().change_scene_to_file("res://folder_C/control_d.tscn")
