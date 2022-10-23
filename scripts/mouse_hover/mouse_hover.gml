function mouse_hover(btn) {
	if (mouse_x >= btn.x1 and mouse_x <= btn.x2
		and mouse_y >= btn.y1 and mouse_y <= btn.y2)
		return true
	return false
}