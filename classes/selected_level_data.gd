class_name SelectedLevelData

var _selected_level_images_array: Array[ItemImage]:
    get:
        return _selected_level_images_array
    set(value):
        _selected_level_images_array = value
        
var _target_pairs: int: 
    get:
        return _target_pairs
    set(value):
        _target_pairs = value

var _num_cols: int: 
    get:
        return _num_cols
    set(value):
        _num_cols = value

func _init(
    selected_level_images_array: Array[ItemImage],
    target_pairs: int,
    num_cols: int
) -> void:
    _selected_level_images_array = selected_level_images_array
    _target_pairs = target_pairs
    _num_cols = num_cols

func _to_string() -> String:
    return "SelectedLevelData: " + str(_selected_level_images_array) + ", " + str(_target_pairs) + ", " + str(_num_cols)