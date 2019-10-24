if isblock(x,y + 1)
{
	onground = true;
	jumpbuffer = 2;
}
else if onground && !isblock(x,y + 1)
{
	if jumpbuffer <= 0
		onground = false;
	else
		jumpbuffer--;
}

if !onground
	nojumpbuffer = 3;

nojumpbuffer = max(0, nojumpbuffer - 1);
cloakedbuffer = max(0, cloakedbuffer - 1);



if room_width < bbox_left
{
	x -= room_width;
	xprevious -= room_width;
}

if room_height < bbox_top
	kill();


if spridx != spridx_p
{
	switch(spridx)
	{
		default:
		{
			sprite_index = spridx;
		} break;
	}

	image_index = 0;
	image_speed = 1;
	spridx_p = spridx;
}

/*
		case getspr(e_spr.idle):
		{
			//if sprite_index == idx_fall sprite_index = idx_land;
			//else if sprite_index == idx_run sprite_index = idx_break;
			//else sprite_index = idx_idle;
			sprite_index = getspr(e_spr.idle);
		} break;
		
		case spridx[e_spr.run]:
		{
			if sprite_index == idx_fall sprite_index = idx_land;
			else sprite_index = idx_run;
		} break;
	
*/