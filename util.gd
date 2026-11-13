class_name Util

static func randv3(snap: bool, symmetry: bool, scale: float = 1) -> Vector3:
	var output: Vector3
	for axis in 3:
		var lowbound := -scale if symmetry else 0.
		var dicebrand := randi_range if snap else randf_range
		output[axis] = dicebrand.call(lowbound, scale)
	return output
