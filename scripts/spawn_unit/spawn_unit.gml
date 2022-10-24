function spawn_unit(obj, left, range, spawn) {
	return instance_create_depth(spawn, global.SPAWNY, 0, obj, {
		range: range,
		left: left
	})
}