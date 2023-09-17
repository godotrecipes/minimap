extends Node2D

@onready var minimap = $CanvasLayer/Minimap
func _ready():
	get_viewport().warp_mouse(Vector2.ZERO)
	var map_limits = $TileMap.get_used_rect()
	$Player/Camera2D.limit_left = map_limits.position.x * $TileMap.tile_set.tile_size.x
	$Player/Camera2D.limit_top = map_limits.position.y * $TileMap.tile_set.tile_size.y
	$Player/Camera2D.limit_right = map_limits.end.x * $TileMap.tile_set.tile_size.x
	$Player/Camera2D.limit_bottom = map_limits.end.y * $TileMap.tile_set.tile_size.y

	for object in get_tree().get_nodes_in_group("minimap_objects"):
		object.removed.connect(minimap._on_object_removed)
