///@argu roomind
///@argu delay
///@argu fade*
var rm, delay, fade;
rm = argument[0];
delay = argument[1];
fade = argument_count > 2 ? argument[2] : false;

if fade
	with(sys_global)
		nextroom_fade = true;

var l = instance_create_depth(0,0,0,obj_goto);
with(l)
{
	gotorm = rm;
	alarm[0] = delay;
}