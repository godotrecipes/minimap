extends Area2D
class_name Crate

signal removed

var minimap_icon = "alert"

func _on_body_entered(body):
	if body is Player:
		removed.emit(self)
		queue_free()
