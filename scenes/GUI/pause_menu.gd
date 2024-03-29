extends Control
class_name PauseMenu


# ----------------- DECLARE VARIABLES -----------------


@onready var panel: Panel = $Panel


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self.panel.hide()
	self._initialize_signals()


func _unhandled_key_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("pause_menu"):
		self.toggle_paused()


# ----------------- DECLARE FUNCTIONS -----------------


func set_enabled(value: bool) -> void:
	if value:
		self.show()
		self.set_process_unhandled_key_input(true)
	else:
		self.hide()
		self.set_process_unhandled_key_input(false)

func on_game_over() -> void:
	self.set_enabled(false)


func on_game_restarted() -> void:
	self.set_enabled(true)


func _initialize_signals() -> void:
	Events.game_over.connect(self.on_game_over)
	Events.game_restarted.connect(self.on_game_restarted)


func set_paused(value: bool) -> void:
	get_tree().paused = value
	self.panel.visible = value
	self.panel.visible = value


func toggle_paused() -> void:
	get_tree().paused = !get_tree().paused
	self.panel.visible = !self.panel.visible


func _on_pause_button_pressed() -> void:
	self.toggle_paused()


func _on_resume_button_pressed() -> void:
	self.set_paused(false)
