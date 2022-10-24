if (left)
	exit
instance_create_depth(global.RSPAWN, global.SPAWNY, 0, o_melee, {
	left: false,
	range: 50
})

alarm[0] = 5 * room_speed