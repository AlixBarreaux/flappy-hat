extends Control
class_name MainMenu


# ----------------- DECLARE VARIABLES -----------------


@export var scene_to_load: PackedScene
@export var initial_button_to_focus: Button


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self.initial_button_to_focus.grab_focus()


# ----------------- DECLARE FUNCTIONS -----------------


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_packed(scene_to_load)
