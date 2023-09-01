extends TextureButton
class_name ResumeTextureButton


# ----------------- DECLARE VARIABLES -----------------



# ----------------- RUN CODE -----------------



# ----------------- DECLARE FUNCTIONS -----------------


func _on_pressed() -> void:
	get_tree().paused = false
