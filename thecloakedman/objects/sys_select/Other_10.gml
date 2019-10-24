if instance_exists(ins_text)
	instance_destroy(ins_text);

instance_destroy(obj_stage);
instance_destroy(obj_button);

maxact = global.stage[# 0, world];

var ox, oy;
ox = room_width div 2;
oy = room_height div 3;

var w, h;
w = maxact mod 6;
h = maxact div 6 + 1;

ins_text = instance_create_depth(ox,oy div 2 - 2,0,obj_text);
with(ins_text)
{
	text_halign = fa_center;
	text_valign = fa_middle;
	text_scale = 0.75;
	text_color = make_color_hsv(0, 0, 255);
	text = s(other.world) + " Stage";
	
	text_outline = false;
}


if world != 1
	with(instance_create_depth(6, oy + 12, 0, obj_button))
		add = -1;

if world != maxlevel
	with(instance_create_depth(room_width - 6, oy + 12, 0, obj_button))
		add = 1;


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