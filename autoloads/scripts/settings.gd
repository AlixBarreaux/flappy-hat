extends Node


# ----------------- DECLARE VARIABLES -----------------



# ----------------- RUN CODE -----------------


func _ready() -> void:
	if OS.is_debug_build():
		get_window().size = Vector2(1280.0, 720.0)




# ----------------- DECLARE FUNCTIONS -----------------

