extends Area2D

var t= true
var d_x:int = 0
var d_y:int = 0
var s = 250

func _process(delta: float):
	
	if Input.is_action_pressed("left"):
		d_x = -1
		position.x = clamp(position.x+d_x*s*delta,16,400-16)
	
	elif Input.is_action_pressed("right"):
		d_x = 1
		position.x = clamp(position.x+d_x*s*delta,16,400-16)
	
	if Input.is_action_pressed("up"):
		d_y = -1
		#position.y+=d_y*s*delta
		position.y = clamp(position.y+d_y*s*delta,14,600-14)
	
	elif Input.is_action_pressed("down"):
		d_y = 1
		#position.y+=d_y*s*delta
		position.y = clamp(position.y+d_y*s*delta,18,600-18)
	
	else :
		d_y = 0
		d_x = 0
