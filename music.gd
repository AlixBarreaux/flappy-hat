extends AudioStreamPlayer
class_name Music


# ----------------- DECLARE VARIABLES -----------------


@onready var animation_player: AnimationPlayer = $AnimationPlayer


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()


# ----------------- DECLARE FUNCTIONS -----------------


func _initialize_signals() -> void:
	Events.game_over.connect(self.on_game_over)


func on_game_over() -> void:
	self.animation_player.play("fade_out")
