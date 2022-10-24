window_set_fullscreen(true)

global.VW = 1920
global.VH = 1080

base_width = sprite_get_width(s_base_lvl_1)
base_height = sprite_get_height(s_base_lvl_1)

left = x - global.VW / 2
right = x + global.VW / 2
top = y - global.VH / 2

global.LBASE = instance_create_depth(base_width + 10, room_height - base_height - 100, 0, o_base)
global.RBASE = instance_create_depth(room_width - base_width - 10, room_height - base_height - 100, 0, o_base)
global.LSPAWN = global.LBASE.x + 192
global.RSPAWN = global.RBASE.x - 192
global.SPAWNY = global.LBASE.y
global.RBASE.image_xscale *= -1
global.CAM_SPEED = 50
global.DEBUG = true

global.LBASE.left = true
global.RBASE.left = false

global.SPAWNER = self

// LEFT BASE UPGRADES
global.LUPGRADES = {
	level: 1,
	spaces: 1,
	melee: 0,
	ranged: 0,
	special: 0,
	boss: 0
}

// RIGHT BASE UPGRADES
global.RUPGRADES = {
	level: 1,
	spaces: 1,
	melee: 0,
	ranged: 0,
	special: 0,
	boss: 0
}

// BUTTON COORDS
global.BUTTONS = {
	unit_buttons: {
		melee: {
			range: 50,
			unit: o_melee,
			time: 1*room_speed,
			spr: s_melee_lvl_1,
			x1: 30,
			y1: 90,
			x2: 130,
			y2: 190
		},
		ranged: {
			range: 150,
			unit: o_melee, //!!
			time: 1*room_speed,
			spr: s_base_lvl_1,
			x1: 150,
			y1: 90,
			x2: 250,
			y2: 190
		}
	}
}

// ALL HITTABLE OBJECTS
global.PTARGETS = [
	o_melee,
	o_base
]

// TODO: currency: xp and hp
// TODO: ranged unit behaviour
// TODO: xp
// TODO: mutation tree + info
// TODO: modular units that you upgrade yourself
// TODO: modal humanoid slot upgrade window for units
// TODO: every upgrade adds cost to unit and xp for its death
// TODO: you create the units yourself and save the templates
// TODO: unit veterancy + turret veterancy
// TODO: living base upgrades
// TODO: levels with different handicaps
// TODO: more handicaps you can choose to increase reward
// TODO: tradeoffs that you can choose
// TODO: upgrades to the game between levels
// TODO: economics with different resources
// TODO: levels increase after match
// TODO: permanent upgrades you can make
// TODO: timed queue for upgrades
// TODO: unit creation animation from lower to upper part of sprite