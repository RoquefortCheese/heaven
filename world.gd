extends Node
class_name World

const dims := Vector3.ONE * 8
const spacing := Vector3.ONE * 16
const wobble := 0.4
const freq := 0.1

var platformscene: PackedScene = load("res://platform.tscn")

func _ready() -> void:
	generate()

func generate() -> void:
	for x in dims.x:
		for y in dims.y:
			for z in dims.z:
				if randf() < freq:
					var point := Vector3(x, y, z)
					var platform: Platform = platformscene.instantiate()
					$Platforms.add_child(platform)
					platform.position = (point + Util.randv3(true, true, wobble)) * spacing
					platform.generate()
