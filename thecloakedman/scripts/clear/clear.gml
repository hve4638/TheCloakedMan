with(obj_player)
{
	if vspd < 0
		vspd *= 0.75;
	run = false;
}


with(instance_create_depth(0,0,0,obj_trigger))
	alarm[0] = 90;