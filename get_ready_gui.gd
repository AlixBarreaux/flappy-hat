extends Control
class_name GetReadyGUI


# ----------------- DECLARE VARIABLES -----------------



# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()


func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouse:
		if event.is_pressed():
			self.close()


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("jump"):
		self.close()


# ----------------- DECLARE FUNCTIONS -----------------


func _initialize_signals() -> void:
	Events.game_restarted.connect(show)


func close() -> void:
	self.hide()
	Events.get_ready_gui_passed.emit()
	self.set_process_unhandled_input(false)
