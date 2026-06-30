extends Node2D


var bullet_scene = preload("res://player_L/game 5/player1_5/game_mo1.tscn")
var palyer_W: int = 16
var shoot_time := 0.5
var shoot = 0
var t = true
var d_x: int = 0
var d_y: int = 0
var s = 250
var s1 = 150

func _process(delta: float):
	shoot += delta
	if Input.is_action_pressed("fire") and shoot > shoot_time:
		shoot = 0
		var bullet_intance = bullet_scene.instantiate()
		bullet_intance.position.x = position.x
		bullet_intance.position.y = position.y - 20
		get_parent().get_node("Node_MO").add_child(bullet_intance)
	if Input.is_action_pressed("left"):
		d_x = -1
		position.x = clamp(position.x + d_x * s * delta, 16, 400 - 16)
	
	elif Input.is_action_pressed("right"):
		d_x = 1
		position.x = clamp(position.x + d_x * s * delta, 16, 400 - 16)
	
	if Input.is_action_pressed("up"):
		d_y = -1
		position.y += d_y * s1 * delta
		# position.y = clamp(position.y + d_y * s * delta, 14, 600 - 14)
	
	elif Input.is_action_pressed("down"):
		d_y = 1
		position.y += d_y * s1 * delta
		# position.y = clamp(position.y + d_y * s * delta, 18, 600 - 18)
	
	else:
		d_y = 0
		d_x = 0
