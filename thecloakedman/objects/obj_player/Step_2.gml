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