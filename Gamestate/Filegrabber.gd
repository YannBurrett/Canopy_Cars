extends Node

func get_files(folder):
	var gathered_files = []
	var dir = Directory.new()
	
	dir.open(folder)
	dir.list_dir_begin()
	
	while true:
		var file = dir.get_next()
		if file == "":
			break
		elif not file.begins_with(".") and not file.ends_with(".import"):
			gathered_files.append(folder+file)
	
	return gathered_files
