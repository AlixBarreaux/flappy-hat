extends CharacterBody2D
class_name Hero


# ----------------- DECLARE VARIABLES -----------------


@export var gravity: float = 250.0
@export var jump_force: float = 3300.0

@export var max_gravity: float = 600.0
@export var max_jump_force = 3300.0

@onready var collision_shape_2d = $CollisionShape2D
@onready var jump_sound: AudioStreamPlayer = $JumpSound
@onready var death_sound: AudioStreamPlayer = $DeathSound


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()


func _initialize_signals() -> void:
	Events.game_restarted.connect(resurrect)


func _physics_process(delta: float) -> void:
	self.velocity.y += gravity
	
	self.velocity.y = min(self.velocity.y, max_gravity)
	
	self.move_and_slide()


func _unhandled_input(event: InputEvent) -> void:
#	if event is InputEventMouse:
#		self.jump()
	
	if Input.is_action_just_pressed("jump"):
		self.jump()


# ----------------- DECLARE FUNCTIONS -----------------


func set_enabled(value: bool) -> void:
	if value:
		self.collision_shape_2d.set_deferred("disabled", false)
	else:
		self.collision_shape_2d.set_deferred("disabled", true)


func jump() -> void:
	self.velocity.y -= min(jump_force, max_jump_force)
	self.jump_sound.play()


func die() -> void:
	self.set_process_unhandled_input(false)
	set_enabled(false)
	self.death_sound.play()


func resurrect() -> void:
	set_enabled(true)
	self.set_process_unhandled_input(true)
