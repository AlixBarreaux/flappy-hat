extends Camera2D
class_name CameraMain


# ----------------- DECLARE VARIABLES -----------------


const direction: Vector2 = Vector2(1.0, 0.0)
var scroll_speed: float = 5.0


# ----------------- RUN CODE -----------------


func _physics_process(delta: float) -> void:
	self.position += direction * scroll_speed


# ----------------- DECLARE FUNCTIONS -----------------




