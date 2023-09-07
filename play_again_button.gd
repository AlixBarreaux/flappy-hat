extends TextureButton
class_name PlayAgainButton


# ----------------- DECLARE VARIABLES -----------------



# ----------------- RUN CODE -----------------



# ----------------- DECLARE FUNCTIONS -----------------


func _on_pressed() -> void:
	Events.game_restarted.emit()
