extends MarginContainer

func _ready():
	await get_tree().create_timer(1.0).timeout
	printt($Control.size)
