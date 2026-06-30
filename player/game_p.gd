extends Node2D
var bullet_scene = preload("res://mo/game_mo.tscn")
# var bullet_scene = preload("res://player_L/game 3/player1/game_mo.tscn")
var d: int = 0
var s: int = 300
var palyer_W: int = 16
var shoot_time := 0.5
var shoot = 0
func _process(delta: float):
	shoot += delta
	if Input.is_action_pressed("fire") and shoot > shoot_time:
		shoot = 0
		var bullet_intance = bullet_scene.instantiate()
		bullet_intance.position.x = position.x
		bullet_intance.position.y = position.y - 20
		get_parent().get_node("Node_MO").add_child(bullet_intance)
	if Input.is_action_pressed("left"):
		d = -1
	elif Input.is_action_pressed("right"):
		d = 1
	else:
		d = 0
	position.x = clamp(position.x + d * s * delta, palyer_W, 400 - palyer_W)
