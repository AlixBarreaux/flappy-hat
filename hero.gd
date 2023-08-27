extends CharacterBody2D
class_name Hero


# ----------------- DECLARE VARIABLES -----------------


@export var gravity: float = 250.0
@export var jump_force: float = 3300.0
#var rotation_speed:  = 2

@export var max_gravity: float = 600.0
@export var max_jump_force = 3300.0


# ----------------- RUN CODE -----------------


func _physics_process(delta: float) -> void:
	self.velocity.y += gravity
#
#	fall_speed += FALL_FORCE
	
	self.velocity.y = min(self.velocity.y, max_gravity)
	
	self.move_and_slide()


func _unhandled_key_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("jump"):
		self.jump()


# ----------------- DECLARE FUNCTIONS -----------------


func jump() -> void:
	self.velocity.y -= min(jump_force, max_jump_force)
#	rotation = deg_to_rad(-30)
