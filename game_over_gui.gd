extends Control
class_name GameOverGUI


# ----------------- DECLARE VARIABLES -----------------


@export var scores_manager: ScoresManager

@onready var score_count_label: Label = $Panel/ScoreCount
@onready var high_score_count_label: Label = $Panel/HighScoreCount


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()


# ----------------- DECLARE FUNCTIONS -----------------


func on_game_over() -> void:
	self.set_current_score(scores_manager.current_score)
	self.set_high_score(scores_manager.high_score)
	self.show()


func _initialize_signals() -> void:
	Events.game_over.connect(on_game_over)


func set_current_score(value: int) -> void:
	self.score_count_label.text = str(value)


func set_high_score(value: int) -> void:
	self.high_score_count_label.text = str(value)
