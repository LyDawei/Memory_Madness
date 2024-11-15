extends Resource

class_name ImageFileList

@export var file_names:Array[String]

func append_file_name(file_name:String) -> void:
    if !'.import' in file_name:
        file_names.append(file_name)

func get_file_names() -> Array[String]:
    return file_names