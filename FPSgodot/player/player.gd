extends KinematicBody

const MOUSE_SENSITIVITY = 0.1

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _process(delta):
	window_activity()

func _input(event):
	if event is InputEventMouseMotion:
		#Rotate camera verticaly 
		$CamRoot.rotate_x(deg2rad(event.relative.y * MOUSE_SENSITIVITY * -1))
		
		#Rotate camera horizontaly 
		self.rotate_y(deg2rad(event.relative.x * MOUSE_SENSITIVITY * -1)) 

# To show/hide the cursor
func window_activity():
	if Input.is_action_just_pressed("ui_cancel"):
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
