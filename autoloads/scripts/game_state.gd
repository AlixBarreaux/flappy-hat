extends Node
#class_name GameState


# ----------------- DECLARE VARIABLES -----------------


var current_score: int = 0
var high_score: int = 0


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()


# ----------------- DECLARE FUNCTIONS -----------------


func on_obstacle_zone_passed() -> void:
	current_score += 1
	
	if self.current_score > self.high_score:
		self.high_score = self.current_score
		


func _initialize_signals() -> void:
	Events.obstacle_zone_passed.connect(on_obstacle_zone_passed)
