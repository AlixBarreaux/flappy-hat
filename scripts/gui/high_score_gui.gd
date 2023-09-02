extends Control
class_name HighScoreGUI


# ----------------- DECLARE VARIABLES -----------------


@onready var high_score_counter: Label = $ScoreCounter


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()
	self._initialize()


# ----------------- DECLARE FUNCTIONS -----------------


func _initialize_signals() -> void:
	ScoresManager.high_score_changed.connect(set_high_score)


func _initialize() -> void:
	set_high_score(ScoresManager.high_score)


func set_high_score(value: int) -> void:
	self.high_score_counter.text = str(value)

