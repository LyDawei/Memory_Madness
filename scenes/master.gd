extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var selected_level: SelectedLevelData = GameManager.get_level_selection(3)
	print(selected_level)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
