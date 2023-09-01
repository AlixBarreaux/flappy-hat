extends Node2D
class_name Obstacle


# ----------------- DECLARE VARIABLES -----------------


# Injected by parent (Obstacles)
@onready var camera: Camera2D = self.get_parent().camera
@onready var boundary_bottom_collision_shape: CollisionShape2D = self.get_parent().boundary_bottom_collision_shape

# Self
@onready var obstacle_passed_zone_collision_shape: CollisionShape2D = $ObstaclePassedZone/CollisionShape2D
@onready var obstacle_passed_zone_half_height = obstacle_passed_zone_collision_shape.shape.size.y / 2.0
@onready var top_height_obstacle_limit: float = get_window().size.y * 0.2
@onready var bottom_height_obstacle_limit: float = get_window().size.y - obstacle_passed_zone_half_height


@onready var audio_stream_player: AudioStreamPlayer = $ObstaclePassedZone/AudioStreamPlayer


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_asserts()


# ----------------- DECLARE FUNCTIONS -----------------


func _initialize_asserts() -> void:
#	assert(self.get_parent() is Obstacles)
	pass


func reset_to_new_random_position() -> void:
	randomize()
	var _random_y_position: float = randf_range(top_height_obstacle_limit, bottom_height_obstacle_limit)
	self.global_position = Vector2(camera.global_position.x + (get_window().size.x), _random_y_position + top_height_obstacle_limit )


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	self.reset_to_new_random_position()


func _on_obstacle_passed_zone_body_exited(body: Node2D) -> void:
	Events.emit_signal("obstacle_zone_passed")
	audio_stream_player.play()
