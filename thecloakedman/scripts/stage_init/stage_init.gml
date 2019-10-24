if object_index != sys_global
	return -1;

if ds_exists(blockgrid,ds_type_grid)
	ds_grid_destroy(blockgrid);

blockgrid = ds_grid_create(room_width div CELL_WIDTH, room_height div CELL_WIDTH);
ds_grid_clear(blockgrid, 0);

var bgrid = blockgrid;
var ly, ly_t;
var w, h;
w = ds_grid_width(bgrid);
h = ds_grid_height(bgrid);
ly = layer_get_id("Tile_place");
ly_t = layer_tilemap_get_id(ly);

	
for(var i = 0; i < h; i++)
for(var j = 0; j < w; j++)
{
	var idx = tilemap_get_at_pixel(ly_t, j*CELL_WIDTH, i*CELL_WIDTH);

	switch(get_tilenum(idx))
	{
		case e_tile.block:
		{
			instance_create_layer(j*CELL_WIDTH, i*CELL_WIDTH, "InsBelow", obj_block);

			bgrid[# j, i] = 1;
			break;
		}

		case e_tile.player:
		{
			var sprh, spro;
			sprh = sprite_get_height(spr_man_mask);
			spro = sprite_get_yoffset(spr_man_mask);
			var ix, iy;
			ix = j*CELL_WIDTH + CELL_WIDTH/2;
			iy = i*CELL_WIDTH + CELL_WIDTH - (sprh - spro);
			instance_create_layer(ix, iy, "Ins", obj_player_start);
				
			break;
		}
		
		case e_tile.player1:
		{
			var sprh, spro;
			sprh = sprite_get_height(spr_man_mask);
			spro = sprite_get_yoffset(spr_man_mask);
			var ix, iy;
			ix = j*CELL_WIDTH + CELL_WIDTH/2;
			iy = i*CELL_WIDTH + CELL_WIDTH - (sprh - spro);
			instance_create_layer(ix + CELL_WIDTH/2, iy, "Ins", obj_player_start);
				
			break;
		}

		case e_tile.goal:
		{
			instance_create_layer(j*CELL_WIDTH, i*CELL_WIDTH, "InsAbove", obj_goal);
				
			break;
		}
			
		case e_tile.goal1:
		{
			instance_create_layer(j*CELL_WIDTH, i*CELL_WIDTH - 8, "InsAbove", obj_goal);
				
			break;
		}
			
		case e_tile.goal2:
		{
			instance_create_layer(j*CELL_WIDTH + 8, i*CELL_WIDTH - 8, "InsAbove", obj_goal);
				
			break;
		}
		
		case e_tile.goal3:
		{
			instance_create_layer(j*CELL_WIDTH + 8, i*CELL_WIDTH, "InsAbove", obj_goal);
				
			break;
		}
		
		case e_tile.spikeU:
		{
			instance_create_layer(j*CELL_WIDTH, i*CELL_WIDTH, "InsAbove", obj_spike_up);

			bgrid[# j, i] = 2;
			break;
		}
		
		case e_tile.spikeD:
		{
			instance_create_layer(j*CELL_WIDTH, i*CELL_WIDTH, "InsAbove", obj_spike_down);

			break;
		}
		
		case e_tile.spikeL:
		{
			instance_create_layer(j*CELL_WIDTH, i*CELL_WIDTH, "InsAbove", obj_spike_left);

			break;
		}
		
		case e_tile.spikeR:
		{
			instance_create_layer(j*CELL_WIDTH, i*CELL_WIDTH, "InsAbove", obj_spike_right);

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

return 0;