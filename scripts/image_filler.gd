@tool
extends Node


const PATH:String = 'res://assets/glitch'

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var dir = DirAccess.open(PATH)
	var ifl = ImageFileList.new()
	if dir:
		var files = dir.get_files()
		for fn in files:
			ifl.append_file_name(fn)

		ResourceSaver.save(ifl, 'res://resources/image_file_list.tres')
		print('ImageFileList saved to resources/image_file_list.tres')