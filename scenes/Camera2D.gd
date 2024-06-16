extends Camera2D
class_name PanningCamera2D

const MIN_ZOOM: float = 0.1
const MAX_ZOOM: float = 1.0
const ZOOM_RATE: float = 8.0
const ZOOM_INCREMENT: float = 0.1

var _target_zoom: float = 1.0


func _physics_process(delta: float) -> void:
	zoom = lerp(zoom, _target_zoom * Vector2.ONE, ZOOM_RATE * delta)
	set_physics_process(not is_equal_approx(zoom.x, _target_zoom))

func zoom_in() -> void:
	_target_zoom = max(_target_zoom - ZOOM_INCREMENT, MIN_ZOOM)
	set_physics_process(true)
	
func zoom_out() -> void:
	_target_zoom = min(_target_zoom + ZOOM_INCREMENT, MAX_ZOOM)
	set_physics_process(true)

var zoom_min = Vector2(.2,.2)
var zoom_max = Vector2(2,2)
var zoom_speed = Vector2(.2,.2)

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
				if zoom > zoom_min:
					zoom -= zoom_speed
					if is_equal_approx(zoom.x, 0.0):
						zoom.x = zoom_min.x
					if is_equal_approx(zoom.y, 0.0):
						zoom.y = zoom_min.y
			if event.button_index == MOUSE_BUTTON_WHEEL_UP:
				if zoom < zoom_max:
					zoom += zoom_speed
					if is_equal_approx(zoom.x, 0.0):
						zoom.x = zoom_max.x
					if is_equal_approx(zoom.y, 0.0):
						zoom.y = zoom_max.y
	if event is InputEventMouseMotion:
		if event.button_mask == MOUSE_BUTTON_MASK_MIDDLE:
			position -= event.relative / zoom
	pass


