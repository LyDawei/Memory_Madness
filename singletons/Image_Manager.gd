extends Node

const FRAME_IMAGES: Array[Texture2D] = [
	preload('res://assets/frames/blue_frame.png'),
	preload('res://assets/frames/green_frame.png'),
	preload('res://assets/frames/hidden_frame_blank.png'),
	preload('res://assets/frames/red_frame.png'),
	preload('res://assets/frames/yellow_frame.png'),
]

var _item_images : Array[ItemImage] = []

func _ready() -> void:
	var image_resource:ImageFileList = load('res://resources/image_file_list.tres')

	for fileName in image_resource.get_file_names():
		add_item_image(fileName)
	
	print(_item_images)
	pass

func add_item_image(filePath:String) -> void:
	var new_item : ItemImage = ItemImage.new(filePath.get_file(), load(filePath))
	_item_images.append(new_item)

func get_random_image() -> ItemImage:
	return _item_images.pick_random()

func get_random_frame() -> Texture2D:
	return FRAME_IMAGES.pick_random()

func get_image(index:int) -> ItemImage:
	return _item_images[index]

func shuffle_images() -> void:
	_item_images.shuffle()