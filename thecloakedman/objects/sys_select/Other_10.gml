var ox, oy;
ox = room_width div 2;
oy = room_height div 3;

var w, h;
w = maxact mod 6;
h = maxact div 6 + 1;

var i, j;
for(j = 1; j <= h; j++)
{
	if j == h
		for(i = 1; i <= w; i++)
		{
			var l = instance_create_layer(ox + 24 * (i - 3 - 0.5), oy + (j - 1) * 24, "Ins", obj_stage);
			with(l)
			{
				level = other.world;
				act = i + (j - 1) * 6;
				unlock = global.unlock[# act, level];
			}
		}
	else
		for(i = 1; i <= 6; i++)
		{
			var l = instance_create_layer(ox + 24 * (i - 3 - 0.5), oy + (j - 1) * 24, "Ins", obj_stage);
			with(l)
			{
				level = other.world;
				act = i + (j - 1) * 6;
				unlock = global.unlock[# act, level];
			}
		}
}