extends Area2D
class_name KillZone


# ----------------- DECLARE VARIABLES -----------------



# ----------------- RUN CODE -----------------



# ----------------- DECLARE FUNCTIONS -----------------


func _on_body_entered(body: Node2D) -> void:
	body.die()
	Events.emit_signal("game_over")
