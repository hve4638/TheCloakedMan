var grid_w, grid_h;
var fgrid;

fgrid = load_csv("stage.csv");
grid_w = ds_grid_width(fgrid);
grid_h = ds_grid_height(fgrid);

global.stage = ds_grid_create(ACT_SIZE+1,LEVEL_SIZE+1);

ds_grid_clear(global.stage, -1);
//ds_grid_add_region(global.stage,0,0,LEVEL_SIZE,0,0);
ds_grid_set_region(global.stage,0,0,0,ACT_SIZE,0);

var i;
var lvl, act, idx;
for(i = 0; i < grid_h; i++)
{
	lvl = fgrid[# 0, i];
	act = fgrid[# 1, i];
	idx = asset_get_index(fgrid[# 2, i]);
	log(fgrid[# 2, i],": ",idx);

	global.stage[# act, lvl] = idx;
	global.stage[# 0, lvl]++;

	if global.stage[# 0, lvl] < act
		global.stage[# 0, lvl] = act;
	
	if global.stage[# 0, 0] < lvl
		global.stage[# 0, 0] = lvl;
}

for(var i = 0; i <= global.stage[# 0, 0]; i++)
	log(i,": ",global.stage[# 0, i]);