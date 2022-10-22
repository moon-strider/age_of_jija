window_set_fullscreen(true)

base_width = sprite_get_width(s_base_lvl_1)
base_height = sprite_get_height(s_base_lvl_1)

global.LBASE = instance_create_depth(base_width + 10, room_height - base_height - 100, 0, o_base)
global.RBASE = instance_create_depth(room_width - base_width - 10, room_height - base_height - 100, 0, o_base)
global.LSPAWN = global.LBASE.x + 192
global.RSPAWN = global.RBASE.x - 192
global.SPAWNY = global.LBASE.y
global.RBASE.image_xscale *= -1
global.CAM_SPEED = 50
global.DEBUG = true
global.VW = 1920
global.VH = 1080