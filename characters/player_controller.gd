extends Node2D

signal move_requested(pos: Vector2)

var player_data = null

func _unhandled_input(event) -> void:
	if event is InputEventMouseButton and event.pressed and player_data.id == MultiplayerManager.my_player_data.id:
		move_requested.emit(get_global_mouse_position())
