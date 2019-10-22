instage = !(room_get_act(room) < 0);

if nextroom_fade
{
	var l = instance_create_depth(0,0,DEPTH_SYSTEM,sys_camera);
	with(l)
	{
		fade_alpha = 1.0;
		fade_add = -0.05;
	}
	
	nextroom_fade = false;
}

if instage
{
	currentlevel = room_get_level(room);
	currentact = room_get_act(room);
	
	
	if ds_exists(blockgrid,ds_type_grid)
		ds_grid_destroy(blockgrid);

	if ds_exists(tilegrid,ds_type_grid)
		ds_grid_destroy(tilegrid);
	
	tilegrid = ds_grid_create(room_width div CEll_WIDTH, room_height div CEll_WIDTH);
	blockgrid = ds_grid_create(room_width div CEll_WIDTH, room_height div CEll_WIDTH);
	
	ds_grid_clear(blockgrid, false);
	
	var bgrid = blockgrid;
	var ly, ly_t;
	ly = layer_get_id("Tile_Place");
	ly_t = layer_tilemap_get_id(ly);
	var w, h;
	w = ds_grid_width(blockgrid);
	h = ds_grid_height(blockgrid);
	
	for(var i = 0; i < h; i++)
	for(var j = 0; j < w; j++)
	{
		var k = tilemap_get_at_pixel(ly_t, j*CEll_WIDTH, i*CEll_WIDTH);
		
		switch(k)
		{
			case 1: //block
			{
				instance_create_layer(j*CEll_WIDTH, i*CEll_WIDTH, "InsBelow", obj_block);

				bgrid[# j, i] = true;
				break;
			}

			case 2:	//goal
			{
				instance_create_layer(j*CEll_WIDTH, i*CEll_WIDTH, "InsAbove", obj_goal);
				
				break;
			}

			case 3: //player
			{
				instance_create_layer(j*CEll_WIDTH, i*CEll_WIDTH, "Ins", obj_player_start);
				
				break;
			}
			
			case 4: //spike
			{
				instance_create_layer(j*CEll_WIDTH, i*CEll_WIDTH, "InsAbove", obj_spike);

				bgrid[# j, i] = true;
				break;
			}
			
			case 5: //goal (-8)
			{
				instance_create_layer(j*CEll_WIDTH, i*CEll_WIDTH - 8, "InsAbove", obj_goal);
				
				break;
			}
		}
	}
	
	layer_set_visible(ly,false);
	
	var ly, ly_t;
	ly = layer_get_id("Tile");
	ly_t = layer_tilemap_get_id(ly);
	
	with(obj_block)
		tilemap_auto(ly_t,cell_x,cell_y);
}