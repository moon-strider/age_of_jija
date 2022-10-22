draw_self()
draw_set_halign(fa_left)
draw_rectangle_color(x - 30, y - 90, x + 30, y - 80, c_red, c_red, c_red, c_red, 0)
draw_rectangle_color(x - 30, y - 90 , x - 30 + (hp / maxhp) * 60, y - 80, c_green, c_green, c_green, c_green, 0)
draw_rectangle(x - 30, y - 90, x + 30, y - 80, 1)

if (global.DEBUG) {
	draw_line(x, y, x + 75 * image_xscale, y)
	draw_text(x, y - 50, string(hp))
}