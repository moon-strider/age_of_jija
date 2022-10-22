var key_right = keyboard_check_direct(vk_right)
var key_left = keyboard_check_direct(vk_left)

x += global.CAM_SPEED * (key_right - key_left)
x = clamp(x, global.VW / 2, room_width - global.VW / 2)

global.LBASE.hp -= 1
global.RBASE.hp -= 1