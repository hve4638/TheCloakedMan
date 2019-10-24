///@argu index
var idx, w;
idx = argument[0];
w = ds_grid_width(global.placegrid);

return global.placegrid[# idx mod w, idx div w];


/*
var l = global.placegrid[# idx mod w, idx div w];

if l != e_tile.block && l != e_tile.air
{
	var t;
	if l == e_tile.player t = "player";
	if l == e_tile.goal t = "goal";
	if l == e_tile.goal1 t = "goal1";
	if l == e_tile.spikeD t = "spikeD";
	if l == e_tile.spikeU t = "spikeU";
	if l == e_tile.spikeL t = "spikeL";
	if l == e_tile.spikeR t = "spikeR";
	
	log(idx," -> (",idx div w,",",idx div w,") : ", l, " ",t);
}
*/