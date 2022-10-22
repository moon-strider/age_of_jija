left = x - global.VW / 2
right = x + global.VW / 2
top = y - global.VH / 2

draw_set_color(c_black)

// DRAW LEFT HEALTHBAR
draw_set_halign(fa_left)
draw_rectangle_color(left + 30, top + 40, left + 430, top + 80, c_red, c_red, c_red, c_red, 0)
draw_rectangle_color(left + 30, top + 40, left + 30 + (global.LBASE.hp / global.LBASE.maxhp) * 400, 
					top + 80, c_green, c_green, c_green, c_green, 0)
draw_rectangle(left + 30, top + 40, left + 430, top + 80, 1)
draw_text(left + 30, top + 40, string(global.LBASE.hp))

// DRAW RIGHT HEALTHBAR
draw_set_halign(fa_right)
draw_rectangle_color(right - 430, top + 40, right - 30, top + 80, c_red, c_red, c_red, c_red, 0)
draw_rectangle_color(right - 30 - (global.RBASE.hp / global.RBASE.maxhp) * 400, top + 40, right - 30, 
					top + 80, c_green, c_green, c_green, c_green, 0)
draw_rectangle(right - 430, top + 40, right - 30, top + 80, 1)
draw_text(right - 30, top + 40, string(global.RBASE.hp))

if (global.DEBUG) {
	draw_ellipse(global.LSPAWN-10, global.SPAWNY-10, global.LSPAWN+10, global.SPAWNY+10, 1)
	draw_ellipse(global.RSPAWN-10, global.SPAWNY-10, global.RSPAWN+10, global.SPAWNY+10, 1)
}