extends TextureButton
class_name QuitGameButton


# ----------------- DECLARE VARIABLES -----------------


@export var scene_to_load: PackedScene


# ----------------- RUN CODE -----------------



# ----------------- DECLARE FUNCTIONS -----------------


func _on_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_packed(self.scene_to_load)
	
	ScoresManager.set_current_score(0)
