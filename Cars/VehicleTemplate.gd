extends VehicleBody

export var Player_ID = 0
export var car_name = ""

export var max_speed = 20
export var throttle = 210000
export var max_steer = 15
export var max_health = 100


func _physics_process(delta):
	engine_force = 0
	if Input.is_action_pressed("Player_"+str(Player_ID)+"_Forward"):
		if linear_velocity.length() < max_speed:
			engine_force = throttle * delta
	if Input.is_action_pressed("Player_"+str(Player_ID)+"_Back"):
		if linear_velocity.length() < max_speed:
			engine_force = -throttle * delta
		
	steering +=(Input.get_action_strength("Player_"+str(Player_ID)+"_Left") - Input.get_action_strength("Player_"+str(Player_ID)+"_Right")) * delta
	steering = clamp(steering, -max_steer, max_steer)
	steering = lerp(steering, 0, 0.1)
