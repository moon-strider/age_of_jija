// TODO: collision func for all units
col = noone
for (var i = 0; i < array_length(global.PTARGETS); i++) {
	var colT = collision_line(x, y, x + range, y, global.PTARGETS[i], false, true)
	if (colT == noone)
		continue
	if (colT.left == left and colT == global.LBASE
		or colT.left == left and colT == global.RBASE)
		continue
	if (distance_to_object(colT) < distance_to_object(col)) {
		col = colT
	}
}

var dead = false
if (col == noone) {
	x += image_xscale * 4
	sprite_index = s_melee_lvl_1
} else if (instance_exists(col) and col.left != left) {
	sprite_index = s_melee_lvl_1_atk
	if (!alarm[0]) {
		alarm[0] = atk_speed
	}
	if (alarm[0] == round(atk_speed / 2)) {
		dead = take_damage(col, dmg)
	}
}

if (dead) {
	with col {
		instance_destroy()
	}
	col = noone
}