if mouse_check_button_pressed(mb_left) 
{
	x1 = mouse_x
	y1 = mouse_y
}

if mouse_check_button(mb_left)
{
	x2 = mouse_x
	y2 = mouse_y
}

if mouse_check_button_released(mb_left)
{
	x1 = 0
	x2 = 0
	y1 = 0
	y2 = 0
	box_position = 0
}

if x1 <= x2
{
	if y1 >= y2 box_position = 1
	else box_position = 4
} else 
{
	if y1 >= y2 box_position = 2
	else box_position = 3
}