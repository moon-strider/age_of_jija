col = collision_line(x, y, x + 75 * image_xscale, y, o_melee, false, true)
var dead = false
if (col == noone) {
	x += image_xscale * 4
	sprite_index = s_melee_lvl_1
} else if (col.left != left) {
	sprite_index = s_melee_lvl_1_atk
	if (!alarm[0]) {
		alarm[0] = 1 * room_speed
		dead = take_damage(col, dmg)
	}
}

if (dead) {
	with col {
		instance_destroy()
	}
	col = noone
}