//Grid
grid = mp_grid_create(0, 0, room_width / 64, room_height / 64, 64, 64)
mp_grid_add_instances(grid, obj_unpassable, 0)

//Camera
camera = view_camera[0]
camera_set_view_size(camera, 16 * 64 * 1.5, 9 * 64 * 1.5)