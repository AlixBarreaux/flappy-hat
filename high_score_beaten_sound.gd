extends AudioStreamPlayer
class_name HighScoreBeatenSound


# ----------------- DECLARE VARIABLES -----------------



# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()


# ----------------- DECLARE FUNCTIONS -----------------


func _initialize_signals() -> void:
	ScoresManager.high_score_beaten.connect(self.on_high_score_beaten)


func on_high_score_beaten() -> void:
	if ScoresManager.current_score < 5: return
	self.play()
