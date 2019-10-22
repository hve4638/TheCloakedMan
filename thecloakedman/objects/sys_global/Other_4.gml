instage = !(room_get_act(room) < 0);

if instage
{
	currentlevel = room_get_level(room);
	currentact = room_get_act(room);
	
	var l = instance_create_depth(0,0,DEPTH_SYSTEM,sys_camera);
	with(l)
	{
		fade_alpha = 1.0;
		fade_add = -0.05;
	}
	
	
	if ds_exists(blockgrid,ds_type_grid)
		ds_grid_destroy(blockgrid);
		
	blockgrid = ds_grid_create(room_width div CEll_WIDTH, room_height div CEll_WIDTH);
	ds_grid_clear(blockgrid, false);
	with(obj_block)
		sys_global.blockgrid[# cell_x, cell_y] = true;
	
	var ly, ly_t;
	ly = layer_get_id("Tile");
	ly_t = layer_tilemap_get_id(ly);
	
	with(obj_block)
		tilemap_auto(ly_t,cell_x,cell_y);
}