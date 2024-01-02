extends KinematicBody

const MOUSE_SENSITIVITY = 0.1

func _input(event):
	if event is InputEventMouseMotion:
		#Rotate camera verticaly 
		$CamRoot.rotate_x(deg2rad(event.relative.y * MOUSE_SENSITIVITY * -1))
		
		#Rotate camera horizontaly 
		self.rotate_y(deg2rad(event.relative.x * MOUSE_SENSITIVITY * -1)) 
