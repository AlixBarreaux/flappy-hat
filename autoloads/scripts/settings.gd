extends Node


# ----------------- DECLARE VARIABLES -----------------


var dev_main_scene_path: String = "res://main.tscn"


# ----------------- RUN CODE -----------------


func _ready() -> void:
	if OS.is_debug_build():
		get_window().size = Vector2(1280.0, 720.0)
		get_tree().change_scene_to_file(dev_main_scene_path)

	TranslationServer.set_locale(OS.get_locale())


# ----------------- DECLARE FUNCTIONS -----------------

