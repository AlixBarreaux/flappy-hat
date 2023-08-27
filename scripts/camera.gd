extends Node2D
class_name MovingObjects


# ----------------- DECLARE VARIABLES -----------------


var direction: Vector2 = Vector2(1.0, 0.0)
@export var scroll_speed: float = 300.0


# ----------------- RUN CODE -----------------


func _physics_process(delta: float) -> void:
	self.global_position += direction * scroll_speed * delta


# ----------------- DECLARE FUNCTIONS -----------------




