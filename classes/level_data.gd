class_name LevelData

var _level_number: 
	get:
		return _level_number
	set(value):
		_level_number = value

var _cols:
	get:
		return _cols
	set(value):
		_cols = value

var _rows:
	get:
		return _rows
	set(value):
		_rows = value

func _init(level_number:int, cols:int, rows:int) -> void:
	_level_number = level_number
	_cols = cols
	_rows = rows

func get_target_pairs() -> int:
	return int(_cols * _rows / 2)

func get_total_num_tiles() -> int:
	return _cols * _rows

func _to_string() -> String:
	return "Level " + str(_level_number) + " " + str(_cols) + "x" + str(_rows)
