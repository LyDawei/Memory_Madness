extends Node

var _levels: Dictionary = {
	1: LevelData.new(1,2,2),
	2: LevelData.new(2,3,3),
	3: LevelData.new(3,5,5),
	4: LevelData.new(4,8,8),
	5: LevelData.new(5,13,13),
	6: LevelData.new(6,21,21),
	7: LevelData.new(7,34,34),
	8: LevelData.new(8,55,55),
	9: LevelData.new(9,89,89),
	10: LevelData.new(10,144,144),
}

func _ready() -> void:

	pass


func get_level(level_number:int) -> LevelData:
	return _levels.get(level_number)

func get_level_count() -> int:
	return _levels.size()


func get_level_selection(level_num: int) -> SelectedLevelData:
	var ld = _levels[level_num]
	var selected_level_images: Array[ItemImage] = []

	ImageManager.shuffle_images()

	for i in range(ld.get_target_pairs()):
		selected_level_images.append(ImageManager.get_image(i))
		selected_level_images.append(ImageManager.get_image(i))

	selected_level_images.shuffle()

	return SelectedLevelData.new(selected_level_images, ld.get_target_pairs(), ld._cols)
