var key_right = keyboard_check_direct(vk_right)
var key_left = keyboard_check_direct(vk_left)

x += global.CAM_SPEED * (key_right - key_left)
x = clamp(x, global.VW / 2, room_width - global.VW / 2)

if (array_length(queue) > 0 && !alarm[0]) {
	time = variable_struct_get(queue[0], "time")
	unit = variable_struct_get(queue[0], "unit")
	left = variable_struct_get(queue[0], "left")
	range = variable_struct_get(queue[0], "range")
	spawn_point = left ? global.LSPAWN : global.RSPAWN
	array_delete(queue, 0, 1)
	alarm[0] = time
}