//left = x - global.VW / 2
//right = x + global.VW / 2
//top = y - global.VH / 2

if (alarm[0]) {
	draw_sprite_part(s_melee_lvl_1, 0, 0, 0, 128, 128 * (time - alarm[0]) / time, global.LSPAWN - 64, global.SPAWNY + 64 - 128 * (time - alarm[0]) / time)
}

// DEBUG INFO
if (global.DEBUG) {
	draw_ellipse(global.LSPAWN-10, global.SPAWNY-10, global.LSPAWN+10, global.SPAWNY+10, 1)
	draw_ellipse(global.RSPAWN-10, global.SPAWNY-10, global.RSPAWN+10, global.SPAWNY+10, 1)
	draw_text(50, 500, string(queue))
}