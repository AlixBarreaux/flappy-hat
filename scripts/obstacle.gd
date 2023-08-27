extends StaticBody2D
class_name Obstacle


# ----------------- DECLARE VARIABLES -----------------


@export var camera: Camera2D
@export var boundary_bottom_collision_shape: CollisionShape2D

@onready var obstacle_passed_zone_collision_shape: CollisionShape2D = $ObstaclePassedZone/CollisionShape2D
@onready var obstacle_passed_zone_half_height = obstacle_passed_zone_collision_shape.shape.size.y / 2.0
@onready var top_height_obstacle_limit: float = get_window().size.y * 0.2
@onready var bottom_height_obstacle_limit: float = get_window().size.y - obstacle_passed_zone_half_height


# ----------------- RUN CODE -----------------


# ----------------- DECLARE FUNCTIONS -----------------


func reset_to_new_random_position() -> void:
	randomize()
	var _random_y_position: float = randf_range(top_height_obstacle_limit, bottom_height_obstacle_limit)
	self.global_position = Vector2(camera.global_position.x + (get_window().size.x), _random_y_position + top_height_obstacle_limit )


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	self.reset_to_new_random_position()


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass
