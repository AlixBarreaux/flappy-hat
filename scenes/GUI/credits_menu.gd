extends Control
class_name CreditsMenu


# ----------------- DECLARE VARIABLES -----------------


@export var first_element_to_focus: Control


# ----------------- RUN CODE -----------------



# ----------------- DECLARE FUNCTIONS -----------------


func _on_back_button_pressed() -> void:
	self.visible = false


func _on_visibility_changed() -> void:
#	if self.visible:
#		self.first_element_to_focus.grab_focus()
#
	pass
