extends AudioStreamPlayer
class_name Music


# ----------------- DECLARE VARIABLES -----------------


@onready var animation_player: AnimationPlayer = $AnimationPlayer


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()


# ----------------- DECLARE FUNCTIONS -----------------


func _initialize_signals() -> void:
	Events.get_ready_gui_passed.connect(on_get_ready_gui_passed)
	Events.game_over.connect(self.on_game_over)


func on_get_ready_gui_passed() -> void:
	self.play()


func on_game_over() -> void:
	self.animation_player.play("fade_out")
