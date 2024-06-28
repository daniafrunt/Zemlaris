if mouse_wheel_up() and (camera_get_view_width(camera) > 512 
						and camera_get_view_height(camera) > 290)
{
	camera_set_view_size(camera, camera_get_view_width(camera) / 1.08, 
							camera_get_view_height(camera) / 1.08)
} 

if mouse_wheel_down() and (camera_get_view_width(camera) < room_width * 0.8 
						and camera_get_view_height(camera) < room_height * 0.8)
{
	camera_set_view_size(camera, camera_get_view_width(camera) * 1.08, 
							camera_get_view_height(camera) * 1.08)
}