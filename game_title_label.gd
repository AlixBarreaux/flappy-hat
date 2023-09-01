extends Label
class_name GameTitleLabel


# ----------------- DECLARE VARIABLES -----------------


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self.text = ProjectSettings.get("application/config/name")


# ----------------- DECLARE FUNCTIONS -----------------




