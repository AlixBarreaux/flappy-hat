extends Node2D
class_name ArenaBoundaries


# ----------------- DECLARE VARIABLES -----------------


@onready var boundary_top: CollisionShape2D = $BoundaryTop
@onready var boundary_bottom: CollisionShape2D = $BoundaryBottom


# ----------------- RUN CODE -----------------


func _ready() -> void:
	boundary_top.shape.size = Vector2(get_viewport_rect().size.x, get_viewport_rect().size.y / 8)
	boundary_bottom.shape.size = Vector2(get_viewport_rect().size.x, get_viewport_rect().size.y / 8)
	
	boundary_bottom.global_position = Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y - boundary_bottom.shape.size.y / 2)
	boundary_top.global_position = Vector2(get_viewport_rect().size.x / 2, -boundary_bottom.shape.size.y / 2)


# ----------------- DECLARE FUNCTIONS -----------------




