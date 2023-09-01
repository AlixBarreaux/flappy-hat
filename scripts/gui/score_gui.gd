extends Control
class_name ScoreGUI


# ----------------- DECLARE VARIABLES -----------------


@export var scores_manager: ScoresManager

@onready var current_score_counter: Label = $ScoreCounter


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()
	self._initialize()


# ----------------- DECLARE FUNCTIONS -----------------


func _initialize_signals() -> void:
	scores_manager.current_score_changed.connect(set_current_score)


func _initialize() -> void:
	set_current_score(0)


func set_current_score(value: int) -> void:
	self.current_score_counter.text = str(value)
