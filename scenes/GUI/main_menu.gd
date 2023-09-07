extends Control
class_name MainMenu


# ----------------- DECLARE VARIABLES -----------------


@export var scene_to_load_path: String
@export var initial_element_to_focus: Button

@export var credits_menu: CreditsMenu


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self.initial_element_to_focus.grab_focus()


# ----------------- DECLARE FUNCTIONS -----------------


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file(self.scene_to_load_path)


func _on_credits_button_pressed() -> void:
	self.credits_menu.show()
