///@argu room
var idx
idx = argument[0];

if idx == -1
	return -1;

if ds_grid_value_exists(global.stage,1,1,ACT_SIZE,LEVEL_SIZE,idx)
	return ds_grid_value_y(global.stage,1,1,ACT_SIZE,LEVEL_SIZE,idx);

return -1;