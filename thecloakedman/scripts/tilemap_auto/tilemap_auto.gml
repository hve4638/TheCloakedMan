///@argu tilemap_id
///@argu cell_x
///@argu cell_y
var ly, cx, cy;
var grid, idx;
ly = argument[0];
cx = argument[1];
cy = argument[2];
grid = sys_global.blockgrid;

var w, h;
w = ds_grid_width(grid);
h = ds_grid_height(grid);

var l, r, u, d;
l = grid[# modulo(cx-1,w), modulo(cy,h)];
r = grid[# modulo(cx+1,w), modulo(cy,h)];
u = grid[# modulo(cx,w), modulo(cy-1,h)];
d = grid[# modulo(cx,w), modulo(cy+1,h)];


if u && d //dirt
{
	idx = 1*5 + 1;
}
else if d //grass
{
	idx = 0*5;

	if l && r
		idx += 1;
	else if r
		idx += 2;
	else if l
		idx += 3;
	else
		idx += 4;
}
else if u //bottom
{
	idx = 1*5;
	
	if l && r
		idx += 1;
	else if r
		idx += 2;
	else if l
		idx += 3;
	else
		idx += 4;
}
else 
{
	idx = 2*5;
	
	if l && r
		idx += 1;
	else if r
		idx += 2;
	else if l
		idx += 3;
	else
		idx += 4;
}
tilemap_set(ly,idx,cx,cy);