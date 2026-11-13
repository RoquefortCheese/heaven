extends Node3D
class_name Platform

const blockrange := Vector2(2, 4)
const maxdisp := 4
const scalerange := Vector2(1, 3)

var blockscene: PackedScene = load("res://block.tscn")

func generate() -> void:
	for iblock in int(2 ** randf_range(blockrange.x, blockrange.y)):
		var block: Block = blockscene.instantiate()
		$Blocks.add_child(block)
		block.position = Util.randv3(true, true, maxdisp)
		for axis in 3:
			block.scale[axis] = int(2 ** randf_range(scalerange.x, scalerange.y))
