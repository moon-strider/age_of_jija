draw_set_color(c_black)

// DRAW UNIT PURCHASE BUTTONS
var names = variable_struct_get_names(global.BUTTONS.unit_buttons)
for (var i = 0; i < array_length(names); i++) {
	var btn = variable_struct_get(global.BUTTONS.unit_buttons, names[i])
	if (mouse_hover(btn))
		draw_rectangle_color(btn.x1, btn.y1, btn.x2, btn.y2, c_green, c_green, c_green, c_green, 1)
	else
		draw_rectangle(btn.x1, btn.y1, btn.x2, btn.y2, 1)
	draw_sprite_stretched(btn.spr, 0, btn.x1, btn.y1, 100, 100)
}

// DRAW LEFT HEALTHBAR
draw_set_halign(fa_left)
draw_rectangle_color(30, 40, 430, 80, c_red, c_red, c_red, c_red, 0)
draw_rectangle_color(30, 40, 30 + (global.LBASE.hp / global.LBASE.maxhp) * 400, 
					80, c_green, c_green, c_green, c_green, 0)
draw_rectangle(30, 40, 430, 80, 1)
draw_text(30, 40, string(global.LBASE.hp))

// DRAW RIGHT HEALTHBAR
draw_set_halign(fa_right)
draw_rectangle_color(global.VW - 430, 40, global.VW - 30, 80, c_red, c_red, c_red, c_red, 0)
draw_rectangle_color(global.VW - 30 - (global.RBASE.hp / global.RBASE.maxhp) * 400, 40, global.VW - 30, 
					80, c_green, c_green, c_green, c_green, 0)
draw_rectangle(global.VW - 430, 40, global.VW - 30, 80, 1)
draw_text(global.VW - 30, 40, string(global.RBASE.hp))