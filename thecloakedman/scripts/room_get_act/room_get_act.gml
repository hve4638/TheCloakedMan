///@argu room
var idx
idx = argument[0];
if ds_map_exists(global.room_act, idx)
	return global.room_act[? idx];

return -1;