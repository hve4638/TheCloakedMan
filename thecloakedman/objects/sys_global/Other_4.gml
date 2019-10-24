instage = !(room_get_act(room) < 0);

if nextroom_fade
{
	var l = instance_create_depth(0,0,DEPTH_SYSTEM,sys_camera);
	with(l)
	{
		fade_alpha = 1.0;
		fade_add = -0.05;
	}
	
	nextroom_fade = false;
}

if instage
{
	currentlevel = room_get_level(room);
	currentact = room_get_act(room);
	
	stage_init();
}