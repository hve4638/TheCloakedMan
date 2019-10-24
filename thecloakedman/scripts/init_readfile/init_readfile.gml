var grid_w, grid_h;
var fgrid;

fgrid = load_csv(FILE_STAGE);
grid_w = ds_grid_width(fgrid);
grid_h = ds_grid_height(fgrid);

global.stage = ds_grid_create(ACT_SIZE+1,LEVEL_SIZE+1);

ds_grid_clear(global.stage, -1);

ds_grid_set_region(global.stage,0,0,0,LEVEL_SIZE,0);

var i;
var lvl, act, idx;
for(i = 0; i < grid_h; i++)
{
	lvl = fgrid[# 0, i];
	act = fgrid[# 1, i];
	idx = asset_get_index(fgrid[# 2, i]);

	global.stage[# act, lvl] = idx;
	global.stage[# 0, lvl]++;

	if global.stage[# 0, lvl] < act
		global.stage[# 0, lvl] = act;
	
	if global.stage[# 0, 0] < lvl
		global.stage[# 0, 0] = lvl;
}
ds_grid_destroy(fgrid);




global.unlock = ds_grid_create(ACT_SIZE+1,LEVEL_SIZE+1);
ds_grid_clear(global.unlock, 0);

var f, fstr;
if file_exists(FILE_UNLOCK)
{
	f = file_text_open_read(FILE_UNLOCK);
	fstr = file_text_read_string(f);
	file_text_close(f);
	
	ds_grid_read(global.unlock ,fstr);
}
else
{
	global.unlock[# 1, 1] = true;
}







