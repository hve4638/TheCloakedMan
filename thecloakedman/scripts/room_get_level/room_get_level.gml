///@argu room
var idx
idx = argument[0];
if ds_map_exists(global.room_level, idx)
	return global.room_level[? idx];

return -1;