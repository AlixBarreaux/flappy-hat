extends Node2D
class_name MovingObjects


# ----------------- DECLARE VARIABLES -----------------


var direction: Vector2 = Vector2(1.0, 0.0)
@export var scroll_speed: float = 300.0


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()
	self.set_enabled(false)


func _physics_process(delta: float) -> void:
	self.global_position += self.direction * self.scroll_speed * delta


# ----------------- DECLARE FUNCTIONS -----------------


func _initialize_signals() -> void:
	Events.game_over.connect(on_game_over)
#	Events.game_restarted.connect(on_game_restarted)
	Events.get_ready_gui_passed.connect(on_get_ready_gui_passed)


func on_game_over() -> void:
#	self.global_position = Vector2(0.0, 0.0)
	pass
	


func set_enabled(value: bool) -> void:
	if value:
		self.set_physics_process(true)
	else:
		self.set_physics_process(false)


func on_get_ready_gui_passed() -> void:
	self.set_enabled(true)
