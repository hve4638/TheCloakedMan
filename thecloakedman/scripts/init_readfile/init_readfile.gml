var grid_w, grid_h;
var fgrid;

fgrid = load_csv("stage.csv");
grid_w = ds_grid_width(fgrid);
grid_h = ds_grid_height(fgrid);

global.stage = ds_map_create();
global.room_level = ds_map_create();
global.room_act = ds_map_create();

var i;
var lvl, act, idx;
for(i = 0; i < grid_h; i++)
{
	lvl = fgrid[# 0, i];
	act = fgrid[# 1, i];
	idx = asset_get_index(fgrid[# 2, i]);
	
	if !ds_map_exists(global.stage,lvl)
		global.stage[? lvl] = ds_map_create();
	
	var world = global.stage[? lvl];
	world[? act] = idx;
	
	global.room_level[? idx] = lvl;
	global.room_act[? idx] = act;
}
