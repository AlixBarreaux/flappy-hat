extends Node
class_name Main


# ----------------- DECLARE VARIABLES -----------------



# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()


# ----------------- DECLARE FUNCTIONS -----------------


func _initialize_signals() -> void:
	Events.game_restarted.connect(self.on_game_restarted)


func on_game_restarted() -> void:
	get_tree().reload_current_scene()

