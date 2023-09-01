extends TextureButton
class_name QuitGameButton


# ----------------- DECLARE VARIABLES -----------------



# ----------------- RUN CODE -----------------



# ----------------- DECLARE FUNCTIONS -----------------


func _on_pressed() -> void:
	get_tree().quit()
