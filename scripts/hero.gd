extends CharacterBody2D
class_name Hero


# ----------------- DECLARE VARIABLES -----------------


@export var gravity: float = 250.0
@export var jump_force: float = 21450 #// ~/6.5 without delta time

@export var max_gravity: float = 600.0
@export var max_jump_force = 21450 #// ~/6.5 without delta time

@onready var collision_shape_2d = $CollisionShape2D
@onready var jump_sound: AudioStreamPlayer = $JumpSound
@onready var death_sound: AudioStreamPlayer = $DeathSound
@onready var animation_player: AnimationPlayer = $AnimationPlayer


# ----------------- RUN CODE -----------------


func _ready() -> void:
	self._initialize_signals()
	self._initialize()


func _initialize_signals() -> void:
	Events.get_ready_gui_passed.connect(on_get_ready_gui_passed)


func on_get_ready_gui_passed() -> void:
	self.set_enabled(true)
	# BUG: Jumping all the way to the top rather than just a normal jump
#	self.jump()


func _initialize() -> void:
	self.set_enabled(false)


func _physics_process(delta: float) -> void:
	self.velocity.y += gravity
	
	self.velocity.y = min(self.velocity.y, max_gravity)
	
	self.move_and_slide()


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("jump"):
		print("Action JUMP SPACE BAR")
		self.jump()
	elif event is InputEventMouseButton:
		if event.is_pressed():
			self.jump()
			print("Action JUMP MOUSE")

# ----------------- DECLARE FUNCTIONS -----------------


func set_enabled(value: bool) -> void:
	if value:
		self.collision_shape_2d.set_deferred("disabled", false)
		self.set_process_unhandled_input(true)
		self.set_physics_process(true)
		
	else:
		self.collision_shape_2d.set_deferred("disabled", true)
		self.set_process_unhandled_input(false)
		self.set_physics_process(false)


func jump() -> void:
	self.velocity.y -= min(jump_force, max_jump_force)
	self.jump_sound.play()
	print("JUMP")


func die() -> void:
	self.set_enabled(false)
	self.animation_player.play("die")
	self.death_sound.play()
