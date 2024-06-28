if mouse_check_button_pressed(mb_left) selected = 0

switch(obj_selection.box_position)
{
	case 1:
		if (x - 32 < obj_selection.x2 and x + 32 > obj_selection.x1)
		    and
		   (y + 32 > obj_selection.y2 and y - 32 < obj_selection.y1)
		   selected = 1
	break
	
	case 2:
		if (x + 32 > obj_selection.x2 and x - 32 < obj_selection.x1)
		    and
		   (y + 32 > obj_selection.y2 and y - 32 < obj_selection.y1)
		   selected = 1
	break
	
	case 3: 
		if (x + 32 > obj_selection.x2 and x - 32 < obj_selection.x1)
		    and
		   (y - 32 < obj_selection.y2 and y + 32 > obj_selection.y1)
		   selected = 1
	break
	
	case 4:
		if (x - 32 < obj_selection.x2 and x + 32 > obj_selection.x1)
		    and
		   (y - 32 < obj_selection.y2 and y + 32 > obj_selection.y1)
		   selected = 1
	break
}

if keyboard_check_pressed(ord("A")) and selected
{
	path_delete(path)
	path = path_add()
	target_x = mouse_x
	target_y = mouse_y
	mp_grid_path(obj_controller.grid, path, x, y, target_x, target_y, true)
	path_start(path, 10, path_action_stop, true)
}

if cool_wave >= 42 cool_wave_bool = 0
if cool_wave <= 37 cool_wave_bool = 1

if selected 
{
	switch(cool_wave_bool)
	{
	case 0:
		cool_wave -= 0.1
	break;
	case 1:
		cool_wave += 0.1
	break;
	}
}
