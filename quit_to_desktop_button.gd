extends Button
class_name QuitToDesktopButton


# ----------------- DECLARE VARIABLES -----------------


@export var scene_to_load: PackedScene


# ----------------- RUN CODE -----------------



# ----------------- DECLARE FUNCTIONS -----------------


func _on_pressed() -> void:
	get_tree().quit()
